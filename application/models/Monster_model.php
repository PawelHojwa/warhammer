<?php
class Monster_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function monsters($id) {
		$this -> db -> select('*');
		$this -> db -> from('monsters');
		$this -> db -> join('kategoria_potwora', 'kategoria_potwora.categoryId = monsters.categoryID');
		$this -> db -> where('monsters.categoryID', $id);
		$query = $this -> db -> get();
		if ($query -> num_rows() > 0 && $query !== FALSE) {
			return $query -> result_array();
		} else {
			return "Błąda zapytania";
		}
	}
	
	public function search($name) {
		$this -> db -> select('*');
		$this -> db -> from('monsters');
		$this -> db -> like('monsterName', $name);
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> result_array();
		} else {
			return "Błąd zapytania";
		}
	}
}