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

		<!--<div class="trip">-->
			<!--<div class="main">-->
				<!--<div class="tt">登录</div>-->
				<!--<div class="tc">-->
					<!--<form action="<?php echo U('Login/login');;?>" method="post">-->
						<!--<div>真实姓名: &nbsp;&nbsp;&nbsp;<input type="text" placeholder="真实姓名" name="realname" class="input-text"/></div>-->
						<!--<div>身份证号码: <input type="text" placeholder="身份证号码" name="idcard" class="input-text"/></div>-->
						<!--<div>密码: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" placeholder="密码" name="password" class="input-text"/></div>-->
						<!--<div style="text-align:center"><input type="submit" value="登录" class="input-submit"></div>-->
					<!--</form>-->
				<!--</div>-->
			<!--</div>-->
		<!--</div>-->
	<!--</section>-->

<div class="row">
    <div class="col-xs-12"><h3>登录</h3></div>
</div>
<form action="<?php echo U('Login/login');;?>" method="post">
    <div class="row" >
        <div class="col-xs-4" style="text-align: left;padding-left: inherit;
      padding-right: inherit;"><h4>真实姓名:</h4></div>
        <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
            <div class="form-group">
                <input type="text" class="form-control" name="realname" placeholder="请输入真实姓名">
            </div>
        </div>
    </div>
    <div class="row" >
        <div class="col-xs-4" style="text-align: left;padding-left: inherit;
      padding-right: inherit;"><h4>身份证号码:</h4></div>
        <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
            <div class="form-group">
                <input type="text" class="form-control" name="idcard" placeholder="请输入身份证号码">
            </div>
        </div>
    </div>
    <div class="row" >
        <div class="col-xs-4" style="text-align: left;padding-left: inherit;
      padding-right: inherit;"><h4>密码:</h4></div>
        <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="请输入密码">
            </div>
        </div>
    </div>
    <div class="row" style="margin-bottom: 30px;">
        <div class="col-xs-12" style="text-align: right;"><input type="submit" class="btn btn-warning" value="登录"/></div>
    </div>
</form>
</div>
</body>
</html>