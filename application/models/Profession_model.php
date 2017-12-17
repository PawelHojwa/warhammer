<?php
class Profession_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function get_professions($tab_name, $column, $id) {
		$target = array();
		$this -> db -> where('class_id', $id);
		$query = $this -> db -> get($tab_name);
		if ($query -> num_rows() > 0) {
			foreach ($query -> result_array() as $row) {
				$target[] = $row[$column];
			}
		}
		return $target;
	}
	
	public function get_profession_statistics($id) {
		$arr = array();
		$this -> db -> select('*');
		$this -> db -> from('professions_statistics');
		$this -> db -> where(array('id' => $id));
		$query = $this -> db -> get();
		if ($query -> num_rows() > 0 && $query !== FALSE) {
			
			/*foreach($query -> result() as $row) {
				$arr[] = $row;
			}
			return $arr;*/
			return $query -> result();
		} else {
			return "Błąd zapytania";
		}
	}
}