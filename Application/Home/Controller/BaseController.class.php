<?php
namespace Home\Controller;
use Think\Controller;
class BaseController extends Controller {
    public function _initialize(){
        $openId = I('get.openId');
        session('openId', $openId);
        $topic = M('topic')->order('time desc')->limit(4)->field('id, pic')->select();
        $this->assign('topic', $topic);
    }
}