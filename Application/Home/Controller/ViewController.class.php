<?php
namespace Home\Controller;
use Think\Controller;
class ViewController extends BaseController {
    public function index($order = 'rand()'){
        $goods_id = I('get.goods_id')? I('get.goods_id'):'%';
        $school = M('school');
        $goods = M('goods');
        $store = M('store');
        $school_name = $school->order('id asc')->select();
        $goods_type = $goods->order('id asc')->select();
        $m['goods_id'] = $goods_id;
        $store_num = $store->where('status = 1')->join('JOIN school ON store.school_id = school.id')->join('JOIN store_goods ON store.id = store_goods.store_id')->join('JOIN goods ON store_goods.goods_id = goods.id')->where($m)->order($order)->field('store.id')->limit(20)->select();
        $j = 0;
        foreach($store_num as $key=>$v)
        {
            $id = $store_num[$key]['id'];
            $type = M('store_goods')->where("store_id = $id")->join('JOIN goods ON store_goods.goods_id = goods.id')->field('type')->select();
            $tags = M('store_tag')->where("store_id = $id")->join('JOIN tags ON store_tag.tag_id = tags.id')->field('tag_name')->select();
            $info = $store->where("store.id = $id")->join('JOIN school ON store.school_id = school.id')->select();
            $uid = $info[0]['uid'];
			$map['id'] = $uid;
            $hoster = M('users')->where($map)->getField('nickname');
            $person_id = M('person')->where("store_id = $id")->getField('id');
            $store_info[$j]= $info[0];
            $store_info[$j]['goods_type'] = $type;
            $store_info[$j]['tags'] = $tags;
            $store_info[$j]['nickname'] = $hoster;
            $store_info[$j]['person_id'] = $person_id;
            $store->where("id = $id")->setInc('click_num',1);
            ++$j;
        }
        /*推荐店铺*/
        $recommend = $this->getRecommend();
        $this->assign('recommend', $recommend);
        $this->assign('store', $store_info);
        $this->assign('school', $school_name);
        $this->assign('goods', $goods_type);
        $this->display('index');
    }

    public function ajaxview($order = 'rand()'){
        $store = M('store');
        $store_num = $store->where('status = 1')->order($order)->field('id')->limit(20)->select();
        $j = 0;
        foreach($store_num as $key=>$v)
        {
            $id = $store_num[$key]['id'];
            $type = M('store_goods')->where("store_id = $id")->join('JOIN goods ON store_goods.goods_id = goods.id')->field('type')->select();
            $tags = M('store_tag')->where("store_id = $id")->join('JOIN tags ON store_tag.tag_id = tags.id')->field('tag_name')->select();
            $info = $store->where("store.id = $id")->join('JOIN school ON store.school_id = school.id')->select();
            $uid = $info[0]['uid'];
            $map['id'] = $uid;
            $hoster = M('users')->where($map)->getField('nickname');
            $person_id = M('person')->where("store_id = $id")->getField('id');
            $store_info[$j]= $info[0];
            $store_info[$j]['goods_type'] = $type;
            $store_info[$j]['tags'] = $tags;
            $store_info[$j]['nickname'] = $hoster;
            $store_info[$j]['person_id'] = $person_id;
            $store->where("id = $id")->setInc('click_num',1);
            ++$j;
        }
        $this->ajaxReturn($store_info);
    }

    public function view(){
        $school_id = I('param.school_id')?I('param.school_id'):0;
        $goods_id = I('param.goods_id')?I('param.goods_id'):0;
        $order_id = I('param.order_id')?I('param.goods_id'):0;
        if($order_id==1){
            $order = 'click_num desc';
        }
        else{
            $order = 'rand()';
        }
        //00
        if($school_id==0&&$goods_id==0)
        {
            $this->index($order);
            return;
        }

        $school = M('school');
        $goods = M('goods');
        $store = M('store');
        $school_name = $school->order('id asc')->select();
        $goods_type = $goods->order('id asc')->select();
        //10
        if($school_id!=0&&$goods_id==0)
        {
            $store_info = $store->join('JOIN school ON store.school_id = school.id')
                                ->where("store.school_id = $school_id AND store.status = 1")
                                ->order($order)
                                ->field('store.id as id, store_name, uid, link, school_id, show_pic, school_name, click_num, comment_num')
                                ->select();

            $i = 0;
            foreach($store_info as $v) {
                $uid = $v['uid'];
                $hoster = M('users')->where("id = $uid")->getField('nickname');
                $store_info[$i]['nickname'] = $hoster;
                ++$i;
            }
            $j = 0;
            foreach($store_info as $v) {
                $store_id = $v['id'];
                $goods_type1 = M('store_goods')->where("store_id = $store_id")->join('JOIN goods ON store_goods.goods_id = goods.id')->field('type')->select();

                $tags = M('store_tag')->where("store_id = $store_id")->join('JOIN tags ON store_tag.tag_id = tags.id')->field('tag_name')->select();
                $store_info[$j]['person_id'] = M('person')->where("store_id = $store_id")->getField('id');
                $store_info[$j]['goods_type'] = $goods_type1;
                $store_info[$j]['tags'] = $tags;
                $store->where("id = $store_id")->setInc('click_num',1);
                ++$j;
            }
            /*推荐店铺*/
            $recommend = $this->getRecommend();
            $this->assign('recommend', $recommend);
            $this->assign('store', $store_info);
            $this->assign('school', $school_name);
            $this->assign('goods', $goods_type);
            $this->display('index');
            return;
        }
        //01
        if($school_id==0&&$goods_id!=0){
            $store_info = M('store_goods')->where("goods_id = $goods_id")
                                ->join('JOIN store ON store_goods.store_id = store.id')
                                ->join('JOIN school ON store.school_id = school.id')
                                ->order($order)
                                ->select();
            $i = 0;
            foreach($store_info as $v) {
                $uid = $v['uid'];
                $hoster = M('users')->where("id = $uid")->getField('nickname');
                $store_info[$i]['nickname'] = $hoster;
                ++$i;
            }
            $j = 0;
            foreach($store_info as $v) {
                $store_id = $v['store_id'];
                $goods_type1 = M('store_goods')->where("store_id = $store_id")->join('JOIN goods ON store_goods.goods_id = goods.id')->field('type')->select();
                $tags = M('store_tag')->where("store_id = $store_id")->join('JOIN tags ON store_tag.tag_id = tags.id')->field('tag_name')->select();
                $store_info[$j]['person_id'] = M('person')->where("store_id = $store_id")->getField('id');
                $store_info[$j]['goods_type'] = $goods_type1;
                $store_info[$j]['tags'] = $tags;
                $store->where("id = $store_id")->setInc('click_num',1);
                ++$j;
            }
            /*推荐店铺*/
            $recommend = $this->getRecommend();
            $this->assign('recommend', $recommend);
            $this->assign('store', $store_info);
            $this->assign('school', $school_name);
            $this->assign('goods', $goods_type);
            $this->display('index');
            return;
        }
        //11
        if($school_id!=0&&$goods_id!=0) {
        $store_info = $store
                        ->where("school_id = $school_id AND status = 1")
                        ->join('JOIN store_goods ON store.id = store_goods.store_id')
                        ->join('JOIN goods ON store_goods.goods_id = goods.id')
                        ->join('JOIN school ON store.school_id = school.id')
                        ->where("goods_id = $goods_id")
                        ->order($order)
                        ->select();

            $i = 0;
            foreach($store_info as $v) {
                $uid = $v['uid'];
                $hoster = M('users')->where("id = $uid")->getField('nickname');
                $store_info[$i]['nickname'] = $hoster;
                ++$i;

            }

            $j = 0;
            foreach($store_info as $v) {

                $store_id = $v['store_id'];
                $goods_type1 = M('store_goods')->where("store_id = $store_id")->join('JOIN goods ON store_goods.goods_id = goods.id')->field('type')->select();
                $tags = M('store_tag')->where("store_id = $store_id")->join('JOIN tags ON store_tag.tag_id = tags.id')->field('tag_name')->select();
                $store_info[$j]['person_id'] = M('person')->where("store_id = $store_id")->getField('id');
                $store_info[$j]['goods_type'] = $goods_type1;
                $store_info[$j]['tags'] = $tags;
                $store->where("id = $store_id")->setInc('click_num',1);
                ++$j;
            }
            /*推荐店铺*/
            $recommend = $this->getRecommend();
            $this->assign('recommend', $recommend);
            $this->assign('store', $store_info);
            $this->assign('school', $school_name);
            $this->assign('goods', $goods_type);
            $this->display('index');
        }
    }

    private function getRecommend(){
        /*推荐店铺*/
        $store = M('store');
        $recommend_store = M('recommend')->order('rand()')->find();
        $recommend_id = $recommend_store['store_id'];
        if($recommend_id == null)
            return $recommend = null;
        $recommend['type'] = M('store_goods')->where("store_id = $recommend_id")->join('JOIN goods ON store_goods.goods_id = goods.id')->field('type')->select();
        $recommend['tags'] = M('store_tag')->where("store_id = $recommend_id")->join('JOIN tags ON store_tag.tag_id = tags.id')->field('tag_name')->select();
        $recommend['info'] = $store->where("store.id = $recommend_id")->join('JOIN school ON store.school_id = school.id')->find();
        $uid = $recommend['info']['uid'];
        $ma['id'] = $uid;
        $recommend['nickname'] = M('users')->where($ma)->getField('nickname');
        $recommend['person_id'] = M('person')->where("store_id = $recommend_id")->getField('id');
        $store->where("id = $recommend_id")->setInc('click_num',1);
        return $recommend;
        /*end*/
    }


}
