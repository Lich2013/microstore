<?php
namespace Home\Controller;
use Think\Controller;
class UserController extends BaseController {
    public function index(){
        $this->check();
        $uid = session('user.uid');
        $name = session('user.name');

        $school = M('school');
        $goods = M('goods');
        $store = M('store');
        $school_name = $school->select();
        $goods_type = $goods->select();
        $info = $store->where("uid = $uid")->field('id')->find();

            $id = $info['id'];
            $store_info['store_id'] = $id;
            $store_info['tags'] = M('store_tag')->where("store_id = $id")->join('JOIN tags ON store_tag.tag_id = tags.id')->field('tag_name, tags.id')->select();
            $store_info['goods'] = M('store_goods')->where("store_id = $id")->join('JOIN goods ON store_goods.goods_id = goods.id')->find();
            $store_info['person'] = M('person')->where("store_id = $id")->find();
            $store_info['store'] = $store->where("id = $id")->find();

        session('store_id', $id);
        session('person_id', $store_info['person']['id']);
        $this->assign('info', $store_info);
        $this->assign('goods', $goods_type);
        $this->assign('school', $school_name);
        $this->assign('name', $name);
        $this->display();


    }

    public function update(){
        $this->check();
        $store_id = session('store_id');
        $person_id = session('person_id');
        $data = I('post.');

        if(strlen($data['store_name'])==0){
            $this->error('店铺名不能为空');
        }
        if(strlen($data['store_name'])>8){
            $this->error('店铺名过长');
        }
        foreach($data['tags'] as $v)
        {
            if(strlen(trim($v))>5){
                $this->error('标签名过长');
            }
        }
        if(strlen($data['person_major'])==0){
            $this->error('专业不能为空');
        }
        if(strlen($data['person_major'])>10){
            $this->error('专业名过长');
        }
        if(strlen($data['person_name'])==0){
            $this->error('姓名不能为空');
        }
        if(strlen($data['person_name'])>6){
            $this->error('姓名过长');
        }
        if(strlen($data['person_introduce'])>300){
            $this->error('个人介绍过长');
        }
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
                $image->thumb(100, 130,\Think\Image::IMAGE_THUMB_SCALE)->save($path);
                $img_url[] = __ROOT__.'/'.$path;
            }
        }
        $store_img = $img_url[0];
        $person_img = $img_url[1];
        $new_storedata = array(
            'store_name' => trim($data['store_name']),
            'link' => trim($data['store_link']),
            'show_pic'=> $store_img,
        );
        $new_goodstype = array(
            'type_id' => $data['goods_type'],
        );
        $new_persondata = array(
            'name' => trim($data['person_name']),
            'major' => trim($data['person_major']),
            'introduce' => trim($data['person_introduce']),
            'photo' => $person_img,
            'school_id' => $data['person_school'],
        );

        foreach($data['tags_id'] as $key => $value){
            $new_tag = array('tag_name' =>trim($data['tags'][$key]));

            if($value==null&&$data['tags'][$key]!=null){
                $new_tag['click_num'] = 0;
                $tag_id = M('tags')->data($new_tag)->add();
                $store_tag = array(
                    'store_id' => $store_id,
                    'tag_id'   => $tag_id,
                );
                M('store_tag')->data($store_tag)->add();
            }
            elseif($value==null&&$data['tags'][$key]==null){
                continue;
            }
            else {
                M('tags')->where("id = $value")->data($new_tag)->save();
            }
        }
        M('store')->where("id = $store_id")->data($new_storedata)->save();
        M('person')->where("id = $person_id")->data($new_persondata)->save();
        M('store_goods')->where("store_id = $store_id")->data($new_goodstype)->save();
        $this->success('成功');
    }

    private function check(){
        if(session('user.uid')==null || session('user.name')==null || session('user.idcard')==null){
            $this->error('请先登录', U('Login/index'));
        }
        else{
            $username = session('user.name');
            $this->assign('username', $username);
        }
    }
}