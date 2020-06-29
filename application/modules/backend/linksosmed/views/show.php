

<!-- Main content -->
<section class="content">
  <div class="row">
	<div class="col-xs-12">
	  <div class="box box-info">
		<div class="box-header">
		  <h3 class="box-title">Edit <?php echo $sub_title;?></h3>
		</div><!-- /.box-header -->
		 
		  	<form id="dt_form" action="<?php echo backend_url().this_module();?>" class="form-horizontal" method="post">
			  <div class="box-body wd-form">
			
			<?php show_alert('success',$this->session->flashdata('success_message'));?>
			<?php show_alert('danger',$this->session->flashdata('danger_message'));?>
				  
				  <div class="callout callout-warning validate-js-message">
                    <h4><i class="icon fa fa-warning"></i> Warning</h4>
					
					 <?php echo wd_validation_errors(); ?>
                  </div><input value="<?php echo $this->input->get('id'); ?>" type="hidden" name="id">
				
	
				<div class="form-group">
				  <label for="" class="col-sm-2 control-label">Link*</label>
				  <div class="col-sm-10"><input disabled value="<?php set_value_edit_text(wd_set_value('link'),$list['link']); ?>" type="text" class="form-control" name="link" id="link" placeholder="Link" size="50">			  </div>
				</div>
	
				<div class="form-group">
				  <label for="" class="col-sm-2 control-label">Icon*</label>
				  <div class="col-sm-10">
					<select disabled name="icon" id="icon" class="form-control select2" style="width: 100%;">
						<option value="">Select</option>

						<?php 
						$list_icon[0] = array('facebook','Facebook');
						$list_icon[1] = array('twitter','Twitter');
						$list_icon[2] = array('path','Path');
						$list_icon[3] = array('youtube','Youtube');
						$list_icon[4] = array('skype','Skype');
						$list_icon[5] = array('googleplus','Google Plus');
						$list_icon[6] = array('whatsapp','WhatsApp');		
						foreach ( $list_icon as $value) {
							$selected = set_value_edit_select(wd_set_value('icon'),$list['icon'], $value[0]);
							echo "<option value='$value[0]' $selected > $value[1] </option>";

						}
						?>
					</select> 			  </div>
				</div>
				  </div><!-- /.box-body -->
				
			  <span class="wd-box-helper"></span>		
			  <div class="wd-box-action">
				  <div class="col-sm-offset-2">
					  <div class="wd-box-action-btn">						
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

/* Generated via crud engine by indonesiait.com | 2016-10-26 08:36:59 */

->