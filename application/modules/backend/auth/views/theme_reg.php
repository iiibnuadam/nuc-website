<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Register Panel</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="<?php echo $this->config->item('assets').'AdminLTE/'; ?>bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo $this->config->item('assets').'AdminLTE/'; ?>font-awesome-4.6.2/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<?php echo $this->config->item('assets').'AdminLTE/'; ?>ionicons-2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo $this->config->item('assets').'AdminLTE/'; ?>dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="<?php echo $this->config->item('assets').'AdminLTE/'; ?>plugins/iCheck/square/blue.css">
    
  <link rel="stylesheet" href="<?php echo $this->config->item('assets').'AdminLTE/'; ?>wd_custom/style.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="hold-transition login-page"  style="width: 100%;
    height: 100vh;
    background: linear-gradient(45deg, rgba(29, 224, 153, 0.8), rgba(29, 200, 205, 0.8)), url(<?= base_url();?>assets/frontend/avilon/img/ugm.jpg) center top no-repeat;
    background-size: cover;
    position: relative;">
    <div class="login-box">
      <div class="login-logo">
        <a href="<?php echo base_url(); ?>"><b>Register</b> User</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <?php $this->load->view($view);?>  
      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="<?php echo $this->config->item('assets').'AdminLTE/'; ?>plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.5 -->
    <script src="<?php echo $this->config->item('assets').'AdminLTE/'; ?>bootstrap/js/bootstrap.min.js"></script>
    <!-- iCheck -->
    <script src="<?php echo $this->config->item('assets').'AdminLTE/'; ?>plugins/iCheck/icheck.min.js"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  </body>
</html>