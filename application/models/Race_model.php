<?php
class Race_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function stats($tab_name, $src, $val = "", $col = "") {
		$this -> db -> select('*');
		$this -> db -> from($tab_name);
		$this -> db -> where(array($src => $val));
		$result = $this -> db -> get();
		if ($result -> num_rows() > 0) {
			foreach ($result->result_array() as $row) 
				if (is_array($col)) {
					$result = [];
					foreach ($col as $col_row) {
						$result[$col_row] = $row[$col_row];
					}
					return $result;
				} else {
					return $row[$col];
				}
		}
	}
	
	public function get_race_add_skills($r_id) {
		$this -> db -> select('*');
		$this -> db -> from('race_add_skill');
		$this -> db -> where('raceID', $r_id);
		$this -> db -> order_by('id');
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			$arr = array();
			foreach ($query -> result_array() as $row) {
				$arr[] = $row;
			}
			return $arr;
		} else {
			return "Błąd";
		}
	}
}