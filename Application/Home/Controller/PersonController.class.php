<?php
namespace Home\Controller;
use Think\Controller;
class PersonController extends BaseController {
    public function index(){
        $person_id = I('param.person_id');
        $info = M('person')->where("person.id = $person_id")->join('JOIN school ON person.school_id = school.id')->field('name, major, introduce, photo, school_name')->select();
        $this->assign('person_info', $info[0]);
        $this->display();
    }
}