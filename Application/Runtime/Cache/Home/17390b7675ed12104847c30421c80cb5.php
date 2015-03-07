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


<div class="row">
    <div class="col-xs-12" style="padding-left: inherit"><h3>申请入驻</h3></div>
</div>
<form  action="<?php echo U('Join/join');;?>" method="post" enctype="multipart/form-data">
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>店铺名:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="store_name" placeholder="10字以内">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>店铺链接:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="link" placeholder="如 www.taobao.com">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>商品类型:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <select class="form-control" name="goods_type">
            <?php if(is_array($goods_type)): $i = 0; $__LIST__ = $goods_type;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type): $mod = ($i % 2 );++$i;?><option value="<?php echo ($type["id"]); ?>"><?php echo ($type["type"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
        </select>
    </div>
</div>
<div class="row" style="padding-top: 0.5em;">
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>标签1:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="tag[]" placeholder="向用户介绍店铺业务,3字以内,必填">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>标签2:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="tag[]" placeholder="3字以内, 选填">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>标签3:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="tag[]" placeholder="3字以内, 选填">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>标签4:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="tag[]" placeholder="3字以内, 选填">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>标签5:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="tag[]" placeholder="3字以内, 选填">
        </div>
    </div>
</div>
<div class="row" >
    <div class="form-group">
    <label><h4>店铺首页图:</h4></label>
    <input type="file" name="store_pic">
    </div>
</div>

<div class="row">
    <div class="col-xs-12" style="padding-left: inherit"><h4>商户管理者信息</h4></div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>昵称:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="nickname" placeholder="8字以内">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>真实姓名:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="realname" placeholder="请输入真实姓名">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>身份证号:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="id_num" placeholder="请输入身份证号码">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>登录密码:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="password" class="form-control" name="password" placeholder="请输入6位以上密码">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>联系方式:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="telephone" placeholder="请输入手机号码">
        </div>
    </div>
</div>

<div class="row">
    <div class="col-xs-12" style="padding-left: inherit"><h4>个人风采展示</h4></div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>姓名:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="person_name" placeholder="请输入姓名">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>学校:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <select class="form-control" name="person_school">
                <?php if(is_array($school_1)): $i = 0; $__LIST__ = $school_1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$school_1): $mod = ($i % 2 );++$i;?><option value="<?php echo ($school_1["id"]); ?>"><?php echo ($school_1["school_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
        </select>
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>专业:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="person_major" placeholder="8字以内">
        </div>
    </div>
</div>
<div class="row" >
    <div class="col-xs-3" style="text-align: left;padding-left: inherit;
  padding-right: inherit;"><h4>个人介绍:</h4></div>
    <div class="col-xs-8" style="padding-left: inherit;padding-top: 0.5em;">
        <div class="form-group">
            <input type="text" class="form-control" name="person_introduce" placeholder="300字以内">
        </div>
    </div>
</div>
<div class="row" >
    <div class="form-group">
        <label><h4>相关配图:</h4></label>
        <input type="file" name="person_pic">
    </div>
</div>

<div class="row" style="margin-bottom: 30px;">
    <div class="col-xs-12" style="text-align: right;"><input type="submit" class="btn btn-warning"/></div>
</div>
</form>
</div>
</body>
</html>