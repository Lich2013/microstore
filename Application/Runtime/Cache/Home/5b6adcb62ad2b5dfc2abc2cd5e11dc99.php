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
	<style>
		.input-text{
			padding: 0.2em;
			border-radius: 0.3em;
			border: 1px solid #d5d5d5;
			margin-left: 1.5em;
		}
		.input-select{
			padding: 0.2em;
			margin-left: 1.5em;
			border-radius: 0.3em;
			border: 1px solid #d5d5d5;
		}
		.input-submit{
			background-color: #313131;
			padding: 4px 7px 4px 7px !important;
			border-radius: 0.3em;
			border: 1px solid #313131;
			color: #fff !important;
		}
        .store{
            float: left;
            width: 99%;
            padding-bottom: 2em;
            padding-top: 1em;
            border: 1px solid #b2dba1;
            margin-top: 5px;
            margin-bottom: 5px;
            border-radius: 0.3em;
        }
	</style>
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
				<a href="<?php echo U('Topic/index');?>?topic_id=<?php echo ($topic[0]["id"]); ?>"><li style="display:block"><img width="100%" src="<?php echo ($topic[0]["pic"]); ?>"/></li></a>
				<?php if(is_array($topic)): $i = 0; $__LIST__ = array_slice($topic,1,3,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo U('Topic/index');?>?topic_id=<?php echo ($vo["id"]); ?>"><li><img width="100%" src="<?php echo ($vo["pic"]); ?>"/></li></a><?php endforeach; endif; else: echo "" ;endif; ?>
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
			<div class="main">
				<div class="tt">登录</div>
				<div class="tc">
					<form action="<?php echo U('Login/login');;?>" method="post">
						<div>真实姓名: &nbsp;&nbsp;&nbsp;<input type="text" placeholder="真实姓名" name="realname" class="input-text"/></div>
						<div>身份证号码: <input type="text" placeholder="身份证号码" name="idcard" class="input-text"/></div>
						<div>密码: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" placeholder="密码" name="password" class="input-text"/></div>
						<div style="text-align:center"><input type="submit" value="登录" class="input-submit"></div>
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