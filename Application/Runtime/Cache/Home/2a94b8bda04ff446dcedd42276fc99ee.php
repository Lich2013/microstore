<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>团团微店</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<link type="text/css" rel="stylesheet" href="/tuan/Public/css/style.css">
<script type="text/javascript" src="/tuan/Public/js/html5.js"></script>
<script type="text/javascript" src="/tuan/Public/js/jquery.1.4.2-min.js"></script>
</head>
<body>
<div class="pw">
	<header class="body_header">
		<a href="<?php echo U('Index/index');;?>">
		<div class="top" style="text-align: center">
			<div style="padding: 0.6em; font-size: 3em; font-family: KaiTi;">团团微店</div> 
		</div>
		</a>
	</header>
	<section class="body_banner">
		<!--演示内容开始-->
		<div class="swipe">
			<ul id="slider">
				<li style="display:block"><img width="100%" src="/tuan/Public/images/banner1.jpg"/></li>
				<li><img width="100%" src="/tuan/Public/images/banner2.jpg"/></li>
				<li><img width="100%" src="/tuan/Public/images/banner3.jpg"/></li>
				<li><img width="100%" src="/tuan/Public/images/banner4.jpg"/></li>
			</ul>
			<div id="pagenavi">
				<a href="javascript:void(0);" class="active">1</a>
				<a href="javascript:void(0);">2</a>
				<a href="javascript:void(0);">3</a>
				<a href="javascript:void(0);">4</a>
			</div>
		</div>
		<script type="text/javascript" src="/tuan/Public/js/touchScroll.js"></script>
		<script type="text/javascript" src="/tuan/Public/js/touchslider.dev.js"></script>
		<script type="text/javascript" src="/tuan/Public/js/run.js"></script>
		<!--演示内容结束-->
	</section>
	<section class="body_main">
		<div class="trip" id="nav">
			<ul class="nav">
				<li><a href="<?php echo U('View/index');;?>"><img src="/tuan/Public/images/nov03.png"><br>商品浏览</a></li>
				<li><a href="<?php echo U('List/index');;?>"><img src="/tuan/Public/images/nov04.png"><br>排行榜</a></li>
				<li><a href="<?php echo U('Search/index');;?>"><img src="/tuan/Public/images/nov02.png"><br>搜索微商</a></li>
				<li><a href="<?php echo U('Join/index');;?>"><img src="/tuan/Public/images/nov01.png"><br>申请入驻</a></li>
			</ul>
		</div>
		<div class="trip">
			<div class="index_left">
				<ul>
					<li><a href="list.html"><img src="/tuan/Public/images/pro01.jpg"></a></li>
					<li><a href="list.html"><img src="/tuan/Public/images/tuijian.png"><img src="/tuan/Public/images/pro02.jpg"></a></li>
					<li><a href="list.html"><img src="/tuan/Public/images/pro03.jpg"><img src="/tuan/Public/images/meiwei.png"></a></li>
				</ul>
			</div>
			<div class="index_right">
				<ul>
					<li class="emem"><a href="list.html"><img src="/tuan/Public/images/pro04.jpg"></a></li>
					<li class="bmbm">
						<img src="/tuan/Public/images/zzh.png"><br>
						2013年，餐饮界大洗牌，成为人们关注并认同的话题，无疑，回归理性消费是一直以来社会所】倡导的文明...<br>
						<span><a href="about.html"><img src="/tuan/Public/images/more.png"></a></span>
					</li>
				</ul>
			</div>
		</div>
	</section>
	<!-- <div class="body_footer">
		
	</div> -->
</div>
</body>
</html>