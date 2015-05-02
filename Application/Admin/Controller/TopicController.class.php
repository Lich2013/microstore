<?php
namespace Admin\Controller;
use Think\Controller;
class TopicController extends BaseController {
       public function index(){
           $this->display();
       }
        //管理专题
       public function manage(){
           $store = M('topic');
           $count      = $store->count();// 查询满足要求的总记录数
           $Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
           $show       = $Page->show();// 分页显示输出
           $info = $store->order('time desc')->limit($Page->firstRow.','.$Page->listRows)->select();
           $this->assign('info', $info);
           $this->assign('page',$show);
           $this->display();
       }

        //编辑专题
       public function edit(){
           $id = I('get.id');
           $info = M('topic')->where("id = $id")->select();
           $this->assign('data', $info[0]);
           $this->display();
       }
        public function homepage(){
            $this->display();
        }

       //发布专题
       public function createTopic(){
            $title = I('post.title');
            $data = $_POST['text'];
            //上传封面图
           $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'jpeg');// 设置附件上传类型
        $upload->rootPath  =     'Public/uploads/'; // 设置附件上传根目录
        // 上传文件
        $info   =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            foreach($info as $file){
                $image = new \Think\Image();
                $path = 'Public/uploads/'.$file['savepath'].$file['savename'];
                $image->open($path);
                $image->thumb(1000, 1833,\Think\Image::IMAGE_THUMB_SCALE)->save($path);
                $img_url[] = __ROOT__.'/'.$path;
            }
        }
        $cover = $img_url[0];
           $pattern = '/base64,(.*?)"/';
           preg_match_all($pattern, $data, $match, PREG_PATTERN_ORDER);
           foreach($match[1] as $v) {
               $img = base64_decode($v);
               file_put_contents('Public/tmp.jpg', $img);
               $image = new \Think\Image();
               $name = 'Public/tmp.jpg';
               $image->open($name);
               $time = md5(microtime(true));
               $path =  'Public/uploads/topic/'.$time.'.jpg';
               $image->thumb(414, 736,\Think\Image::IMAGE_THUMB_SCALE)->save($path);
               $img_url[] = __ROOT__.'/'.$path;
               $replace[] = 'src="'.__ROOT__.'/'.$path.'"';
           }
           $pattern1 = '/src="data:(.*?)"/';
           foreach($replace as $r){
               $data =  preg_replace($pattern1, $r, $data,1);
           }

           $topic = array(
                'title' => $title,
                'content' => $data,
                'pic' => $cover,
                'time' => date('Y-m-d H:i:s', time()),
            );
            M('topic')->data($topic)->add();
            $this->success('成功');
        }
    //修改专题
    public function updateTopic(){
        $id = I('post.topic_id');
        $title = I('post.title');
        $data = $_POST['text'];
        //上传封面图
           $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'jpeg');// 设置附件上传类型
        $upload->rootPath  =     'Public/uploads/'; // 设置附件上传根目录
        // 上传文件
        $info   =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            foreach($info as $file){
                $image = new \Think\Image();
                $path = 'Public/uploads/'.$file['savepath'].$file['savename'];
                $image->open($path);
                $image->thumb(1000, 1833,\Think\Image::IMAGE_THUMB_SCALE)->save($path);
                $img_url[] = __ROOT__.'/'.$path;
            }
        }
        $cover = $img_url[0];
        $pattern = '/base64,(.*?)"/';
        preg_match_all($pattern, $data, $match, PREG_PATTERN_ORDER);
        foreach($match[1] as $v) {
            $img = base64_decode($v);
            file_put_contents('Public/tmp.jpg', $img);
            $image = new \Think\Image();
            $name = 'Public/tmp.jpg';
            $image->open($name);
            $time = md5(microtime(true));
            $path =  'Public/uploads/topic/'.$time.'.jpg';
            $image->thumb(414, 736,\Think\Image::IMAGE_THUMB_SCALE)->save($path);
            $img_url[] = __ROOT__.'/'.$path;
            $replace[] = 'src="'.__ROOT__.'/'.$path.'"';
        }
        $pattern1 = '/src="data:(.*?)"/';
        foreach($replace as $r){
            $data =  preg_replace($pattern1, $r, $data,1);
        }
        $topic = array(
            'title' => $title,
            'content' => $data,
            'pic' => $cover,
            'time' => date('Y-m-d H:i:s', time()),
        );

        M('topic')->where("id = $id")->data($topic)->save();
        $this->success('成功', 'manage');
    }

    //删除专题
    public function deleteTopic(){
        $data = I('post.');
        $action = $data['action'];
        if(IS_AJAX) {
            $store_id[0] = $data['store_id'];
        }
        else{
            $store_id = $data['store_id'];
        }
        switch($action) {
            case 1:
                $this->del_topic($store_id);
                if (IS_AJAX) {
                    $status = 200;
                    $this->ajaxReturn($status);
                } else {
                    $this->success('成功');
                }
                break;
        }
    }
    //渲染公告管理
    public function tell() {
        $tell = M('index')->order('id asc')->select();
        $this->assign('tell', $tell);
        $this->display();
    }
    //增加公告
    public function updateTell() {
        $path = I('post.index');
        $data = array(
            'path' => $path,
            'time' => Date('Y-m-d H:i:s', time())
        );
        $index = M('index');
        $index->data($data)->add();
        $this->success('成功');
    }
    //删除公告
    public function delTell () {
        $id = I('post.id');
        $index = M('index');
        $m['id'] = $id;
        $index->where($m)->delete();
        $this->ajaxReturn(200);
    }

    public function homepageup(){

        //上传封面图
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath  =     'Public/uploads/'; // 设置附件上传根目录
        // 上传文件
        $info   =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            foreach($info as $file){
                $image = new \Think\Image();
                $path = 'Public/uploads/'.$file['savepath'].$file['savename'];
                $image->open($path);
                $image->thumb(605, 1100,\Think\Image::IMAGE_THUMB_SCALE)->save($path);
                $cover = __ROOT__.'/'.$path;
            }
        }
        $data = array(
            'path' => $cover,
            'time' => date('Y-m-d H:i:s', time()),
        );
        M('index')->data($data)->add();
        $this->success('成功');
    }

    //删除专题
    private function del_topic($store_id){
        $topic = M('topic');
        foreach($store_id as $v) {
            $topic->where("id = $v")->delete();
        }
        return true;
    }

}