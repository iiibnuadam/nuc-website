<?php

class Gallery extends MY_frontend
{
	
	public function index(){
		$jumlah_data = $this->wd_db->get_count_filter_gallery();
        $this->load->library('pagination');
        $config['base_url'] = base_url('gallery/index/');
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = 12;
        $from = $this->uri->segment(3);

        $this->pagination->initialize($config);
		$data['gallery']             =  $this->wd_db->get_data('gallery',array(''),$config['per_page'],$from);
		$data['content_view'] = 'gallery/gallery';
		$this->template->index($data);
	}

}