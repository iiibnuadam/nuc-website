<?php defined('BASEPATH') OR exit('No direct script access allowed');

class M_index extends CI_Model
{
    public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}
	
	function get_top()
	{		
		$strQuery = "select max(slider_priority) as max from blog";
		$result = $this->db->query($strQuery)->result_array();
		if(count($result)>0){
			 $result = $result[0]['max'];
		}
		else
		{
			 $result = 0;
		}
		return $result;
	}
	
	function clear_last_slider_priority($slider_number)
	{		
		$strQuery = "select id,slider_priority from blog order by slider_priority desc limit ".$slider_number;
		$result = $this->db->query($strQuery)->result_array();
		
		$ids = null;
		foreach($result as $result_row){
			$ids[] = $result_row["id"];
		}
		
		$data = array("slider_priority"=>"0");
		
		$this->db->where_not_in('id', $ids);
		$this->db->update("blog", $data);
		return true;
	}
}





/* End of file M_index.php */
/* Location: ./application/modules/blog/models/M_index.php */
/* Please DO NOT modify this information : */
/* Generated by WD Codeigniter CRUD Generator 2016-08-13 10:10:58 */
/* indonesiait.com */