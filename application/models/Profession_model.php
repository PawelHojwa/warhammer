<?php
class Profession_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function get_professions($tab_name, $column, $id, $i = 0) {
		$target = array();
		$this -> db -> where('classID', $id);
		$query = $this -> db -> get($tab_name);
		if ($query -> num_rows() > 0) {
			foreach ($query -> result_array() as $row) {
				$target[$i] = $row[$column];
				$i++;
			}
		}
		return $target;
	}
}