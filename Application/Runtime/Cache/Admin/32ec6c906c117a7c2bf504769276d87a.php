<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN""http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>团团微店后台登陆</title>
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
</head>
<body id="login">
<div id="login-wrapper" class="png_bg">
  <div id="login-top">
    <h1>团团微店后台登陆</h1>
    <!-- Logo (221px width) -->
    <a href="#"><img id="logo" src="/tuan/Public/resources/images/logo.png" alt="Simpla Admin logo" /></a> </div>
  <!-- End #logn-top -->
  <div id="login-content">
    <form action="<?php echo U('Login/login');;?>" method="post">
      <p>
        <label>Username</label>
        <input class="text-input" type="text" name="username"/>
      </p>
      <div class="clear"></div>
      <p>
        <label>Password</label>
        <input class="text-input" type="password" name="password" />
      </p>
      <div class="clear"></div>

      <div class="clear"></div>
      <p>
        <input class="button" type="submit" value="Sign In" />
      </p>
    </form>
  </div>
  <!-- End #login-content -->
</div>
<!-- End #login-wrapper -->
</body>
</html>