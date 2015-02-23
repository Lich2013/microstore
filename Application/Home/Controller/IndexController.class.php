<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends BaseController {
    public function index(){
        $pic = M('index')->order('time desc')->find();
        $this->assign('pic', $pic);
        $this->display();
    }
}