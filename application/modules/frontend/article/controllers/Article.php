<?php

class Article extends MY_frontend{

	function __construct()	{
		parent::__construct();
	}

	public function index() {
        $this->load->library('pagination');
        $jumlah_data = $this->wd_db->get_count('blog');
        $config['base_url'] = base_url().'/article/index/';
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = 2;
        $from = $this->uri->segment(3);
        $this->pagination->initialize($config);
        $data['blog'] = $this->wd_db->get_data('blog',array(),$config['per_page'],$from);
        $data['populer'] = $this->wd_db->get_data('blog',array(),4);
        $data['content_view'] = 'article/index';
        $this->template->index($data);
    }
	public function details($id){
        $data['blog']             =  $this->wd_db->get_data_row('blog',array('id' => $id));
        $data['related']             =  $this->wd_db->get_data('blog',array(),5);
        $data['content_view'] = 'article/launch';
        $this->template->index($data);
	}


}
