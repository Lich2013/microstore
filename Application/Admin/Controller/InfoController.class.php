<?php
namespace Admin\Controller;
use Think\Controller;
class InfoController extends BaseController {

    public function index(){
        $store = M('store');
        $count      = $store->where('status = 1')->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show       = $Page->show();// 分页显示输出
        $info = $store->where('status = 1')
            ->join('JOIN users ON store.uid = users.id')
            ->join('JOIN store_goods ON store.id = store_goods.store_id')
            ->join('JOIN goods ON store_goods.goods_id = goods.id')
            ->join('JOIN school ON store.school_id = school.id')
            ->group('store.id')
            ->field('store.id as store_id, store_name, type, school_name, realname, idcard, school.id as school_id, goods.id as goods_id, link')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->select();
        $goods_type = M('goods')->select();
        $school = M('school')->select();
        $this->assign('goods_type', $goods_type);
        $this->assign('school', $school);
        $this->assign('info', $info);
        $this->assign('page',$show);
        $this->display();
    }

    public function user(){
        $store = M('users');
        $count      = $store->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show       = $Page->show();// 分页显示输出
        $info = $store
                ->join('JOIN school ON users.school_id = school.id')
                ->limit($Page->firstRow.','.$Page->listRows)
                ->order('users.id')
                ->field('users.id as uid, nickname, realname, school_id, idcard')
                ->select();
        $school = M('school')->select();

        $this->assign('school', $school);
        $this->assign('info', $info);
        $this->assign('page',$show);
        $this->display();
    }

    public function admin(){
        $info = M('admin')->field('id, username')->select();
        $this->assign('info', $info);
        $this->display();
    }

    public function type(){
        $info = M('goods')->select();
        $this->assign('info', $info);
        $this->display();

    }

    public function school(){
        $info = M('school')->select();
        $this->assign('info', $info);
        $this->display();
    }

    public function storeUpdate(){
        $data = I('post.');

         $store_id = $data['store_id'];
                $store_name = $data['store_name'];
                $store_link = $data['link'];
                $goods_type_id = $data['goods_type_id'];
                $school_id = $data['school_id'];

                    $new_data = array(
                        'store_name' => $store_name,
                        'school_id'  => $school_id,
                        'link'       => $store_link,
                    );
                M('store')->where("id = $store_id")->data($new_data)->save();
                $new_goods = array('goods_id' => $goods_type_id);
                M('store_goods')->where("store_id = $store_id")->data($new_goods)->save();

                $status = 200;
                $this->ajaxReturn($status);

    }

    public function userUpdate(){
        $data = I('post.');
        $uid = $data['uid'];
        $password = md5(md5($data['password']).'Lich');
        $school_id = $data['school_id'];
        if($data['password']!=null) {
            $new_data = array(
                'id' => $uid,
                'school_id' => $school_id,
                'password' => $password,
            );
        }
        else{
            $new_data = array(
                'id' => $uid,
                'school_id' => $school_id,
            );
        }
        M('users')->where("id = $uid")->data($new_data)->save();
        $status = 200;
        $this->ajaxReturn($status);
    }

    public function adminUpdate(){
        $data = I('post.');
        $uid = $data['uid'];
        if($data['password']==null){
            $status = 403;
            $this->ajaxReturn($status);
        }
        $password = md5(md5($data['password']).'microstore');
        $new_data = array(
            'pwd' => $password,
        );

        M('admin')->where("id = $uid")->data($new_data)->save();
        $status = 200;
        $this->ajaxReturn($status);
    }
    public function addAdmin(){
        $data = I('post.');
        $new_data = array(
            'username' => $data['username'],
            'pwd'      => md5(md5($data['password']).'microstore'),
        );
        M('admin')->data($new_data)->add();
        $this->success('成功');
    }
    public function  adminDelete(){
        $data = I('post.');
        $id = $data['uid'];
        M('admin')->where("id = $id")->delete();
        $status = 200;
        $this->ajaxReturn($status);
    }

    public function typeUpdate(){
        $data = I('post.');
        $id = $data['id'];
        $new_data = array('type' => $data['new_type']);
        M('goods')->where("id = $id")->data($new_data)->save();
        $status = 200;
        $this->ajaxReturn($status);
    }

    public function typeDelete(){
        $data = I('post.');
        $id = $data['id'];
        M('goods')->where("id = $id")->delete();
        $status = 200;
        $this->ajaxReturn($status);
    }

    public function typeAdd(){
        $data = I('post.');
       $new_data = array(
           'type' => $data['new_type']
       );
        M('goods')->data($new_data)->add();
        $this->success('成功');
    }

    public function schoolUpdate(){
        $data = I('post.');
        $id = $data['id'];
        $new_data = array('school_name' => $data['new_type']);
        M('school')->where("id = $id")->data($new_data)->save();
        $status = 200;
        $this->ajaxReturn($status);
    }

    public function schoolDelete(){
        $data = I('post.');
        $id = $data['id'];
        M('school')->where("id = $id")->delete();
        $status = 200;
        $this->ajaxReturn($status);
    }

    public function schoolAdd(){
        $data = I('post.');
        $new_data = array(
            'school_name' => $data['new_type']
        );
        M('school')->data($new_data)->add();
        $this->success('成功');
    }
}