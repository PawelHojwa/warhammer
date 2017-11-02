<?php

class Race_age_model extends CI_Model {
	public function __cunstruct() {
		$this -> load -> database();
	}
	
	public function race_age($id) {
		$err = "";
		$this -> db -> select('*');
		$this -> db -> from('race_age');
		$this -> db -> where('raceID', $id);
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			foreach ($query -> result() as $row) {
				return $row;
			}
		} else {
			$err = "Błąd!";
			return $err;
		}
	}
}
