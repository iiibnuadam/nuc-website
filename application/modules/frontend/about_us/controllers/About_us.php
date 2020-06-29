<?php

class About_us extends MY_frontend
{
	
	public function profil(){
		$wd_options = $this->wd_db->get_data('wd_options');
		$use = array('about_us','about_us_img');
		foreach ($wd_options as $val) if (in_array($val['name'], $use)) $data['set'][$val['name']] = $val['value'];
		$data['content_view'] = 'about_us/about_us_d_v';
		$this->template->index($data);
	}

	public function visi(){
		$wd_options = $this->wd_db->get_data('wd_options');
		$use = array('visi','about_us_img');
		foreach ($wd_options as $val) if (in_array($val['name'], $use)) $data['set'][$val['name']] = $val['value'];
		$data['content_view'] = 'about_us/visi';
		$this->template->index($data);
	}

	public function organization(){
		$wd_options = $this->wd_db->get_data('wd_options');
		$use = array('organization','about_us_img');
		foreach ($wd_options as $val) if (in_array($val['name'], $use)) $data['set'][$val['name']] = $val['value'];
		$data['content_view'] = 'about_us/organization';
		$this->template->index($data);
	}

	public function translation(){
		$wd_options = $this->wd_db->get_data('wd_options');
		$use = array('translation','about_us_img');
		foreach ($wd_options as $val) if (in_array($val['name'], $use)) $data['set'][$val['name']] = $val['value'];
		$data['content_view'] = 'about_us/translation';
		$this->template->index($data);
	}

}