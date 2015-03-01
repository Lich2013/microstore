<<<<<<< HEAD
<?php
namespace Admin\Controller;
use Think\Controller;
class BaseController extends Controller {
    public function _initialize(){
        if(session('user.uid1')==null || session('user.name1')==null){
            $this->error('请先登录', U('Login/index'));
        }
        else{
            $username = session('user.name1');
            $this->assign('username', $username);
        }
    }
   
=======
<?php
namespace Admin\Controller;
use Think\Controller;
class BaseController extends Controller {
    public function _initialize(){
        if(session('user.uid1')==null || session('user.name1')==null){
            $this->error('请先登录', U('Login/index'));
        }
        else{
            $username = session('user.name');
            $this->assign('username', $username);
        }
    }
   
>>>>>>> 05142212eed88e15509f156e3da4c15b452401e2
}