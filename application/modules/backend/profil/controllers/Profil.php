<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Profil extends MY_backend
{
    function __construct()
    {
        parent::__construct();

		
		$GLOBALS['folder_logo'] = 'public/profil/';
		$this->allowed_types = array('jpg','jpeg','png','svg','gif');
		$this->file_size = array(0,7000);

        //library breadcrum/untuk navigasi
		$this->load->library('breadcrumb');
		$this->load->library('urlcrypt');
		
		//breadcrumb untuk navigasi
		$this->breadcrumb->add_crumb('Home');
		$this->breadcrumb->add_crumb('Profil');
		
		$this->data['primary_title'] = '<i class="fa fa fa-gear"></i> Profil';
		$this->data['sub_primary_title'] = '';
		
		$this->data['sub_title'] = 'Profil';
		$this->layout->set_title($this->data['sub_title']);
		
		$this->table_profil = 'wd_options'; 
			
		$this->validation_rule();
    }
	
	// {VIEW} //
	function index(){
		$this->rule->type('U');
		$this->wd_validation->run_validate_js($this->data['rules'],$this->data['rules_message'],'#dt_form','.validate-js-message');
		$this->layout->set_include_group('form');
		$this->layout->set_include('inline',getview('form_js')); 
		
		$data = $this->wd_db->get_data($this->table_profil);
		$use = array('logo','telepon','email','lokasi','alamat');
		foreach ($data as $val) if (in_array($val['name'], $use)) $this->data['list'][$val['name']] = $val['value'];
		
		
		$this->layout->theme('backend','edit', $this->data);		
	}
	
	
	// {VALIDATION RULE} //
	public function validation_rule(){
		$this->data['rules'] = array(
		);
		$this->data['rules_message'] = array();
	}
		
	function update_action(){
		$this->rule->type('U');
		if($this->ci_validation()==FALSE)
			redirect(admin_dir().this_module());
		
		$logo = get_wd_options('logo');
		$logo_footer = get_wd_options('logo_footer');

		if (isset($_FILES['logo']['name']) && $_FILES['logo']['name']!= '') {
			check_files('logo','',$this->file_size,$this->allowed_types);
			$updata = file_upload($GLOBALS['folder_logo'],'logo');
			if ($updata['error']!='') {
				$this->session->set_flashdata('danger_message', 'Error uploading file !!');
				redirect(admin_dir().this_module());
				exit();
			}
			@unlink($GLOBALS['folder_logo'].$logo);
			$logo = $updata['name'];
		}
			
		$data = array(
			'logo' => $logo,
			'telepon' => $this->input->post('telepon'),
			'email' => $this->input->post('email'),
			'alamat' => $this->input->post('alamat'),
		);

		foreach ($data as $name => $value) 
			$this->wd_db->edit_dml($this->table_profil, array('value' => $value) , array( 'name' => $name));
			
		redirect(admin_dir().this_module());	
	}
	
}
