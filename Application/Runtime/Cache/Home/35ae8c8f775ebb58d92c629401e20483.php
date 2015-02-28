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
                <div style="  text-align: end;">
                    <span><a href="<?php echo U('Join/index');;?>">卖家申请</a></span> |
                    <span><a href="<?php echo U('Login/index');;?>">卖家登陆</a> </span>
                </div>
				<div class="tt">排行榜</div>
				<div class="tt" style="font-size:1.1em; padding:0.5em"><a href="<?php echo U('List/index');;?>">商家排行榜</a> | <a href="<?php echo U('List/tag');;?>">标签排行榜</a></div>
				<div class="tc">
                    <div style="float:left;width: 100%; padding-left: 1em">(按搜索热度依次排名)</div>
                    <?php if(is_array($tags)): $i = 0; $__LIST__ = array_slice($tags,0,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div style="padding: 1em; padding-left: 3em">
                            <a href="<?php echo U('Search/tag');?>?tag_name=<?php echo ($vo["tag_name"]); ?>" style="font-size: 2em; color: #d9534f  ;font-family: monospace;">
                                <?php echo ($i); ?>.&nbsp&nbsp <?php echo ($vo["tag_name"]); ?>
                            </a>
                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
                    <?php if(is_array($tags)): $i = 0; $__LIST__ = array_slice($tags,1,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div style="padding: 1em; padding-left: 3em">
                            <a href="<?php echo U('Search/tag');?>?tag_name=<?php echo ($vo["tag_name"]); ?>" style="font-size: 2em; color: #f0ad4e;font-family: monospace;">
                                <?php echo ($i+1); ?>.&nbsp&nbsp <?php echo ($vo["tag_name"]); ?>
                            </a>
                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
                    <?php if(is_array($tags)): $i = 0; $__LIST__ = array_slice($tags,2,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div style="padding: 1em; padding-left: 3em">
                            <a href="<?php echo U('Search/tag');?>?tag_name=<?php echo ($vo["tag_name"]); ?>" style="font-size: 2em; color: #5bc0de;font-family: monospace;">
                                <?php echo ($i+2); ?>.&nbsp&nbsp <?php echo ($vo["tag_name"]); ?>
                            </a>
                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
					<?php if(is_array($tags)): $i = 0; $__LIST__ = array_slice($tags,3,7,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div style="padding: 1em;padding-left: 3em">
							<a href="<?php echo U('Search/tag');?>?tag_name=<?php echo ($vo["tag_name"]); ?>" style="font-size: 2em; color: #5cb85c;font-family: monospace;">
								<?php echo ($i+3); ?>.&nbsp&nbsp <?php echo ($vo["tag_name"]); ?>
							</a>
						</div><?php endforeach; endif; else: echo "" ;endif; ?>
				</div>
			</div>
		</div>
	</section>
</div>
</body>
</html>