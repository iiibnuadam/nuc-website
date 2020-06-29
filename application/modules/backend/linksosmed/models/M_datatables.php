<?php defined('BASEPATH') OR exit('No direct script access allowed');

class M_datatables extends CI_Model implements DatatableModel{
    	
		/**
		 * @ return
		 * 		Expressions / Columns to append to the select created by the Datatable library
		 */
		public function appendToSelectStr() {
			//_protect_identifiers needs to be FALSE in the database.php when using custom expresions to avoid db errors.
			//CI is putting `` around the expression instead of just the column names
				return NULL;
		}
    	
		public function fromTableStr() {
			return 'link_sosmed link_sosmed';
		}
    
	    /**
	     * @return
	     *     Associative array of joins.  Return NULL or empty array  when not joining
	     */
	    public function joinArray(){
			return NULL;
	    }
	    
     /**
     * 
     *@return
     *  Static where clause to be appended to all search queries.  Return NULL or empty array
     * when not filtering by additional criteria
     */
    	public function whereClauseArray(){
    		return NULL;
    	}
   }





/* End of file M_datatables.php */
/* Location: ./application/modules/LinkSosmed/models/M_datatables.php */
/* Please DO NOT modify this information : */
/* Generated by WD Codeigniter CRUD Generator 2016-10-26 08:36:59 */
/* indonesiait.com */