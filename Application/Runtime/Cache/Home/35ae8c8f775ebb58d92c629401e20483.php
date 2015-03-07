<?php if (!defined('THINK_PATH')) exit();?><!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>团团微店</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <!--<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="/tuan/Public/css/bootstrap.min.css">

    <!-- 可选的Bootstrap主题文件（一般不用引入） -->
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!--<link rel="stylesheet" href="/tuan/Public/css/bootstrap-theme.min.css">-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="/tuan/Public/css/mystyle.css">
</head>
<body>
<div class="container-fluid">

    <!-- header -->
    <div class="row header">
        <div class="col-xs-3">
            <img src="/tuan/Public/images/logo.png" class="img-responsive">
        </div>
        <div class="col-xs-4 title" style="padding-left: inherit">
				<span><div class="row" >
                    <div class="col-xs-12" style="padding-left: inherit;padding-right: inherit">团团微店</div>
                </div>
				<div class="row">
                    <div class="col-xs-12" style="font-size: smaller;padding-left: inherit;padding-right: inherit;padding-top: 0.3em;">重庆学子的创业家园</div>
                </div></span>
        </div>

        <div class="col-xs-2" style="padding-left: inherit;padding-top: 0.6em;">
            <!--<div class="row" style="padding-top:0.5em;">-->
                <!--<div class="col-xs-12">-->
                    <a href="<?php echo U('Join/index');;?>"><button class="btn btn-xs btn-warning">申请入驻</button></a>
                <!--</div>-->
            <!--</div>-->
        </div>
        <div class="col-xs-2" style="padding-top: 0.6em;">
            <!--<div class="row" style="padding-top:0.5em;">-->
                <!--<div class="col-xs-12">-->
                    <a href="<?php echo U('Login/index');;?>"><button class="btn btn-xs btn-info" style="background: #459BD6;">卖家登陆</button></a>
                <!--</div>-->
            <!--</div>-->

        </div>

    </div>
    <!-- pic -->
    <div class="row" >
        <div class="col-xs-12" style="padding: inherit;">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active" ></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1" ></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2" ></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3" ></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">

                    <div class="item active">
                        <a href="<?php echo U('Topic/index');?>?topic_id=<?php echo ($topic[0]["id"]); ?>">
                            <img  id="0" src="<?php echo ($topic[0]["pic"]); ?>" class="img-responsive" style="height: 10.4em;">
                            <div class="carousel-caption">

                            </div>
                        </a>
                    </div>

                    <?php if(is_array($topic)): $i = 0; $__LIST__ = array_slice($topic,1,3,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><div class="item">
                            <a href="<?php echo U('Topic/index');?>?topic_id=<?php echo ($vo["id"]); ?>">
                                <img id="<?php echo ($i); ?>" src="<?php echo ($vo["pic"]); ?>" class="img-responsive" style="height: 10.4em;">
                                <div class="carousel-caption">

                                </div>
                            </a>
                        </div><?php endforeach; endif; else: echo "" ;endif; ?>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev" style="display: none">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true" ></span>

                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next" style="display: none">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true" ></span>

                </a>
            </div>
        </div>
    </div>

    <!-- 导航-->
    <div class="row">
        <div class="col-xs-12" style="text-align: center; padding-top:10px;">
            <div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
                <a href="<?php echo U('View/index');;?>" class="btn btn-default" id="myactivc" role="button">商品浏览</a>
                <a href="<?php echo U('List/index');;?>" class="btn btn-default" role="button">排行榜</a>
                <a href="#" class="btn btn-default" role="button">搜索</a>
            </div>
        </div>
    </div>

<!-- 排序方式 -->
<div class="row" style="padding-top:10px;padding-bottom:10px;text-align: center;">

    <div class="col-xs-6" style="padding-right: inherit">
        <div class="radio">
            <label>
                <a href="<?php echo U('List/index');;?>" style="color: #000000">
                    <input type="radio" name="order_id" value="0">
                    最热店家Top10
                </a>
            </label>
        </div>
    </div>

    <div class="col-xs-6" style="padding-left: inherit;">
        <div class="radio">
            <label>
                <a href="<?php echo U('List/tag');;?>" style="color: #000000">
                    <input type="radio" name="order_id" value="1" checked>
                    最热标签Top10
                </a>
            </label>
        </div>
    </div>
</div>

<?php if(is_array($tags)): $i = 0; $__LIST__ = $tags;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><a href="<?php echo U('Search/tag');?>?tag_name=<?php echo ($vo["tag_name"]); ?>">
        <div class="row" style="margin: inherit;margin-bottom: 1em;background: white;  border-radius: 4px;">
            <div class="col-xs-12" style="padding-bottom: 0.8em;padding-top: 0.8em;font-size: large;"><?php echo ($i); ?> . <?php echo ($vo["tag_name"]); ?></div>
        </div>
    </a><?php endforeach; endif; else: echo "" ;endif; ?>
		<!--<div class="trip">-->
			<!--<div class="main">-->
                <!--<div style="  text-align: end;">-->
                    <!--<span><a href="<?php echo U('Join/index');;?>">卖家申请</a></span> |-->
                    <!--<span><a href="<?php echo U('Login/index');;?>">卖家登陆</a> </span>-->
                <!--</div>-->
				<!--<div class="tt">排行榜</div>-->
				<!--<div class="tt" style="font-size:1.1em; padding:0.5em"><a href="<?php echo U('List/index');;?>">商家排行榜</a> | <a href="<?php echo U('List/tag');;?>">标签排行榜</a></div>-->
				<!--<div class="tc">-->
                    <!--<div style="float:left;width: 100%; padding-left: 1em">(按搜索热度依次排名)</div>-->
                    <!--<?php if(is_array($tags)): $i = 0; $__LIST__ = array_slice($tags,0,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>-->
                        <!--<div style="padding: 1em; padding-left: 3em">-->
                            <!--<a href="<?php echo U('Search/tag');?>?tag_name=<?php echo ($vo["tag_name"]); ?>" style="font-size: 2em; color: #d9534f  ;font-family: monospace;">-->
                                <!--<?php echo ($i); ?>.&nbsp&nbsp <?php echo ($vo["tag_name"]); ?>-->
                            <!--</a>-->
                        <!--</div>-->
                    <!--<?php endforeach; endif; else: echo "" ;endif; ?>-->
                    <!--<?php if(is_array($tags)): $i = 0; $__LIST__ = array_slice($tags,1,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>-->
                        <!--<div style="padding: 1em; padding-left: 3em">-->
                            <!--<a href="<?php echo U('Search/tag');?>?tag_name=<?php echo ($vo["tag_name"]); ?>" style="font-size: 2em; color: #f0ad4e;font-family: monospace;">-->
                                <!--<?php echo ($i+1); ?>.&nbsp&nbsp <?php echo ($vo["tag_name"]); ?>-->
                            <!--</a>-->
                        <!--</div>-->
                    <!--<?php endforeach; endif; else: echo "" ;endif; ?>-->
                    <!--<?php if(is_array($tags)): $i = 0; $__LIST__ = array_slice($tags,2,1,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>-->
                        <!--<div style="padding: 1em; padding-left: 3em">-->
                            <!--<a href="<?php echo U('Search/tag');?>?tag_name=<?php echo ($vo["tag_name"]); ?>" style="font-size: 2em; color: #5bc0de;font-family: monospace;">-->
                                <!--<?php echo ($i+2); ?>.&nbsp&nbsp <?php echo ($vo["tag_name"]); ?>-->
                            <!--</a>-->
                        <!--</div>-->
                    <!--<?php endforeach; endif; else: echo "" ;endif; ?>-->
					<!--<?php if(is_array($tags)): $i = 0; $__LIST__ = array_slice($tags,3,7,true);if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>-->
						<!--<div style="padding: 1em;padding-left: 3em">-->
							<!--<a href="<?php echo U('Search/tag');?>?tag_name=<?php echo ($vo["tag_name"]); ?>" style="font-size: 2em; color: #5cb85c;font-family: monospace;">-->
								<!--<?php echo ($i+3); ?>.&nbsp&nbsp <?php echo ($vo["tag_name"]); ?>-->
							<!--</a>-->
						<!--</div>-->
					<!--<?php endforeach; endif; else: echo "" ;endif; ?>-->
				<!--</div>-->
			<!--</div>-->
		<!--</div>-->
	<!--</section>-->

</div>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<!--<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>-->
<script src="/tuan/Public/js/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<!-- <script src="http://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<script src="/tuan/Public/js/bootstrap.min.js"></script>
<script src="/tuan/Public/js/mobile.js"></script>
<script>
    touch.on('.img-responsive', 'swiperight', function(){
        $(".left.carousel-control").click();
    });
    touch.on('.img-responsive', 'swipeleft', function(){
        $(".right.carousel-control").click();
    });
</script>
</body>
</html>
<script>$('input').change(function(){
    console.log($(this).parent().attr('href'));
    var link = $(this).parent().attr('href');
    window.location.href=link;
})</script>