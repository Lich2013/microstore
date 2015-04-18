<?php
namespace Home\Controller;
use Think\Controller;
class BaseController extends Controller {
    private $appId = 'wx81a4a4b77ec98ff4';
    public function _initialize(){
        $openId = I('get.openid');
        session('openId', $openId);
        $topic = M('topic')->order('time desc')->limit(4)->field('id, pic')->select();
        $help = M('topic')->order('id asc')->find();
        $this->assign('topic', $topic);
        $this->assign('help', $help);
    }
}