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
        <a href="<?php echo U('View/index');?>">
            <div class="col-xs-3">
                <img src="/tuan/Public/images/logo.png" class="img-responsive">
            </div>
        </a>
        <div class="col-xs-4 title" style="padding-left: inherit">
				<span><div class="row" >
                    <div class="col-xs-12" style="padding-left: inherit;padding-right: inherit">团团微店</div>
                </div>
				<div class="row">
                    <div class="col-xs-12" style="font-size: smaller;padding-left: inherit;padding-right: inherit;padding-top: 0.3em;">重庆学子的创业家园</div>
                </div></span>
        </div>
        <div class="col-xs-2" style="padding-left: inherit;padding-top: 0.6em;">
                    <a href="<?php echo U('Join/index');;?>"><button class="btn btn-xs btn-warning">申请入驻</button></a>
        </div>
        <div class="col-xs-2" style="padding-top: 0.6em;">
            <a href="<?php echo U('Login/index');;?>"><button class="btn btn-xs btn-info" style="background: #459BD6;">卖家登陆</button></a>
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


<div class="row">
    <div class="col-xs-12" style="text-align: center; padding-top:10px;">
        <div class="btn-group btn-group-justified" role="group" aria-label="Justified button group">
            <a href="<?php echo U('View/index');;?>" class="btn btn-default"  role="button">商品浏览</a>
            <a href="<?php echo U('List/index');;?>" class="btn btn-default"   role="button">排行榜</a>
            <a href="<?php echo U('Search/index');;?>" class="btn btn-default" id="myactivc" role="button">搜索</a>
        </div>
    </div>
</div>
<form action="<?php echo U('Search/search');?>" method="post">
    <div class="row" style="padding-top:10px; width: 99%">
        <div class="col-xs-6" style="padding-right:inherit; text-align:center;">
            <select class="form-control" name="school_id">
                <option value="0">全部学校</option>
                <?php if(is_array($school)): $i = 0; $__LIST__ = $school;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>"><?php echo ($vo["school_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
            </select>
        </div>
        <div class="col-xs-6" style="margin-right: inherit; padding-left: 0.3em; padding-right: inherit">
            <select class="form-control" name="goods_id">
                <option value="0">全部类型</option>
                <?php if(is_array($goods_type)): $i = 0; $__LIST__ = $goods_type;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><option value="<?php echo ($v["id"]); ?>"><?php echo ($v["type"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
            </select>
        </div>
    </div>
    <input type="hidden" name="tag" value="0"/>
    <input type="hidden" name="seller" value="0"/>
    <div class="row" style="padding-top: 1em; padding-bottom: inherit">
        <div class="col-xs-10" style="padding-right: 0.5em;">
            <div class="form-group">
                <input type="text" class="form-control" name="content" placeholder="输入店名、卖家、姓名或者标签">
            </div>
        </div>
        <div class="col-xs-2" style="padding-left: inherit;">
            <button class="btn btn-warning">搜索</button>
        </div>
    </div>

    <div class="row" style="padding-bottom:10px;">
        <div class="col-xs-1"> </div>

        <div class="col-xs-5">
            <div class="radio">
                <label>
                    <input type="radio" name="order_id" value="0" checked>
                    综合排序
                </label>
            </div>
        </div>

        <div class="col-xs-5">
            <div class="radio">
                <label>
                    <input type="radio" name="order_id" value="1">
                    点击量排序
                </label>
            </div>
        </div>
        <div class="col-xs-1">	</div>
    </div>
</form>



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