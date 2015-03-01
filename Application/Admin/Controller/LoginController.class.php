<?php
namespace Admin\Controller;
use Think\Controller;
class LoginController extends Controller {

    private $username;
    private $password;
    public function index(){
        $this->display();
    }
    public function login(){
        $username = I('post.username');
        $password = md5(md5(I('post.password')).'microstore');
        $this->verify($username, $password);
    }
    public function loginout(){
        session(null);
        cookie(null);
        $this->success('注销成功!', U('Login/index'));
    }


    private function verify($username, $password){
        $this->username = $username;
        $this->password = $password;
        $where = array(
            'username' => $this->username,
            'pwd'      => $this->password,
        );
        $data = M('admin')->where($where)->select();
        if($data!=null){
            session('user.uid1', $data[0]['id']);
            session('user.name1', $data[0]['username']);
            $this->success('登录成功', U('Index/index'));
        }
        else{
            $this->error('用户名或密码错误');
        }
    }


}