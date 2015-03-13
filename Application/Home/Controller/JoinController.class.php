<?php
namespace Home\Controller;
use Think\Controller;
class JoinController extends BaseController {
    //申请入驻页面
    public function index(){
        $goods_type = M('goods')->order('id asc')->select();
        $school = M('school')->order('id asc')->select();
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
        $link = trim(I('post.link'));

        if(strlen($link)==0){
            $this->error('链接不能为空');
        }
        else{
            if(strstr($link, 'http://')){
                $link = $link;
            }else{
                $link = 'http://'.$link;
            }
        }

        $nickname = trim(I('post.nickname'));         //卖家昵称
        $realname = trim(I('post.realname'));         //卖家真实姓名
        $id_num = trim(I('post.id_num'));             //卖家身份证号
        $orign_pwd = trim(I('post.password'));        //卖家密码
        $again_pwd = trim(I('post.passwordagain'));        //卖家确认密码
        $telephone = trim(I('post.telephone'));        //卖家电话
        $password = md5(md5($orign_pwd).'Lich');
        $manage_school_id = I('post.person_school');//店铺管理者所在学校/店铺所在学校
        $manage_major = trim(I('post.person_major')); //店铺管理者专业

        $person_name = trim(I('post.person_name'));   //个人姓名
        $person_school = I('post.person_school');//个人学校
        $person_major = trim(I('post.person_major')); //个人专业
        $person_introduce = trim(I('post.person_introduce'));//个人介绍

        if(strlen($store_name)==0){
            $this->error('店铺名不能为空');
        }
        if(mb_strlen($store_name, 'utf-8')>10){
            $this->error('店铺名过长');
        }
        if(strlen($tag_name[0])==0){
            $this->error('第一个标签为必填');
        }
        foreach($tag_name as $v)
        {
            if(mb_strlen($v, 'utf-8')>3){
                $this->error('标签名过长');
            }
        }
        if(strlen($orign_pwd)<6){
            $this->error('密码过短');
        }
        if($orign_pwd!=$again_pwd){
            $this->error('两次密码不一致');
        }
        if(strlen($telephone)!=11){
            $this->error('请输入正确的手机号码');
        }
        if(strlen($id_num)!=18){//TODO:验证数字和最后一位
            $this->error('身份证号码有误');
        }
        if(mb_strlen($manage_major, 'utf-8')==0||mb_strlen($person_major, 'utf-8')==0){
            $this->error('专业不能为空');
        }
        if(mb_strlen($manage_major, 'utf-8')>10||mb_strlen($person_major, 'utf-8')>10){
            $this->error('专业名过长');
        }
        if(mb_strlen($realname, 'utf-8')==0||mb_strlen($person_name, 'utf-8')==0){
            $this->error('姓名不能为空');
        }
        if(mb_strlen($person_name, 'utf-8')>6||mb_strlen($realname, 'utf-8')>6){
            $this->error('姓名过长');
        }
        if(mb_strlen($person_introduce, 'utf-8')>300){
            $this->error('个人介绍过长');
        }
        $map['idcard'] = $id_num;
        $uid = M('users')->where($map)->field('id')->find();
        if($uid!=null){
            $id = $uid['id'];
           $num = M('blackstore')->where("uid = $id")->count();
            if($num != 0){
                $this->error('你已被拉黑');
            }
            else{
                $this->error('你已注册!');
            }
        }
        $setting = C('UPLOAD_SITEIMG_QINIU');
        $upload = new \Think\Upload($setting);// 实例化上传类

        // 上传文件
        $info   =   $upload->upload();
        if(count($info)<2){
            $this->error('店铺首页图或风采照片未上传');
        }
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            foreach($info as $file){
                $img_url[] = $file['url'];
            }
        }
        $store_img = $img_url[0].'?imageView2/5/w/121/h/121';
        $person_img = $img_url[1].'?imageView2/2/w/363/h/363';
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
            'telephone' => $telephone,
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
        $this->success('申请成功, 请等待审核!', U('View/index'));

    }









}