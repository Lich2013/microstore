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

		<div class="trip">
			<div class="main">
				<div style="  text-align: end;"><?php echo ($name); ?>, <a href="<?php echo U('Login/loginout');;?>" style="color: blue">退出</a> </div>
				<div class="tt">信息修改</div>
				<div class="tc">
					<form action="<?php echo U('User/update');;?>" method="post" enctype="multipart/form-data">
						<div></div>
						<div>微店信息修改</div>
						<div>微店名: <input type="text" value="<?php echo ($info["store"]["store_name"]); ?>" name="store_name" class="input-text" /></div>
						<div>微店链接: <input type="text" value="<?php echo ($info["store"]["link"]); ?>" name="store_link" class="input-text" /></div>
                        <div>联系方式:  <input type="text" name="telephone" placeholder="联系电话(手机)" class="input-text" value="<?php echo ($info["store"]["telephone"]); ?>"></div>
                        <div>
							商品类型:
							<select name="goods_type"  class="input-select" >
								<?php if(is_array($goods)): $i = 0; $__LIST__ = $goods;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vo["id"]); ?>" <?php $a = $vo['id']==$info['goods']['id']? 'selected="selected"':'';echo $a; ?>><?php echo ($vo["type"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
							</select>
						</div>
						<div>标签1:
							<input type="hidden" value="<?php echo ($info["tags"]["0"]["id"]); ?>" name="tags_id[]"/>
							<input type="text" value="<?php echo ($info["tags"]["0"]["tag_name"]); ?>" name="tags[]" class="input-text" />
						</div>
						<div>标签2:
							<input type="hidden" value="<?php echo ($info["tags"]["1"]["id"]); ?>" name="tags_id[]"/>
							<input type="text" value="<?php echo ($info["tags"]["1"]["tag_name"]); ?>" name="tags[]" class="input-text" />
						</div>
						<div>标签3:
							<input type="hidden" value="<?php echo ($info["tags"]["2"]["id"]); ?>" name="tags_id[]"/>
							<input type="text" value="<?php echo ($info["tags"]["2"]["tag_name"]); ?>" name="tags[]" class="input-text" />
						</div>
						<div>标签4:
							<input type="hidden" value="<?php echo ($info["tags"]["3"]["id"]); ?>" name="tags_id[]"/>
							<input type="text" value="<?php echo ($info["tags"]["3"]["tag_name"]); ?>" name="tags[]" class="input-text" />
						</div>
						<div>标签5:
							<input type="hidden" value="<?php echo ($info["tags"]["4"]["id"]); ?>" name="tags_id[]"/>
							<input type="text" value="<?php echo ($info["tags"]["4"]["tag_name"]); ?>" name="tags[]" class="input-text" />
						</div>

						<div>店铺首页图:<input type="file" name="store_pic"/></div>

						<div>个人风采信息修改</div>
						<div>姓名:<input type="text" value="<?php echo ($info["person"]["name"]); ?>" name="person_name" class="input-text" /></div>
						<div>学校:
							<select name="person_school" class="input-select">
								<?php if(is_array($school)): $i = 0; $__LIST__ = $school;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vs): $mod = ($i % 2 );++$i;?><option value="<?php echo ($vs["id"]); ?>" <?php $a = $vs['id']==$info['person']['school_id']? 'selected="selected"':'';echo $a; ?>><?php echo ($vs["school_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
							</select>
						</div>
						<div>专业:<input type="text" value="<?php echo ($info["person"]["major"]); ?>" name="person_major" class="input-text" /></div>
						<div>个人介绍:<input type="text" value="<?php echo ($info["person"]["introduce"]); ?>" name="person_introduce" class="input-text" /></div>
						<div>相关配图:
                            <input type="file" value="" name="person_pic1"/>
                            <input type="file" value="" name="person_pic2"/>
                            <input type="file" value="" name="person_pic3"/>
                        </div>
						<div><input type="submit" class="input-submit"/></div>
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