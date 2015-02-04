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
				<li><a href="<?php echo U('Index/index');;?>"><img src="/tuan/Public/images/nov03.png"><br>商品浏览</a></li>
				<li><a href="<?php echo U('List/index');;?>"><img src="/tuan/Public/images/nov04.png"><br>排行榜</a></li>
				<li><a href="<?php echo U('Search/index');;?>"><img src="/tuan/Public/images/nov02.png"><br>搜索微商</a></li>
				<li><a href="<?php echo U('Join/index');;?>"><img src="/tuan/Public/images/nov01.png"><br>申请入驻</a></li>
			</ul>
		</div>
		<div class="trip">
			<div class="main">
				<div style="  text-align: end;"><a href="#">已有微店? 点我登陆</a> </div>
				<div class="tt">申请入驻</div>
				<div class="tc">
					<form action="" method="post" enctype="multipart/form-data">
					<div>店铺名: &nbsp&nbsp&nbsp&nbsp<input type="text"></div>
					<div>经营商品类型: <select name="" id=""><option value="">123</option></select></div>
					<div>标签:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"></div>
					<div>店铺首页图上传: <input type="file"></div>
					<div> &nbsp</div>
					<div>商户管理者信息:</div>
					<div>昵称:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"></div>
					<div>真实姓名:  <input type="text"></div>
					<div>身份证号:  <input type="text"></div>
					<div>登陆密码:  <input type="password"></div>
					<div>学校:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="" id=""><option value="">111</option></select>
					<div>专业:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text">
					<div>个人风采展示: </div>	
					<div>姓名: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"></div>
					<div>学校: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"></div>
					<div>专业: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text"></div>
					<div>个人介绍: <input type="text"></div>
					<div>相关配图: <input type="file"></div>

					<div>&nbsp</div>
					<div style="text-align:center"><input type="submit" value="提交" style="padding: 0.5em;border-radius: 0.5em;"></div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- <div class="body_footer">
		
	</div> -->
</div>
</body>
</html>