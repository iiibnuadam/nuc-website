

<!-- Main content -->
<section class="content">
  <div class="row">
	<div class="col-xs-12">
	  <div class="box box-info">
		<div class="box-header">
		  <h3 class="box-title">Edit <?php echo $sub_title;?></h3>
		</div><!-- /.box-header -->
		 
		  	<form enctype="multipart/form-data" id="dt_form" action="<?php echo backend_url().this_module();?>/update_action" class="form-horizontal" method="post">
			  <div class="box-body wd-form">
			
			<?php show_alert('success',$this->session->flashdata('success_message'));?>
			<?php show_alert('danger',$this->session->flashdata('danger_message'));?>
				  
				  <div class="callout callout-warning validate-js-message">
                    <h4><i class="icon fa fa-warning"></i> Warning</h4>
					
					 <?php echo wd_validation_errors(); ?>
                  </div>

				<div class="form-group">
				  <label for="" class="col-sm-2 control-label">Logo</label>

					<?php
					if ($list['logo']=='') {
						$img=$this->config->item('assets')."General/not-found.png";	
					}else{
						if (file_exists("public/profil/".$list['logo'])) {
							$img=base_url()."public/profil/".$list['logo'];
						}else{
							$img=$this->config->item('assets')."General/not-found.png";
						}
					}
					?>
				  <div class="col-sm-10">
					<div class="img">
		    			<img id="preview_logo" src="<?=$img?>" class="img-responsive" style="max-width:200px; max-height:200px" /> 
					</div>
					  <div style="width: 100%">
					  	<input type="file"  name="logo" id="logo" onchange="logoHandler('logo','error_logo')" >
					  </div>
					<div style="color: red" id="error_logo"></div>			  
				  </div>
				</div>
	
				
				<div class="form-group">
				  <label for="" class="col-sm-2 control-label">Telepon</label>
				  <div class="col-sm-10"><input value="<?php set_value_edit_text(wd_set_value('telepon'),$list['telepon']); ?>" type="text" class="form-control" name="telepon" id="telepon" placeholder="Telepon" size="50">			  
				</div>
				</div>
	
				<div class="form-group">
				  <label for="" class="col-sm-2 control-label">Email</label>
				  <div class="col-sm-10"><input value="<?php set_value_edit_text(wd_set_value('email'),$list['email']); ?>" type="text" class="form-control" name="email" id="email" placeholder="Email" size="50">			  
				</div>
				</div>
	
				</div>
				<div class="form-group">
				  <label for="" class="col-sm-2 control-label">Alamat</label>
				  <div class="col-sm-10">
				  	<textarea style="height: 300px" name="alamat" id="alamat" class="textarea textarea-wcwg" placeholder="Alamat"><?php set_value_edit_text(wd_set_value('alamat'),$list['alamat']); ?></textarea>			  
				</div>
				</div>

				  </div><!-- /.box-body -->
				
			  <span class="wd-box-helper"></span>		
			  <div class="wd-box-action">
				  <div class="col-sm-offset-2">
					  <div class="wd-box-action-btn">
						<button type="submit" class="btn ladda-button" data-color="blue" data-style="expand-right" data-size="xs">Save</button>
						<!-- <span class="btn btn-default" id="ubah">Edit</span> -->
					  </div>
				  </div>
			  </div><!-- /.box-footer -->	
				
			  <div class="wd-box-required">
				  <hr>
					<span class="required">*</span>
					Field Required
			  </div><!-- /.box-footer -->
			</form>
	  </div><!-- /.box -->
	</div><!-- /.col -->
  </div><!-- /.row -->
</section><!-- /.content -->




<!-- 

/* Generated via crud engine by indonesiait.com | 2017-08-10 12:07:28 */

-->