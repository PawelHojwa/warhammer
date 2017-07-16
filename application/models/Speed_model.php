<?php
class Speed_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}

	public function get_speed($number = 1) {
		$this -> db -> select('*');
		$this -> db -> from('speed');
		$this -> db -> where('speed', $number);
		$query = $this -> db -> get();
		$arr = array();
		if ($query -> num_rows() > 0) {
			foreach ($query -> result_array() as $rows) {
				$arr[] = $rows;
			}
			return $arr;
		} else {
			return "Błąd zapytania";
		}

	}

}
