

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
				  <label for="" class="col-sm-2 control-label">Nama</label>
				  <div class="col-sm-10"><input disabled value="<?php set_value_edit_text(wd_set_value('nama'),$list['nama']); ?>" type="text" class="form-control" name="nama" id="nama" placeholder="Nama" size="50">			  </div>
				</div>
	
				<div class="form-group">
				  <label for="" class="col-sm-2 control-label">File</label>
				  <div class="col-sm-10">
				<?php
				if ($list['file']=='') {
					$img=$this->config->item("assets")."General/not-found.png";	
				}else{
					if (file_exists("public/service_file/".$list['file'])) {
						$img=base_url()."public/service_file/".$list['file'];
					}else{
						$img=$this->config->item("assets")."General/not-found.png";
					}
				}
				?>
					<div class="img">
		    			<img id="preview_file" src="<?=$img?>" class="img-responsive" style="max-width:200px; max-height:200px" /> 
					</div>
							  </div>
				</div>
	
				<div class="form-group">
				  <label for="" class="col-sm-2 control-label">Deskripsi</label>
				  <div class="col-sm-10"><textarea disabled name="deskripsi" id="deskripsi" class="textarea textarea-wcwg" placeholder="Deskripsi"><?php set_value_edit_text(wd_set_value('deskripsi'),$list['deskripsi']); ?></textarea>			  </div>
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

/* Generated via crud engine by indonesiait.com | 2019-03-11 11:44:37 */

-->