<?php
class Exit_profession_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function exit_professions($id = 1) {
		$this -> db -> select('*');
		$this -> db -> from('exit_professions');
		$this -> db -> join('professions', 'professions.id = exit_professions.exit_profession', 'left');
		$this -> db -> where('profession_id', $id);
		$query = $this -> db ->get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			$target = array();
			foreach ($query -> result_array() as $row) {
				$target[] = $row;
			}
			return $target;
		} else {
			return "Błąd zapytania!!";
		}
	}
}