<?php
namespace Home\Controller;
use Think\Controller;
class TopicController extends BaseController {
    public function index(){
        EventController::index('专题页面');
        $topic_id = I('param.topic_id');
        $data = M('topic')->where("id = $topic_id")->select();
        $this->assign('data', $data[0]);
        $this->display();
    }
}