<?php
namespace Admin\Controller;
use Think\Controller;
class BaseController extends Controller {
    public function _initialize(){
        if(session('user.uid')==null || session('user.name')==null){
            $this->error('请先登录', U('Login/index'));
        }
        else{
            $username = session('user.name');
            $this->assign('username', $username);
        }
    }
   
}