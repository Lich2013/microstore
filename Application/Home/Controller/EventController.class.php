<?php
namespace Home\Controller;
use Think\Controller;
class EventController extends BaseController {
    public static function index($page){
        $openid = session('openId');
        $data = array(
            'openid' => $openid,
            'page' => $page,
            'time' => date('Y-m-d H:i:s', time())
        );
        M('log')->add($data);
    }
}