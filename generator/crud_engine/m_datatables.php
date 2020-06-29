<?php

$file_name = "M_datatables.php";
$class = "M_datatables";

$module_name =  $_POST['module'];

$module_name_no_space = preg_replace('/\s+/', '', $module_name);
$primary_table = strtolower($_POST['primary_table']);

$moduleDir = $this->moduleDir;

$component =  $_POST['component'];

$fields = $_POST['field'];
$primary_field = $fields[0];
// $primary_field = strtolower($fields[0]);
$primary_field = preg_replace('/\s+/', '', $primary_field);

$join_table = $_POST['join_table'];
$join_id = $_POST['join_id'];
$join_select = $_POST['join_select'];


$string = "<?php defined('BASEPATH') OR exit('No direct script access allowed');

class ".$class." extends CI_Model implements DatatableModel{
    	
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
			return '".$primary_table." ".$primary_table."';
		}
    
	    /**
	     * @return
	     *     Associative array of joins.  Return NULL or empty array  when not joining
	     */
	    public function joinArray(){";

$string_array = "NULL";
$index = 0;
$count_component = count($component)-1;
foreach($component as $component_row){
	if($component_row=="selectjoin"){
		if($string_array=="NULL"){
			$string_array = "\n\t\t\t\tarray(";
		}
		
		$foreignkey = strtolower($fields[$index]);
		$foreignkey = preg_replace('/\s+/', '', $foreignkey);
		
		$join_table_val = strtolower($join_table[$index]);
		$join_table_val = preg_replace('/\s+/', '', $join_table_val);
		
		$join_id_val = strtolower($join_id[$index]);
		$join_id_val = preg_replace('/\s+/', '', $join_id_val);
		
		 
		$string_array .= "\n\t\t\t\t\t'".$join_table_val." ".$join_table_val."' => '".$join_table_val.".".$join_id_val." = ".$primary_table.".".$foreignkey."',";
	
	}
	
	if($index==$count_component){
		if($string_array!="NULL"){
			$string_array .= ")";
		}
	}
	
	$index++;
}

$string_array = str_replace(",)",")",$string_array);

$string .= "\n\t\t\treturn ".$string_array.";\n";

$string .= "	    }
	    
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

";

$string .= "\n\n\n\n/* End of file $file_name */
/* Location: ./application/modules/$module_name_no_space/models/$file_name */
/* Please DO NOT modify this information : */
/* Generated by IndonesiaIT Codeigniter CRUD Generator ".date('Y-m-d H:i:s')." */
/* indonesiait.com */";


$this->createDir($moduleDir."/models/");
$result = $this->createFile($string, $moduleDir."/models/" . $file_name);

?>