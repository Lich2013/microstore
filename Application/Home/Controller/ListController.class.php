<?php
namespace Home\Controller;
use Think\Controller;
class ListController extends BaseController {
    //商家排行榜
    public function index(){
        $store = M('store')->order('click_num desc')->where('status = 1')->limit(5)->select();
        $i = 0;
        foreach($store as $v) {
            $uid = $v['uid'];
            $hoster = M('users')->where("id = $uid")->getField('nickname');
            $store[$i]['nickname'] = $hoster;
            ++$i;
        }
        $j = 0;
        foreach($store as $v) {
            $store_id = $v['id'];
            $goods_type = M('store_goods')->where("store_id = $store_id")->join('JOIN goods ON store_goods.goods_id = goods.id')->field('type')->select();
            $tags = M('store_tag')->where("store_id = $store_id")->join('JOIN tags ON store_tag.tag_id = tags.id')->field('tag_name')->select();
            $store[$j]['person_id'] = M('person')->where("store_id = $store_id")->getField('id');
            $store[$j]['goods_type'] = $goods_type;
            $store[$j]['tags'] = $tags;
            ++$j;
        }
        $this->assign('store', $store);
        $this->display();
    }

    //标签排行榜
    public function tag(){
        $tags = M('tags')->where("tag_name is not null")->order('click_num desc')->limit(10)->select();
        $this->assign('tags', $tags);
        $this->display();
    }


}