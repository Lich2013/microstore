<?php if (!defined('THINK_PATH')) exit();?>index.html<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>团团微店后台管理</title>
    <!--                       CSS                       -->
    <!-- Reset Stylesheet -->
    <link rel="stylesheet" href="/tuan/Public/resources/css/reset.css" type="text/css" media="screen" />
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="/tuan/Public/resources/css/style.css" type="text/css" media="screen" />
    <!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
    <link rel="stylesheet" href="/tuan/Public/resources/css/invalid.css" type="text/css" media="screen" />
    <!--                       Javascripts                       -->
    <!-- jQuery -->
    <script type="text/javascript" src="/tuan/Public/resources/scripts/jquery-1.3.2.min.js"></script>
    <!-- jQuery Configuration -->
    <script type="text/javascript" src="/tuan/Public/resources/scripts/simpla.jquery.configuration.js"></script>
    <!-- Facebox jQuery Plugin -->
    <script type="text/javascript" src="/tuan/Public/resources/scripts/facebox.js"></script>
    <!-- jQuery WYSIWYG Plugin -->
    <script type="text/javascript" src="/tuan/Public/resources/scripts/jquery.wysiwyg.js"></script>
    <!-- jQuery Datepicker Plugin -->
    <script type="text/javascript" src="/tuan/Public/resources/scripts/jquery.datePicker.js"></script>
    <script type="text/javascript" src="/tuan/Public/resources/scripts/jquery.date.js"></script>
    <style type="text/css">
        #editor {overflow:scroll; max-height:300px}
    </style>
</head>
<body>
<div id="body-wrapper">
    <!-- Wrapper for the radial gradient background -->
    <div id="sidebar">
        <div id="sidebar-wrapper">
            <!-- Sidebar with logo and menu -->
            <h1 id="sidebar-title"><a href="#"></a></h1>
            <!-- Logo (221px wide) -->
            <a href="#"><img id="logo" src="/tuan/Public/resources/images/logo.png" alt="Simpla Admin logo" /></a>
            <!-- Sidebar Profile links -->
            <div id="profile-links"> Hello, <?php echo ($username); ?><br/><br/>
                <a href="<?php echo U('Login/loginout');;?>" title="Sign Out">Sign Out</a> </div>
            <ul id="main-nav">
                <!-- Accordion Menu -->
                <li> <a href="#" class="nav-top-item <?php $class = ("/tuan/index.php/Admin/Info" == "/tuan/index.php/Admin/Index")? 'current':' '; echo $class; ?> "  >
                    <!-- Add the class "no-submenu" to menu items with no sub menu no-submenu-->
                    审核管理 </a>
                    <ul>
                        <li  ><a href="<?php echo U('Index/index');?>">待审核</a></li>
                        <li><a href="<?php echo U('Index/passed');?>">已通过微店管理</a></li>
                        <li><a href="<?php echo U('Index/blackstore');?>">黑名单</a></li>
                    </ul>
                </li>
                <li> <a href="#" class="nav-top-item <?php $class = ("/tuan/index.php/Admin/Info" == "/tuan/index.php/Admin/Topic")? 'current':' '; echo $class; ?>">
                    <!-- Add the class "current" to current menu item -->
                    专题管理</a>
                    <ul>
                        <li><a href="<?php echo U('Topic/index');?>">发布一个新专题</a></li>
                        <li><a  href="<?php echo U('Topic/manage');?>">管理专题</a></li>
                        <li><a  href="<?php echo U('Topic/homepage');?>">首页宣传图管理</a></li>
                    </ul>
                </li>
                <li> <a href="#" class="nav-top-item <?php $class = ("/tuan/index.php/Admin/Info" == "/tuan/index.php/Admin/Info")? 'current':' '; echo $class; ?>">
                    <!-- Add the class "current" to current menu item -->
                    信息管理</a>
                    <ul>
                        <li><a href="<?php echo U('Info/index');?>">商店信息</a></li>
                        <li><a  href="<?php echo U('Info/user');?>">用户信息</a></li>
                        <li><a  href="<?php echo U('Info/admin');?>">管理员信息</a></li>
                        <li><a  href="<?php echo U('Info/type');?>">商品类型管理</a></li>
                        <li><a  href="<?php echo U('Info/school');?>">学校管理</a></li>
                    </ul>
                </li>

            </ul>
            <!-- End #main-nav -->
            <div id="messages" style="display: none">
                <!-- Messages are shown when a link with these attributes are clicked: href="#messages" rel="modal"  -->
                <h3>3 Messages</h3>
                <p> <strong>17th May 2009</strong> by Admin<br />
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
                <p> <strong>2nd May 2009</strong> by Jane Doe<br />
                    Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
                <p> <strong>25th April 2009</strong> by Admin<br />
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. <small><a href="#" class="remove-link" title="Remove message">Remove</a></small> </p>
                <form action="#" method="post">
                    <h4>New Message</h4>
                    <fieldset>
                        <textarea class="textarea" name="textfield" cols="79" rows="5"></textarea>
                    </fieldset>
                    <fieldset>
                        <select name="dropdown" class="small-input">
                            <option value="option1">Send to...</option>
                            <option value="option2">Everyone</option>
                            <option value="option3">Admin</option>
                            <option value="option4">Jane Doe</option>
                        </select>
                        <input class="button" type="submit" value="Send" />
                    </fieldset>
                </form>
            </div>
            <!-- End #messages -->
        </div>
    </div>
    <!-- End #sidebar -->
<div id="main-content">

    <h2>Welcome</h2>

    <!-- End .shortcut-buttons-set -->
    <div class="clear"></div>
    <!-- End .clear -->
    <div class="content-box">
        <!-- Start Content Box -->
        <div class="content-box-header">
            <h3>用户列表</h3>
            <div class="clear"></div>
        </div>
        <!-- End .content-box-header -->
        <div class="content-box-content">
            <div class="tab-content default-tab" id="tab1">
                <!-- This is the target div. id must match the href of this div's tab -->
            </div>
            <table>
                <form action="<?php echo U('Index/judge');?>" method="post">
                    <thead>
                    <tr>
                        <!--<th>-->
                            <!--<input class="check-all" type="checkbox" />-->
                        <!--</th>-->
                        <th>用户id</th>
                        <th>昵称</th>
                        <th>真名</th>
                        <th>学校</th>
                        <th>身份证号码</th>
                        <th>重置密码</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <td colspan="6">
                            <div class="bulk-actions align-left">
                                <!--<select name="action">-->
                                    <!--<option value="1">批量通过</option>-->
                                    <!--<option value="2">批量删除</option>-->
                                    <!--<option value="3">批量拉黑</option>-->
                                <!--</select>-->
                                <!--<input class="button" type="submit"/>-->
                            </div>
                            <div class="pagination">
                                <a href=""><?php echo ($page); ?></a>
                                <!--<a href="#" title="First Page">&laquo; First</a>-->
                                <!--<a href="#" title="Previous Page">&laquo; Previous</a>-->
                                <!--<a href="#" class="number" title="1">1-->
                                <!--<a href="#" class="number" title="2">2</a>-->
                                <!--<a href="#" class="number" title="3">3</a>-->
                                <!--<a href="#" class="number" title="4">4</a>-->
                                <!--<a href="#" title="Next Page">Next &raquo;</a><a href="#" title="Last Page">Last &raquo;</a>-->
                            </div>
                            <!-- End .pagination -->
                            <div class="clear"></div>
                        </td>
                    </tr>
                    </tfoot>
                    <tbody>
                        <?php if(is_array($info)): $i = 0; $__LIST__ = $info;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr>
                                <td style="display:none;" >
                                    <input type="checkbox" value="<?php echo ($vo["uid"]); ?>" name="store_id[]"/>
                                </td>
                                <td><?php echo ($vo["uid"]); ?></td>
                                <td><?php echo ($vo["nickname"]); ?></td>
                                <td><?php echo ($vo["realname"]); ?></td>
                                <td>
                                    <select name="" id="" style="padding: 4px;border-radius: 4px;">
                                        <?php if(is_array($school)): $i = 0; $__LIST__ = $school;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><option value="<?php echo ($v["id"]); ?>" <?php $a = $vo['school_id']==$v['id']? 'selected="selected"':'';echo $a; ?>><?php echo ($v["school_name"]); ?></option><?php endforeach; endif; else: echo "" ;endif; ?>
                                    </select>
                                </td>
                                <td><?php echo ($vo["idcard"]); ?></td>
                                <td><input type="password" placeholder="需要重置密码时请输入新密码" style="padding: 6px;border-radius: 4px;border: 1px solid #d5d5d5"/></td>
                                <td>
                                    <!-- Icons -->
                                    <a href="#" title="通过" class="pass" value="1"><img src="/tuan/Public/resources/images/icons/tick_circle.png" alt="通过" /></a>
                                </td>
                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                        </tbody>
                </form>
            </table>
        </div>
        <!-- End #tab1 -->

    </div>
    <!-- End .content-box-content -->
</div>
<!-- End .content-box -->

<!-- End #main-content -->
</div>
<script>
    $(".pass").live("click",function(){
        var uid = $(this).parent().parent().children(":first").children(":first").val();
        var school_id = $(this).parent().parent().children(":first").next().next().next().next().children(":first").val();
        var password = $(this).parent().parent().children(":first").next().next().next().next().next().next().children(":first").val();
        $.ajax({
            url: "<?php echo U('Info/userUpdate');?>",

            type: 'post',

            data:{"uid":uid, "school_id":school_id, "password":password},

            dataType: 'json',

            timeout: 10000,

            error: function(){alert('出现错误了...刷新一下试试!');},

            success: function(data){
                    if(data == 200 ){
                        location.reload();
                    }
            }
        });
    });

    $(".delete").live("click",function(){
        var action = $(this).attr('value');
        var store_id = $(this).parent().parent().children(":first").children(":first").val();
        var parent = $(this).parent().parent();
        $.ajax({
            url: "<?php echo U('Index/judge');?>",

            type: 'post',

            data:{"store_id":store_id, "action":action},

            dataType: 'json',

            timeout: 10000,

            error: function(){alert('出现错误了...刷新一下试试!');},

            success: function(data){

                if(data == 200){

                    parent.remove();
                }
            }
        });

    });
    $(".black").live("click",function(){
        var action = $(this).attr('value');
        var store_id = $(this).parent().parent().children(":first").children(":first").val();
        var parent = $(this).parent().parent();
        $.ajax({
            url: "<?php echo U('Index/judge');?>",

            type: 'post',

            data:{"store_id":store_id, "action":action},

            dataType: 'json',

            timeout: 10000,

            error: function(){alert('出现错误了...刷新一下试试!');},

            success: function(data){

                if(data == 200){

                    parent.remove();
                }
            }
        });

    });
</script>
</body>

</html>