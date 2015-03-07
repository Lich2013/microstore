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
                <a href="#" class="btn btn-default" id="myactivc" role="button">商品浏览</a>
                <a href="#" class="btn btn-default" role="button">排行榜</a>
                <a href="#" class="btn btn-default" role="button">搜索</a>
            </div>
        </div>
    </div>

		<div class="trip">
			<div class="main">
				<div style="  text-align: end;"><a href="<?php echo U('Login/index');;?>">已有微店? 点我登陆</a> </div>
				<div class="tt">申请入驻</div>
				<div class="tc">
					<form action="<?php echo U('Join/join');;?>" method="post" enctype="multipart/form-data">
						<!--店铺信息-->
					<div>店铺名: &nbsp&nbsp&nbsp&nbsp<input type="text" name="store_name" placeholder="10字以内" class="input-text"></div>
					<div>店铺链接: http://<input type="text" name="link" placeholder="www.taobao.com" class="input-text" style="width: 50%"></div>
					<div>经营商品类型:
						<select name="goods_type" class="input-select">
							<?php if(is_array($goods_type)): $i = 0; $__LIST__ = $goods_type;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$type): $mod = ($i % 2 );++$i;?><option value="<?php echo ($type["id"]); ?>"><?php echo ($type["type"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
						</select>
					</div>
					<div>标签1:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="tag[]" class="input-text" placeholder="向用户介绍店铺业务, 5字以内, 选填" ></div>
					<div>标签2:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="tag[]" class="input-text" placeholder="5字以内, 选填"></div>
					<div>标签3:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="tag[]" class="input-text" placeholder="5字以内, 选填"></div>
					<div>标签4:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="tag[]" class="input-text" placeholder="5字以内, 选填"></div>
					<div>标签5:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="tag[]" class="input-text" placeholder="5字以内, 选填"></div>
					<div>店铺首页图上传: <input type="file" name="store_pic"></div>
					<div> &nbsp</div>
						<!--商户信息-->
					<div>商户管理者信息:</div>
					<div>昵称:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="nickname" placeholder="8字以内" class="input-text"></div>
					<div>真实姓名:  <input type="text" name="realname" class="input-text"></div>
					<div>身份证号:  <input type="text" name="id_num" class="input-text"></div>
					<div>登陆密码:  <input type="password" name="password" placeholder="6位以上" class="input-text"></div>
					<div>联系方式:  <input type="text" name="telephone" placeholder="联系电话(手机)" class="input-text"></div><div>&nbsp</div>
						<!--个人信息-->
					<div>个人风采展示: </div>	
					<div>姓名: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="person_name" class="input-text"></div>
					<div>学校:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<select name="person_school" class="input-select">
							<?php if(is_array($school_1)): $i = 0; $__LIST__ = $school_1;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$school_1): $mod = ($i % 2 );++$i;?><option value="<?php echo ($school_1["id"]); ?>"><?php echo ($school_1["school_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
						</select>
					</div>
					<div>专业: &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="person_major" placeholder="8字以内" class="input-text"></div>
					<div>个人介绍: <input type="text" name="person_introduce" placeholder="300字以内" class="input-text"></div>
					<div>相关配图:
                        <input type="file" name="person_pic1">
                        <input type="file" name="person_pic2">
                        <input type="file" name="person_pic3">
                    </div>

					<div>&nbsp</div>
					<div style="text-align:center"><input type="submit" value="提交" class="input-submit"></div>
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