<?php
namespace Home\Controller;
use Think\Controller;

class CommentController extends BaseController {
    public function comment(){
        $openid = session('openId');
        $content = I('post.content');
        $store_id = I('post.store_id');
        if(mb_strlen($content, 'utf-8') > 200) {
            $data = array(
                'status' => 200,
                'error' => '评论请在200字以内'
            );
            $this->ajaxReturn($data);
        }
        $openid = 'ouRCyjkDGe9EfiAdquDVy_LxlSq4';
        if(!$openid) {
            $this->ajaxReturn('请通过重邮小帮手进入!');
        }
        $time = time();
        $string = md5($time);
        $secret = sha1(sha1($time).md5($string)."redrock");
        $data = array (
                        'openid' => $openid,
                        'token' => 'gh_68f0a1ffc303',
                        'timestamp' => $time,
                        'string' => $string,
                        'secret' => $secret,
            );
        $ch = curl_init ();
        $url = 'http://hongyan.cqupt.edu.cn/MagicLoop/index.php?s=/addon/Api/Api/userInfo';
        curl_setopt ( $ch, CURLOPT_URL, $url );
        curl_setopt ( $ch, CURLOPT_POST, 1 );
        curl_setopt ( $ch, CURLOPT_HEADER, 0 );
        curl_setopt ( $ch, CURLOPT_RETURNTRANSFER, 1 );
        curl_setopt ( $ch, CURLOPT_POSTFIELDS, $data );
        $return = json_decode(curl_exec ( $ch ));
        curl_close ( $ch );
        if($return->status != 200) {
            $data = array(
                'status' => 200,
                'error' => '网络错误, 请刷新下试试'
            );
            $this->ajaxReturn($data);
        }

        if($return->data->id) {
            $data = array(
                'uid' => $return->data->id,
                'nickname' => $return->data->nickname,
                'content' => $content,
                'head' => $return->data->headimgurl,
                'time' => Date("Y-m-d H:i:s", time()),
                'store_id' => $store_id
            );
            $id = M('comment')->data($data)->add();
            if($id) {
                $map['id'] = $id;
                $success = M('comment')->where($map)->find();
            $success['status'] = 200;
            $success['success'] = '评论成功!';
            $this->ajaxReturn($success);
           }
            else{
                $success = array(
                    'status' => 200,
                    'success' => '评论失败, 请稍后再试!'
                );
                $this->ajaxReturn($success);
            }
        }
        elseif($return->data->errcode) {
            if($return->data->errcode == 40003) {
                $data = array(
                                'status' => 200,
                                'error' => '请绑定重邮小帮手后发表评论!'
                            );
                $this->ajaxReturn($data);
            }
            else {
                $data = array(
                    'status' => 200,
                    'error' => '未知错误!'
                );
                $this->ajaxReturn($data);
            }
        }
        else {
                $data = array(
                    'status' => 200,
                    'error' => '未知错误!'
                );
                $this->ajaxReturn($data);
        }
    }
}