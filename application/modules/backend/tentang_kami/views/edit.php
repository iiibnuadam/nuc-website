

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
                  </div><input value="<?php echo $this->input->get('id'); ?>" type="hidden" name="id">
				<div class="form-group">
				  <label for="" class="col-sm-2 control-label">About_us</label>
				  <div class="col-sm-10"><textarea  name="about_us" id="about_us" class="textarea " placeholder="About_us"><?php set_value_edit_text(wd_set_value('about_us'),$list['about_us']); ?></textarea>			  
				</div>
				</div>
	
				<div class="form-group">
				  <label for="" class="col-sm-2 control-label">About_us_img</label>
				  <div class="col-sm-10">
				<?php
				if ($list['about_us_img']=='') {
					$img=$this->config->item("assets")."General/not-found.png";	
				}else{
					if (file_exists("public/profil/".$list['about_us_img'])) {
						$img=base_url()."public/profil/".$list['about_us_img'];
					}else{
						$img=$this->config->item("assets")."General/not-found.png";
					}
				}
				?>
					<div class="img">
		    			<img id="preview_about_us_img" src="<?=$img?>" class="img-responsive" style="max-width:200px; max-height:200px" /> 
					</div>
					<div class="col-sm-12" style="padding-left: 0">
						<input type="file"  name="about_us_img" id="about_us_img" onchange="about_us_imgHandler()" >
					</div>
					<div style="color: red" id="error_about_us_img"></div>			  
				</div>
				</div>

				  </div><!-- /.box-body -->
				
			  <span class="wd-box-helper"></span>		
			  <div class="wd-box-action">
				  <div class="col-sm-offset-2">
					  <div class="wd-box-action-btn">
						<button type="submit" class="btn ladda-button" data-color="blue" data-style="expand-right" data-size="xs">Save</button>
						<a href="<?php echo backend_url().this_module();?>" class="btn btn-default">Back to List</a>
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

/* Generated via crud engine by indonesiait.com | 2017-08-11 19:00:09 */

-->