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
				<div style="  text-align: end;"><?php echo ($name); ?>, <a href="<?php echo U('Login/loginout');;?>" style="color: blue">退出</a> </div>
				<div class="tt">信息修改</div>
				<div class="tc">
					<form action="<?php echo U('User/update');;?>" method="post" enctype="multipart/form-data">
						<div></div>
						<div>微店信息修改</div>
						<div>微店名: <input type="text" value="<?php echo ($info["store"]["store_name"]); ?>" name="store_name"/></div>
						<div>微店链接: <input type="text" value="<?php echo ($info["store"]["link"]); ?>" name="store_link"/></div>
						<div>
							商品类型:
							<select name="goods_type" id="">
								<?php if(is_array($goods)): $i = 0; $__LIST__ = $goods;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php $a = $vo['id']==$info['goods']['id']? 'selected="selected"':'';echo $a; ?>><?php echo ($vo["type"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
							</select>
						</div>
						<div>标签1:
							<input type="hidden" value="<?php echo ($info["tags"]["0"]["id"]); ?>" name="tags_id[]"/>
							<input type="text" value="<?php echo ($info["tags"]["0"]["tag_name"]); ?>" name="tags[]"/>
						</div>
						<div>标签2:
							<input type="hidden" value="<?php echo ($info["tags"]["1"]["id"]); ?>" name="tags_id[]"/>
							<input type="text" value="<?php echo ($info["tags"]["1"]["tag_name"]); ?>" name="tags[]"/>
						</div>
						<div>标签3:
							<input type="hidden" value="<?php echo ($info["tags"]["2"]["id"]); ?>" name="tags_id[]"/>
							<input type="text" value="<?php echo ($info["tags"]["2"]["tag_name"]); ?>" name="tags[]"/>
						</div>
						<div>标签4:
							<input type="hidden" value="<?php echo ($info["tags"]["3"]["id"]); ?>" name="tags_id[]"/>
							<input type="text" value="<?php echo ($info["tags"]["3"]["tag_name"]); ?>" name="tags[]"/>
						</div>
						<div>标签5:
							<input type="hidden" value="<?php echo ($info["tags"]["4"]["id"]); ?>" name="tags_id[]"/>
							<input type="text" value="<?php echo ($info["tags"]["4"]["tag_name"]); ?>" name="tags[]"/>
						</div>

						<div>店铺首页图:<input type="file" name="store_pic"/></div>

						<div>个人风采信息修改</div>
						<div>姓名:<input type="text" value="<?php echo ($info["person"]["name"]); ?>" name="person_name"/></div>
						<div>学校:
							<select name="person_school">
								<?php if(is_array($school)): $i = 0; $__LIST__ = $school;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vs): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vs["id"]); ?>" <?php $a = $vs['id']==$info['person']['school_id']? 'selected="selected"':'';echo $a; ?>><?php echo ($vs["school_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
							</select>
						</div>
						<div>专业:<input type="text" value="<?php echo ($info["person"]["major"]); ?>" name="person_major"/></div>
						<div>个人介绍:<input type="text" value="<?php echo ($info["person"]["introduce"]); ?>" name="person_introduce"/></div>
						<div>相关配图:<input type="file" value="" name="person_pic"/></div>
						<div><input type="submit"/></div>
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