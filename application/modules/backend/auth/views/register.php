<p class="login-box-msg">Register Users</p>
<form action="<?php echo backend_url().'auth/register_save'; ?>" method="post">

   <div class="form-group has-feedback">
    <input required id="username" type="username" value="" name="username" class="form-control" placeholder="Username">
    <span class="fa fa-key form-control-feedback"></span>
  </div>

  <div class="form-group has-feedback">
    <input required id="first_name" type="first_name" value="" name="first_name" class="form-control" placeholder="Nama lengkap">
    <span class="glyphicon glyphicon-user form-control-feedback"></span>
  </div>

  <div class="form-group has-feedback">
    <input required id="email" type="email" value="" name="email" class="form-control" placeholder="Email">
	  <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
  </div>
  <div class="form-group has-feedback">
	   <input required id="password" type="password" value="" name="password" class="form-control" placeholder="Password">
	   <span class="glyphicon glyphicon-lock form-control-feedback"></span>
  </div>

  <div class="form-group has-feedback">
    <input required id="phone" type="phone" value="" name="phone" class="form-control" placeholder="No. Handphone">
    <span class="glyphicon glyphicon-phone form-control-feedback"></span>
  </div>

  <div class="form-group has-feedback">
    <input id="team" type="team" value="" name="team" class="form-control" placeholder="Nama Team">
    <span class="fa fa-group form-control-feedback" ></span>
    <span style="color: red;"><b>*Kosongi jika anda dosen</b></span>
  </div>

  <div class="row">
	   <div class="col-xs-8">
	  
	   </div><!-- /.col -->
	<div class="col-xs-4">
	    <button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
	</div><!-- /.col -->
  </div>
</form>

		 