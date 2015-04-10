<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends BaseController {
    //待审核页面
    public function index(){
        $store = M('store');
        $count      = $store->where('status = 0')->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show       = $Page->show();// 分页显示输出
        $info = $store->where('status = 0')
            ->join('JOIN users ON store.uid = users.id')
            ->join('JOIN store_goods ON store.id = store_goods.store_id')
            ->join('JOIN goods ON store_goods.goods_id = goods.id')
            ->join('JOIN school ON store.school_id = school.id')
            ->group('store.id')
            ->field('store.id as store_id, store_name, type, school_name, realname, idcard, telephone')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->select();
    	$this->assign('info', $info);
        $this->assign('page',$show);
    	$this->display();
    }

    //通过页面
    public function passed(){
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
            ->field('store.id as store_id, store_name, type, school_name, realname, idcard, telephone')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->select();
        $this->assign('info', $info);
        $this->assign('page',$show);
        $this->display();
    }

    //黑名单页面
    public function blackstore(){
        $store = M('store');
        $count      = $store->where('status = 1')->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show       = $Page->show();// 分页显示输出
        $info = M('blackstore')
            ->join('JOIN users ON blackstore.uid = users.id')
            ->join('JOIN store_goods ON blackstore.origin_store_id = store_goods.store_id')
            ->join('JOIN goods ON store_goods.goods_id = goods.id')
            ->join('JOIN school ON blackstore.school_id = school.id')
            ->field('blackstore.id as store_id, store_name, type, school_name, realname, idcard, telephone')
            ->group('store_id')
            ->select();
        $this->assign('info', $info);
        $this->assign('page',$show);
        $this->display();
    }

    //审核函数
    public function judge(){

        $data = I('post.');

        $action = $data['action'];
        if(IS_AJAX) {
            $store_id[0] = $data['store_id'];
        }
        else{
            $store_id = $data['store_id'];
        }
        switch($action){
            case 1: $this->pass($store_id);
                    if(IS_AJAX){
                        $status = 200;
                        $this->ajaxReturn($status);
                    }
                    else {
                        $this->success('成功');
                    }
                    break;
            case 2: $this->delete($store_id);
                    if(IS_AJAX){
                        $status = 200;
                        $this->ajaxReturn($status);
                    }
                    else {
                        $this->success('成功');
                    }
                    break;
            case 3:$this->black($store_id);
                    if(IS_AJAX){
                        $status = 200;
                        $this->ajaxReturn($status);
                    }
                    else {
                        $this->success('成功');
                    }
                    break;
        }
    }

    //解除黑名单
    public function relieve(){
        $data = I('post.');
        $action = $data['action'];
        if(IS_AJAX) {
            $black_id[0] = $data['store_id'];
        }
        else{
            $black_id = $data['store_id'];
        }
        switch($action) {
            case 1:
                $this->forgive($black_id);
                if (IS_AJAX) {
                    $status = 200;
                    $this->ajaxReturn($status);
                } else {
                    $this->success('成功');
                }
                break;
            default:
                if (IS_AJAX) {
                    $status = 403;
                    $this->ajaxReturn($status);
                } else {
                    $this->error('未知错误');
                }
        }
    }
    //删除评论页面
    public function comment() {
        $comment = M('comment');
        $count      = $comment->count();// 查询满足要求的总记录数
        $Page       = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show       = $Page->show();// 分页显示输出
        $info = $comment->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('info', $info);
        $this->assign('page',$show);
        $this->display();
    }
    //删除评论
    public function delComment() {
        $data = I('post.id');
        $map['id'] = $data;
        M('comment')->where($map)->delete();
        $success = array('status' => 200);
        return $this->ajaxReturn($success);
    }
    private function forgive($black_id){
        $blackstore = M('blackstore');
        foreach($black_id as $v) {
            $info = $blackstore->where("id = $v")->select();
            $blackstore->where("id = $v")->delete();
            $data = array(
                'id' => $info[0]['origin_store_id'],
                'store_name' => $info[0]['store_name'],
                'uid' => $info[0]['uid'],
                'link' => $info[0]['link'],
                'school_id' => $info[0]['school_id'],
                'show_pic' => $info[0]['show_pic'],
                'click_num' => 0,
                'status' => 1,
                'telephone' => $info[0]['telephone'],
            );
            M('store')->data($data)->add();
        }
        return true;

    }

    //通过
    private function pass($store_id){
        foreach($store_id as $v) {
            M('store')->where("id = $v")->save(array('status' => '1'));
        }
        return true;
    }

    //删除
    private function delete($store_id){
        foreach($store_id as $v) {
            M('store')->where("id = $v")->delete();
        }
        return true;
    }

    //拉黑
    private function black($store_id){
        $store = M('store');
        foreach($store_id as $v) {
            $info = $store->where("id = $v")->select();
            $store->where("id = $v")->delete();
            $data = array(
                    'origin_store_id' => $info[0]['id'],
                    'store_name' => $info[0]['store_name'],
                    'uid' => $info[0]['uid'],
                    'link' => $info[0]['link'],
                    'school_id' => $info[0]['school_id'],
                    'show_pic' => $info[0]['show_pic'],
                    'telephone' => $info[0]['telephone'],
                );
        M('blackstore')->data($data)->add();
     }
        return true;
    }






}