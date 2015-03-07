<?php
namespace Home\Controller;
use Think\Controller;
class SearchController extends BaseController {
    public function index(){
        $goods_type = M('goods')->select();
        $school = M('school')->select();
        $this->assign('goods_type', $goods_type);
        $this->assign('school', $school);
        $this->display();
    }

    public function search(){
        $data = I('post.');

        $content = $data['content'];

        $store_name = '%'.$content.'%';

        if($data['school_id']!=0){
            $school_id = '%'.$data['school_id'].'%';
           $map1['store.school_id'] = array('like',$school_id); $map2['store.school_id'] = array('like',$school_id); $map3['store.school_id'] = array('like',$school_id);
        }
        else{
            $school_id = '%';
           $map1['store.school_id'] = array('like',$school_id); $map2['store.school_id'] = array('like',$school_id); $map3['store.school_id'] = array('like',$school_id);
        }

        if($data['goods_type']!=0){
            $goods_type = '%'.$data['goods_type'].'%';
            $map1['goods_id'] = array('like',$goods_type);$map2['goods_id'] = array('like',$goods_type);$map3['goods_id'] = array('like',$goods_type);
        }
        else{
            $goods_type = '%';
            $map1['goods_id'] = array('like',$goods_type);$map2['goods_id'] = array('like',$goods_type);$map3['goods_id'] = array('like',$goods_type);
        }

        if($data['tag']==0){
            $tag = '%'.$content.'%';
        }
        else{
            $tag = null;
        }

        if($data['seller']==0){
            $seller = '%'.$content.'%';
        }
        else{
            $seller = null;
        }

        if($data['order_id']==1){
            $order = 'store.click_num desc';
        }
        else{
            $order = 'rand()';
        }

        $map1['store_name'] = array('like',array($store_name));
        $map2['tag_name'] = array('like',array($tag));
        $map3['nickname'] = array('like',array($seller));
        $map['_complex'] = array($map1, $map2, $map3,'_logic'=>'or');
        $map['_logic'] = 'and';


        $store = M('store')
                ->join('JOIN store_goods ON store.id = store_goods.store_id')
                ->join('JOIN store_tag ON store.id = store_tag.store_id')
                ->join('JOIN tags ON store_tag.tag_id = tags.id')
                ->join('JOIN users ON store.uid = users.id')
                ->where($map)
                ->where('status = 1')
                ->group('store.id')
                ->order($order)
                ->field('store.id, store.uid, show_pic, link, store_name')
                ->select();

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
            M('store')->where("id = $store_id")->setInc('click_num',1);
            $goods_type = M('store_goods')->where("store_id = $store_id")->join('JOIN goods ON store_goods.goods_id = goods.id')->field('type')->select();
            $tags = M('store_tag')->where("store_id = $store_id")->join('JOIN tags ON store_tag.tag_id = tags.id')->field('tag_name')->select();
            $store[$j]['goods_type'] = $goods_type;
            $store[$j]['tags'] = $tags;
            ++$j;
        }
        $goods_type = M('goods')->select();
        $school = M('school')->select();
        $this->assign('goods_type', $goods_type);
        $this->assign('school', $school);
        $this->assign('store', $store);
        $this->display();
    }

    public function tag(){
        $data = I('get.');
        $data['content'] = $data['tag_name'];
        $content = $data['content'];
        $data['school_id']=0;
        $data['goods_type']=0;
        $data['tag']=0;
        $data['seller']=1;
        $store_name = '%'.$content.'%';

        if($data['school_id']!=0){
            $school_id = '%'.$data['school_id'].'%';
            $map1['store.school_id'] = array('like',$school_id); $map2['store.school_id'] = array('like',$school_id); $map3['store.school_id'] = array('like',$school_id);
        }
        else{
            $school_id = '%';
            $map1['store.school_id'] = array('like',$school_id); $map2['store.school_id'] = array('like',$school_id); $map3['store.school_id'] = array('like',$school_id);
        }

        if($data['goods_type']!=0){
            $goods_type = '%'.$data['goods_type'].'%';
            $map1['goods_id'] = array('like',$goods_type);$map2['goods_id'] = array('like',$goods_type);$map3['goods_id'] = array('like',$goods_type);
        }
        else{
            $goods_type = '%';
            $map1['goods_id'] = array('like',$goods_type);$map2['goods_id'] = array('like',$goods_type);$map3['goods_id'] = array('like',$goods_type);
        }

        if($data['tag']==0 ){
            $tag = '%'.$content.'%';
        }
        else{
            $tag = null;
        }

        if($data['seller']==0 ){
            $seller = '%'.$content.'%';
        }
        else{
            $seller = null;
        }


        $map1['store_name'] = array('like',array($store_name));
        $map2['tag_name'] = array('like',array($tag));
        $map3['nickname'] = array('like',array($seller));
        $map['_complex'] = array($map1, $map2, $map3,'_logic'=>'or');
        $map['_logic'] = 'and';


        $store = M('store')
            ->join('JOIN store_goods ON store.id = store_goods.store_id')
            ->join('JOIN store_tag ON store.id = store_tag.store_id')
            ->join('JOIN tags ON store_tag.tag_id = tags.id')
            ->join('JOIN users ON store.uid = users.id')
            ->where($map)
            ->where('status = 1')
            ->group('store.id')
            ->order('store.click_num desc')
            ->field('store.id, store.uid, show_pic, link, store_name')
            ->select();

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
            M('store')->where("id = $store_id")->setInc('click_num',1);
            $goods_type = M('store_goods')->where("store_id = $store_id")->join('JOIN goods ON store_goods.goods_id = goods.id')->field('type')->select();
            $tags = M('store_tag')->where("store_id = $store_id")->join('JOIN tags ON store_tag.tag_id = tags.id')->field('tag_name, tag_id')->select();
            foreach($tags as $val){
                $tag_id = $val['tag_id'];
                M('tags')->where("id = $tag_id")->setInc('click_num',1);
            }
            $store[$j]['goods_type'] = $goods_type;
            $store[$j]['tags'] = $tags;
            ++$j;
        }
        $goods_type = M('goods')->select();
        $school = M('school')->select();
        $this->assign('goods_type', $goods_type);
        $this->assign('school', $school);
        $this->assign('store', $store);
        $this->display('search');
    }
}