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

        if(mb_strlen($data['store_name'], 'utf-8')==0){
            $this->error('店铺名不能为空');
        }
        if(mb_strlen($data['store_name'], 'utf-8')>10){
            $this->error('店铺名过长');
        }
        if(strlen($data['tags'][0])==0){
            $this->error('第一个标签必填');
        }
        foreach($data['tags'] as $v)
        {
            if(mb_strlen($v, 'utf-8')>3){
                $this->error('标签名过长');
            }
        }
        if(strlen($data['telephone'])!=11){
            $this->error('请输入正确的手机号码');
        }
        if(mb_strlen($data['person_major'], 'utf-8')==0){
            $this->error('专业不能为空');
        }
        if(mb_strlen($data['person_major'], 'utf-8')>10){
            $this->error('专业名过长');
        }
        if(mb_strlen($data['person_name'], 'utf-8')==0){
            $this->error('姓名不能为空');
        }
        if(mb_strlen($data['person_name'], 'utf-8')>6){
            $this->error('姓名过长');
        }
        if(mb_strlen($data['person_introduce'], 'utf-8')>300){
            $this->error('个人介绍过长');
        }
        $setting = C('UPLOAD_SITEIMG_QINIU');
        $upload = new \Think\Upload($setting);// 实例化上传类
        // 上传文件
        $info   =   $upload->upload();
        if($info!=null&&count($info)<2){
            $this->error('店铺首页图或风采照片未上传');
        }
        elseif(count($info)==1)
        {}
        else{
            if(!$info) {// 上传错误提示错误信息
                $this->error($upload->getError());
            }else{// 上传成功 获取上传文件信息
                foreach($info as $file){
                    $img_url[] = $file['url'];
                }
            }
        }
        if($img_url[0]!=null)
        $store_img = $img_url[0].'?imageView2/5/w/121/h/121';
        if($img_url[1]!=null)
        $person_img = $img_url[1].'?imageView2/2/w/363/h/363';
        if($store_img!=null){
                $new_storedata = array(
                'store_name' => trim($data['store_name']),
                'link' => trim($data['store_link']),
                'show_pic'=> $store_img,
                'telephone' => trim($data['telephone']),
            );
        }
        else{
            $new_storedata = array(
                'store_name' => trim($data['store_name']),
                'link' => trim($data['store_link']),
                'telephone' => trim($data['telephone']),
            );
        }
        $new_goodstype = array(
            'type_id' => $data['goods_type'],
        );
        if($person_img!=null){
            $new_persondata = array(
                'name' => trim($data['person_name']),
                'major' => trim($data['person_major']),
                'introduce' => trim($data['person_introduce']),
                'photo' => $person_img,
                'school_id' => $data['person_school'],
            );
        }
        else{
            $new_persondata = array(
                'name' => trim($data['person_name']),
                'major' => trim($data['person_major']),
                'introduce' => trim($data['person_introduce']),
                'school_id' => $data['person_school'],
            );
        }
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