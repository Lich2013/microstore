<?php
namespace Home\Controller;
use Think\Controller;
class JoinController extends BaseController {
    //申请入驻页面
    public function index(){
        $goods_type = M('goods')->select();
        $school = M('school')->select();
        $this->assign('goods_type', $goods_type);
        $this->assign('school', $school);
        $this->assign('school_1', $school);
        $this->display();
    }

    //入驻信息处理
    public function join(){
        $store_name = trim(I('post.store_name'));     //店铺名
        $goods_type_id = I('post.goods_type');  //商品类型id
        $tag_name = I('post.tag');                   //标签
        $link = 'http://'.trim(I('post.link'));

        $nickname = trim(I('post.nickname'));         //卖家昵称
        $realname = trim(I('post.realname'));         //卖家真实姓名
        $id_num = trim(I('post.id_num'));             //卖家身份证号
        $orign_pwd = trim(I('post.password'));        //卖家密码
        $password = md5(md5($orign_pwd).'Lich');
        $manage_school_id = I('post.manage_shool');//店铺管理者所在学校/店铺所在学校
        $manage_major = trim(I('post.manage_major')); //店铺管理者专业

        $person_name = trim(I('post.person_name'));   //个人姓名
        $person_school = I('post.person_school');//个人学校
        $person_major = trim(I('post.person_major')); //个人专业
        $person_introduce = trim(I('post.person_introduce'));//个人介绍

        if(strlen($store_name)==0){
            $this->error('店铺名不能为空');
        }
        if(strlen($store_name)>8){
            $this->error('店铺名过长');
        }
        foreach($tag_name as $v)
        {
            if(strlen(trim($v))>5){
                $this->error('标签名过长');
            }
        }
        if(strlen($orign_pwd)<6){
            $this->error('密码过短');
        }
        if(strlen($id_num)!=13){//TODO:验证数字和最后一位
            $this->error('身份证号码有误');
        }
        if(strlen($manage_major)==0||strlen($person_major)==0){
            $this->error('专业不能为空');
        }
        if(strlen($manage_major)>10||strlen($person_major)>10){
            $this->error('专业名过长');
        }
        if(strlen($realname)==0||strlen($person_name)==0){
            $this->error('姓名不能为空');
        }
        if(strlen($person_name)>6||strlen($realname)>6){
            $this->error('姓名过长');
        }
        if(strlen($person_introduce)>300){
            $this->error('个人介绍过长');
        }
        $uid = M('users')->where("idcard = $id_num")->field('id')->select();
        if($uid!=null){
            $id = $uid[0]['id'];
           $num = M('blackstore')->where("uid = $id")->count();
            if($num != 0){
                $this->error('你已被拉黑');
            }
            else{
                $this->error('你已注册!');
            }
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

        $user = M('users');
        $store = M('store');
        $tag = M('tags');
        $person = M('person');

        $user_data = array(
            'nickname' => $nickname,
            'realname' => $realname,
            'idcard'   => $id_num,
            'password' => $password,
            'school_id'=> $manage_school_id,
            'major'    => $manage_major,
        );
        $uid = $user->data($user_data)->add();

        $store_data = array(
            'store_name' => $store_name,
            'uid'        => $uid,
            'link'       => $link,
            'show_pic'   => $store_img,
            'school_id'=> $manage_school_id,
            'click_num'  => 0,
            'status'     => 0,
        );
        $store_id = $store->data($store_data)->add();

        $store_goods = array(
            'store_id' => $store_id,
            'goods_id' => $goods_type_id,
        );
        M('store_goods')->data($store_goods)->add();

        foreach($tag_name as $v)
        {
            $tags_data = array(
                'tag_name' => $v,
                'click_num'=> 0,
            );
            $tag_id = $tag->data($tags_data)->add();

            $store_tag = array(
                'store_id' => $store_id,
                'tag_id'   => $tag_id,
            );
            M('store_tag')->data($store_tag)->add();
        }
        $person_data = array(
            'name'      => $person_name,
            'school_id' => $person_school,
            'major'     => $person_major,
            'introduce' => $person_introduce,
            'photo'     => $person_img,
            'store_id'  => $store_id,
        );
        $person->data($person_data)->add();
        $this->success('申请成功, 请等待审核!', U('Index/index'));

    }









}