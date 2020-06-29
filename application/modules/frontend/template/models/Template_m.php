<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

Class Template_m extends MY_frontend{

	function select_from($table,$order='id',$sort="asc",$limit=""){
		$this->db->select('*');
		$this->db->from($table);
		$this->db->order_by($order, $sort);
		$this->db->limit($limit);

		return $query = $this->db->get()->result_array();
	}
	function get_limit($table,$limit,$by,$order) {
		if(isset($by)){
			$query = $this->db->order_by($by,$order);
		}
       	$query = $this->db->get($table,$limit);
        return $query -> result_array();
    }
	function get_pagemenu_parent($id)
	{		

		$this->db->select('*');
		$this->db->from('page_menu');
		$this->db->where('parent',$id);
		$this->db->order_by('position');

		return $query = $this->db->get()->result_array();
	}
	function query($query){
		return  $this->db->query($query)->result_array();

	}

}