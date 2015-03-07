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

<div class="row">
    <div class="col-xs-12"><h3>卖家风采展示</h3></div>
</div>

<div class="row">
    <div class="col-xs-12" style="text-align: center"><h3><?php echo ($person_info["name"]); ?></h3></div>
</div>

<div class="row">
    <div class="col-xs-5" style="text-align: right;padding-right: inherit;"><?php echo ($person_info["school_name"]); ?></div>
    <div class="col-xs-2" style="text-align: center;color: #3E93CF">|</div>
    <div class="col-xs-5" style="text-align: left;padding-left: inherit;"><?php echo ($person_info["major"]); ?></div>
</div>
<div class="row">
    <div class="col-xs-3"></div>
    <div class="col-xs-6" style="padding-top: 1em;padding-bottom: inherit;padding-left: inherit;padding-right: inherit;"><img src="<?php echo ($person_info["photo"]); ?>" style="width: 200%;" class="img-responsive"></div>
    <div class="col-xs-3"></div>
</div>
<div class="row">
    <div class="col-xs-12" style="padding-top: 1em;"><p><?php echo ($person_info["introduce"]); ?></p></div>
</div>
<div class="row">
    <div class="col-xs-12" style="padding-top: 1em;text-align: right"><a href="<?php echo ($link); ?>"><button class="btn btn-warning">进入卖家微店</button></a></div>
</div>
</div>
</body>
</html>