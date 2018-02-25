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
			$arr = array();
			foreach ($query -> result_array() as $row) {
				$arr['sz'] = $row['sz'];
				$arr['ww'] = $row['ww'];
				$arr['us'] = $row['us'];
				$arr['s'] = $row['s'];
				$arr['wt'] = $row['wt'];
				$arr['zw'] = $row['zw'];
				$arr['ini'] = $row['ini'];
				$arr['a'] = $row['a'];
				$arr['zr'] = $row['zr'];
				$arr['cp'] = $row['cp'];
				$arr['intel'] = $row['intel'];
				$arr['op'] = $row['op'];
				$arr['sw'] = $row['sw'];
				$arr['ogd'] = $row['ogd'];
			}
			return $arr;
		} else {
			return "Błąd zapytania";
		}
	}
	
	public function get_career($id) {
		$this -> db -> select('*');
		$this -> db -> from('career');
		$this -> db -> join('professions', 'professions.id = career.profession_id');
		$this -> db -> where('career.char_id', $id);
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> result();
		} else {
			return "Błąd zapytania";
		}
	}
}