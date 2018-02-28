<?php
class Develope_statistics_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function get_dev_stats($id) {
		$this -> db -> select('*');
		$this -> db -> from('dev_statistics');
		$this -> db -> where('char_id', $id);
		$query = $this -> db -> get();
		$arr = array();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			foreach ($query -> result_array() as $row) {
				$arr = $row;
			}
			return $arr;
		} else {
			return "Błąd zapytania";
		}
	}
}