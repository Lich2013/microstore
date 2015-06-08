<?php
namespace Admin\Controller;
use Think\Controller;
class LogController extends BaseController
{
    //本日志从2015-6-3开始记录
    protected $year;
    protected $month;
    protected $day;
    const DAY = 2;
    const MONTH = 6;
    const YEAR = 2015;
    public function index()
    {
       $log = M('log');
       $different_people = $log->field('openid')->group("openid")->select();//不同的openid人数
        $this->assign('different', count($different_people));
        $repeat = $log->query('SELECT
	openid
FROM
	(
		SELECT
			openid,
			(@date := SUBSTR(time, 1, 10)) date
		FROM
			log,
			(SELECT(@date := 0)) a
		WHERE
			openid IN (
				SELECT
					openid
				FROM
					log
				GROUP BY
					openid
			)
		GROUP BY
			openid,
			date
	) b
GROUP BY
	openid
HAVING
	COUNT(openid) > 1');

        $this->assign('repeat', count($repeat));
       // $anymous_people = $log->where("openid is null")->group("page")->select();//没有openid的人数

       //总计

       $page0['page'] = '首页';
       $page0_num = $log->where($page0)->count();
       $this->assign('index', $page0_num);

       $page1['page'] = '搜索页面';
       $page1_num = $log->where($page1)->count();
       $this->assign('search', $page1_num);

       $page2['page'] = '商家排行榜';
       $page2_num = $log->where($page2)->count();
       $this->assign('storelist', $page2_num);

       $page3['page'] = '商品浏览页面';
       $page3_num = $log->where($page3)->count();
       $this->assign('goodsview', $page3_num);

       $page4['page'] = '查看了更多商品';
       $page4_num = $log->where($page4)->count();
       $this->assign('moregoods', $page4_num);

       $page5['page'] = '专题页面';
       $page5_num = $log->where($page5)->count();
       $this->assign('major', $page5_num);

       $page6['page'] = '申请入驻页面';
       $page6_num = $log->where($page6)->count();
       $this->assign('apply', $page6_num);

       $page7['page'] = '标签排行榜';
       $page7_num = $log->where($page7)->count();
       $this->assign('taglist', $page7_num);

       $page8['page'] = array('like','%个人展示页面');
       $page8_num = $log->where($page8)->count();
       $this->assign('person', $page8_num);

        $this->year = date("Y", time());
        $this->month = date("m", time());
        $this->day = date("d", time());

        $month_flag = 0;
        $day_flag = 0;

        for ($i = $this->year; $i >= self::YEAR; $i--) {

            if(isset($end) && $end == 1) {
                break;
            }

           if(isset($month_flag) && $month_flag == 1) {
               $this->month = 12;
               $month_flag = 0;
           }

            for ($j = $this->month; $j  > 0; $j--) {

                if(isset($end) && $end == 1)
                    break;

                if(isset($day_flag) && $day_flag == 1) {
                    $this->day = 31;
                    $day_flag = 0;
                }

                for ($k = $this->day; $k > 0; $k--) {

                    if($i == self::YEAR && $j == self::MONTH && $k == self::DAY){
                        $end = 1;
                        break;
                    }

                       $date = $this->dateConstruct($i, $j, $k);
                       $page0['page'] = '首页';
                       $page0['time'] = array('like', $date.'%');
                       $result[$date]['index'] = $log->where($page0)->count();

                       $page1['page'] = '搜索页面';
                       $page1['time'] = array('like', $date.'%');
                       $result[$date]['search'] = $log->where($page1)->count();

                       $page2['page'] = '商家排行榜';
                       $page2['time'] = array('like', $date.'%');
                       $result[$date]['storelist'] = $log->where($page2)->count();

                       $page3['page'] = '商品浏览页面';
                       $page3['time'] = array('like', $date.'%');
                       $result[$date]['goodsview'] = $log->where($page3)->count();

                       $page4['page'] = '查看了更多商品';
                       $page4['time'] = array('like', $date.'%');
                       $result[$date]['moregoods'] = $log->where($page4)->count();

                       $page5['page'] = '专题页面';
                       $page5['time'] = array('like', $date.'%');
                       $result[$date]['major'] = $log->where($page5)->count();

                       $page6['page'] = '申请入驻页面';
                       $page6['time'] = array('like', $date.'%');
                       $result[$date]['apply'] = $log->where($page6)->count();

                       $page7['page'] = '标签排行榜';
                       $page7['time'] = array('like', $date.'%');
                       $result[$date]['taglist'] = $log->where($page7)->count();

                       $page8['page'] = array('like','%个人展示页面');
                       $page8['time'] = array('like', $date.'%');
                       $result[$date]['person'] = $log->where($page8)->count();

                       $page9['time'] = array('like', $date.'%');
                       $result[$date]['total'] = $log->where($page9)->count();

                       $day_flag = 1;
                }
                $month_flag = 1;

            }
    
       }
        $this->assign('result', $result);
        $this->display();
    }
    public function tuan() {
        $date = I('get.date');
        $url = 'http://microstore.lcl.deadsoul.net/index.php/home/event/dataReturn?date='.$date;
        $result= json_decode(file_get_contents($url));
        $data = array(
            'goodsview' => $result->goodsview,
            'moregoods' => $result->moregoods,
            'person' => $result->person,
            'major'  => $result->major,
            'search' => $result->search,
            'storelist' => $result->storelist,
            'taglist' => $result->taglist
        );
//        print_r($data);
        $this->assign('data', $data);
        $this->display();
    }    public function outPutData() {
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment; filename=info.xls');
        header('Pragma: no-cache');
        header('Expires: 0');

        $title = array('店铺名', '店铺主营', '店铺类型', '浏览量', '卖家昵称', '真实姓名', '学院', '专业', '电话', '身份证');
        $data = $this->info();

        echo iconv('utf-8', 'gbk', implode("\t", $title)), "\n";
        foreach ($data as $value) {
            echo iconv('utf-8', 'gbk', implode("\t", $value)), "</br>","\n";
        }
    }

    private function dateConstruct($y, $m, $d){
        if(strlen($y)==1){
            $y = '0'.$y;
        }
        if(strlen($m)==1){
            $m = '0'.$m;
        }
        if(strlen($d)==1){
            $d = '0'.$d;
        }
            $string = $y.'-'.$m.'-'.$d;
            return $string;
    }

    private function info() {
        $data = M('store')->join('JOIN users ON store.uid = users.id')
            ->join('JOIN store_goods ON store.id = store_goods.store_id')
            ->join('JOIN person ON store.id = person.store_id')
            ->join('JOIN school ON store.school_id = school.id')
            ->join('JOIN goods ON store_goods.goods_id = goods.id')
            ->field('store.store_name, goods.type, school.school_name, store.click_num, users.nickname, users.realname, academy, users.major, telephone, users.idcard')
            ->select();
        return $data;
    }

}


