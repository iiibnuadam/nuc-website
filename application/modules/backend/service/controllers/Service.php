<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Service extends MY_backend
{
    function __construct()
    {
        parent::__construct();

		
		$GLOBALS['folder_file'] = 'public/service_file/';
		$this->allowed_types = array('png','jpg','jpeg','jpg','jpeg');
		$this->file_size = array(0,500);		
		$GLOBALS['thumb_file'] = '512,512';			
        //library breadcrum/untuk navigasi
		$this->load->library('breadcrumb');
		$this->load->library('urlcrypt');
		
		//breadcrumb untuk navigasi
		$this->breadcrumb->add_crumb('Home');
		$this->breadcrumb->add_crumb('Service');
		
		$this->data['primary_title'] = '<i class="fa fa fa-gear"></i> Service';
		$this->data['sub_primary_title'] = '';
		
		$this->data['sub_title'] = 'Service';
		$this->layout->set_title($this->data['sub_title']);
		
		$this->table_service = 'service'; 
			
		$this->validation_rule();
    }
	
	// {VIEW} //
	function index(){
		$this->rule->type('R');
	
		$this->layout->set_include_group('index');
		$this->layout->set_include('inline',getview('index_js',$this->data));
		$this->layout->theme('backend','index', $this->data);	
	}
	
	function show(){
		$this->rule->type('R');
		$id = $this->urlcrypt->decode($this->input->get('id'));
		
		$this->layout->set_include_group('form');
		$this->layout->set_include('inline',getview('form_js'));

		$this->data['list'] = $this->wd_db->get_data_row($this->table_service,array('id'=>$id));
		
		$this->layout->theme('backend','show', $this->data);
	}
	
	// {VALIDATION RULE} //
	public function validation_rule(){
		$this->data['rules'] = array(
		);
		$this->data['rules_message'] = array();
	}
	
	function add(){
		$this->rule->type('C');
		//Run validate with js
		$this->wd_validation->run_validate_js($this->data['rules'],$this->data['rules_message'],'#dt_form','.validate-js-message');

		$this->layout->set_include_group('form');
		$this->layout->set_include('inline',getview('form_js'));
		$this->layout->theme('backend','add', $this->data);	
	}
	
	function edit(){
		$this->rule->type('U');
		
		$this->wd_validation->run_validate_js($this->data['rules'],$this->data['rules_message'],'#dt_form','.validate-js-message');
		
		$this->load->library('urlcrypt');
		$id = $this->urlcrypt->decode($this->input->get('id'));
		
		$this->layout->set_include_group('form');
		$this->layout->set_include('inline',getview('form_js')); 

		$this->data['list'] = $this->wd_db->get_data_row($this->table_service,array('id'=>$id));
		
		$this->layout->theme('backend','edit', $this->data);	
	}
	
	// {ACTION} //
	function save_action(){
		$this->rule->type('C');

		if (isset($_FILES['file']['name']) && $_FILES['file']['name']!= '') {
			check_files('file','/add',$this->file_size,$this->allowed_types);
			$updata = file_upload($GLOBALS['folder_file'],'file',$GLOBALS['thumb_file'],'crop');
			if ($updata['error']==1) {
				$this->session->set_flashdata('danger_message', 'Error uploading file !!');
				redirect(admin_dir().this_module().'/add');
				exit();
			}
			$file = $updata['name'];
		}else{
			$file = '';
		}
					
		if($this->ci_validation()==FALSE)
			redirect(admin_dir().this_module().'/add');

		$data = array(
			'nama' => $this->input->post('nama'),
			'file' => $file,
			'deskripsi' => $this->input->post('deskripsi')
		);
		
		$this->wd_db->add_dml_get_id($this->table_service,$data);
		
		redirect(admin_dir().this_module().'/add');
	}
	
	function update_action(){
		$this->rule->type('U');		
		$id = $this->input->post('id');
		$id = $this->urlcrypt->decode($id);

		if($this->ci_validation()==FALSE)
			redirect(admin_dir().this_module().'/edit?id='.$this->input->post('id'));
		
		$old = $this->wd_db->get_data($this->table_service,array('id' => $id)) ;

		if (isset($_FILES['file']['name']) && $_FILES['file']['name']!= '') {
			check_files('file','/edit?id='.$this->input->post('id'),$this->file_size,$this->allowed_types);
			$updata = file_upload($GLOBALS['folder_file'],'file',$GLOBALS['thumb_file'],'crop');
			if ($updata['error']==1) {
				$this->session->set_flashdata('danger_message', 'Error uploading file !!');
				redirect(admin_dir().this_module().'/edit?id='.$this->input->post('id'));
				exit();
			}
			$file = $updata['name'];
			@unlink($GLOBALS['folder_file'].$old[0]['file']);
			@unlink($GLOBALS['folder_file'].'thumb/thumb_'.$old[0]['file']);	
		}else{
			$file = $old[0]['file'];
		}
			
		$data = array(
			'nama' => $this->input->post('nama'),
			'file' => $file,
			'deskripsi' => $this->input->post('deskripsi')
		);

		
		
		$where = array(
			'id' => $id
		);
		
		$this->wd_db->edit_dml($this->table_service,$data,$where);
			
		redirect(admin_dir().this_module().'/edit?id='.$this->input->post('id'));	
	}
	
	function delete_action(){
		
		if($this->input->get('confirm') == null){
			$this->confirm_delete($this->table_service,'id','nama');
			return;
		}
			
		$del_id = $this->session->flashdata('del_id');
		$this->rule->type('D');
		foreach ($del_id as $id) {
			$old = $this->wd_db->get_data($this->table_service,array('id' => $id)) ;
			@unlink($GLOBALS['folder_file'].$old[0]['file']);
			@unlink($GLOBALS['folder_file'].'thumb/thumb_'.$old[0]['file']);
		}
		$this->wd_db->del_dml_where_in($this->table_service,'id',$del_id);
		
		redirect(admin_dir().this_module());
	}
	
	// {EXTEND FUNCTION} //
	public function dataTable() {
		$this -> load -> library('Datatable', array('model' => 'm_datatables', 'rowIdCol' => 'service.id'));
		$jsonArray = $this -> datatable -> datatableJson(array());


		foreach ($jsonArray['data'] as $index => $json) {
			$data = $json['service']['file'];
			$size = FileSizeConvert("public/service_file/$data");
			$jsonArray['data'][$index]['service']['file']="<a title='$size' target='_blank' href='".base_url()."public/service_file/$data'>$data</a>";

			$jsonArray['data'][$index]['service']['deskripsi']=get_substr($jsonArray['data'][$index]['service']['deskripsi'],40);

		}

		$this -> output -> set_header('Pragma: no-cache');
        $this -> output -> set_header('Cache-Control: no-store, no-cache');
        $this -> output -> set_content_type('application/json') -> set_output(json_encode($jsonArray));
	}
}




/* End of file Service.php */
/* Location: ./application/modules/service/controllers/Service.php */
/* Please DO NOT modify this information : */
/* Generated by IndonesiaIT Codeigniter CRUD Generator 2019-03-11 11:44:36 */
/* indonesiait.com */