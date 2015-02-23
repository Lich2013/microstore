<?php
namespace Home\Controller;
use Think\Controller;
class LoginController extends BaseController {

    private $realname;
    private $password;
    private $idcard;

    public function index(){
        $this->display();
    }
    public function login(){

        $realname = I('post.realname');
        $idcard = I('post.idcard');
        $password = md5(md5(I('post.password')).'Lich');
        $this->verify($realname, $idcard, $password);
    }

    public function loginout(){
        session(null);
        cookie(null);
        $this->success('注销成功!', U('Login/index'));
    }

    private function verify($realname, $idcard, $password){
        $this->realname = $realname;
        $this->idcard = $idcard;
        $this->password = $password;
        $where = array(
            'realname' => $this->realname,
            'password' => $this->password,
            'idcard'   => $this->idcard,
        );
        $data = M('users')->where($where)->select();
        if($data!=null){
            session('user.uid', $data[0]['id']);
            session('user.name', $data[0]['realname']);
            session('user.idcard', $data[0]['idcard']);
            $this->success('登录成功', U('User/index'));
        }
        else{
            $this->error('验证信息错误!');
        }
    }


}
