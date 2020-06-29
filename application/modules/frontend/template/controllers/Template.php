<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Template extends MY_frontend
{

	public $data;
	public $template;

	public function __construct()
	{
		parent::__construct();
		$this->load->model('template_m');
		$this->load->library('urlcrypt');	
		$this->load->database();
		$this->load->helper('dateid');

	}


	public function index($data = NULL){
		//$data['pagemenu_top'] = $this->display_children();
		//debug($data['pagemenu_top']);
		$data['link']             =  $this->wd_db->get_data('link',array('status' => 1));
		$data['link_sosmed']             =  $this->wd_db->get_data('link_sosmed');
		$wd_options = $this->wd_db->get_data('wd_options');
		$use = array('logo','telepon','email','alamat','logo','about_us','about_us_img');
		foreach ($wd_options as $val) if (in_array($val['name'], $use)) 
			$data['set'][$val['name']] = $val['value'];
		$this->load->view('index', $data);
	}
	

	function get_options($name){
		$data = $this->wd_db->get_row('wd_options',array('name'=> $name));
		return (isset($data['value'])) ? $data['value'] : NULL;

	}

	function display_children() {
		$result= $this->db->query("SELECT * FROM page_menu WHERE status=1 ORDER BY parent, position, name")->result_array();
		$menu = array(
			'items' => array(),
			'parents' => array()
			);
		foreach ($result as $items)	{
			$menu['items'][$items['id']] = $items;
			$menu['parents'][$items['parent']][] = $items['id'];
		}

		return $this->buildMenu(0, $menu);
	}


	function buildMenu($parent, $menu)	{
		$html = "";
		if (isset($menu['parents'][$parent]))	{
			
			foreach ($menu['parents'][$parent] as $itemId) {	
				$A_URL = $menu['items'][$itemId]['href'] ;
				
				if(!empty($A_URL)){
					if ($menu['items'][$itemId]['base_url']==1) {
						$A_URL = base_url().$A_URL;
					}else{
						$A_URL = (preg_match('/#/',$A_URL)) ? $A_URL : $A_URL."' target='_blank";
					}
				}else{
					$A_URL = base_url().'menu/id/'.$this->urlcrypt->encode($menu['items'][$itemId]['id']).'/'.url_title($menu['items'][$itemId]['name'], '-', TRUE);
				}

				if(!isset($menu['parents'][$itemId])) {
					$home = (strtolower($menu['items'][$itemId]['name'])=='home')? 'active' : '';
					$html.= "<li class='nav-item'>\n  <a class='nav-link js-scroll-trigger' href='".$A_URL."'>".$menu['items'][$itemId]['name']."</a>\n</li> \n";
				}

				if(isset($menu['parents'][$itemId])){					

					// $html .= "<li class='nav-tree'>\n  <a class='dropdown-toggle' data-toggle='dropdown' href='".$A_URL."'>".$menu['items'][$itemId]['name']."<span class='glyphicon glyphicon-play' style='font-size: 9px;top: 0px;left: 2px'></span></a> \n";
					$html .= "<li class='nav-item'>\n <a class='nav-link js-scroll-trigger' href='".$A_URL."'>".$menu['items'][$itemId]['name']."</a> \n";
					//$html .= "<ul class='dropdown-menu' >" ;
					$html .= $this->buildMenu($itemId, $menu);							
					//$html .= "</ul>";
					$html .= "</li> \n";
				}
			}

		}

		return $html;

	}

	
}