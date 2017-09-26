<?php
class Admin_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function get_names() {
		$this -> db -> select('users.userID, users.login, characters.userID, characters.id, characters.name');
		$this -> db -> from('characters');
		$this -> db -> join('users', 'users.userID = characters.userID');
		$query = $this -> db -> get();
		if ($query -> num_rows() > 0) {
			return $query -> result();
		} else {
			return "Błąd zapytania";
		}
	}
	
	public function get_skills() {
		$this -> db -> select('*');
		$this -> db -> from('umiejetnosci');
		$this -> db -> order_by('skillName');
		$query = $this -> db -> get();
		if ($query -> num_rows() > 0) {
			return $query -> result();
		} else {
			return "Błąd zapytania";
		}
	}
	
	public function get_spell_id() {
		$this -> db -> select('id');
		$this -> db -> from('casts_names');
		$query = $this -> db -> get();
		if ($query -> num_rows() > 0) {
			return $query -> last_row();
		} else {
			return "Błąd zapytania";
		}
	}
	
	public function get_spells() {
		$this -> db -> select('*');
		$this -> db -> from('spells');
		$this -> db -> from('casts_type');
		$this -> db -> join('casts_names', 'casts_names.id = spells.spell_name_id AND spells.spell_type = casts_type.id');
		$query = $this -> db -> get();
		if ($query -> num_rows() > 0) {
			return $query -> result();
		} else {
			return "Błąd zapytania!";
		}
	}
}