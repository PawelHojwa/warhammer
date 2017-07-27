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
}