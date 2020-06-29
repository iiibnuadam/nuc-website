<?php

class Homepage extends MY_frontend{

	function __construct()	{
		parent::__construct();
	}

	public function index(){
		$data['blog']             =  $this->wd_db->get_data('blog',array(),5);
		$data['content_view'] = 'homepage/index';
		$this->template->index($data);
		//$this->load->view('homepage/launch');
	}


}
