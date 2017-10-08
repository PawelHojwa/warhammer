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
	
	public function get_professions($value) {
		$this -> db -> select('*');
		$this -> db -> from('professions');
		$this -> db -> join('professions_statistics', 'professions.id = professions_statistics.id');
		$this -> db -> where('professions.advancement', $value);
		$query = $this -> db -> get();
		if ($query -> num_rows() > 0) {
			return $query -> result();
		} else {
			return "Błąd zapytania";
		}
	}
	
	public function get_items() {
		$this -> db -> select('*');
		$this -> db -> from('items');
		$this -> db -> order_by('items_group_id');
		$query = $this -> db -> get();
		if ($query !== false && $query -> num_rows() > 0) {
			return $query -> result();
		} else {
			return "Błąd zapytania";
		}
	}
	
	public function get_classes($col = "") {
		$target = array();
		$this -> db -> select('*');
		$this -> db -> from('classes');
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			foreach($query -> result() as $row) {
				$target[] = $row -> $col;
			}
			return $target;
		} else {
			return "Błąd zapytania!!";
		}
	}

	public function get_profession_id() {
		$this -> db -> select('id');
		$this -> db -> from('professions');
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> last_row();
		} else {
			return "Błąd zapytania";
		}
	}
	
	public function profession_skill_insert($arr) {
		foreach ($arr['skill_id'] as $skill) {
			$record = array(
				'id' => $arr['id'],
				'profession_id' => $arr['profession_id'],
				'skill_id' => $skill,
				'chance' => $arr['chance']
			);
			$this -> db -> insert('professions_skills', $record);
		}
	}
	
	public function profession_items_insert($arr) {
		foreach ($arr['inventory_id'] as $item) {
			$record = array(
				'id' => $arr['id'],
				'profession_id' => $arr['profession_id'],
				'inventory_id' => $item,
				'quality' => $arr['quality'],
				'options' => $arr['options'] 
			);
			$this -> db -> insert('professions_inventory', $record);
		}
	}
	
	public function get_race() {
		$this -> db -> select('*');
		$this -> db -> from('rasa');
		$this -> db -> order_by('raceName');
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> result();
		} else {
			return 'Błąd zapytania!!';
		}
	}
	
	public function race_skill_insert($arr) {
		foreach($arr['skill_id'] as $skill) {
			$record = array(
				'id' => $arr['id'],
				'race_id' => $arr['race_id'],
				'skill_id' => $skill,
				'options' => $arr['options']
			);
			$this -> db -> insert('race_skills', $record);
		}
	}
	
	public function get_race_id() {
		$this -> db -> select('raceID');
		$this -> db -> from('rasa');
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> last_row();
		} else {
			return "Błąd zapytania";
		}
	}

	public function get_classess() {
		$this -> db -> select('*');
		$this -> db -> from('classes');
		$this -> db -> order_by('className');
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> result();
		} else {
			return "Błąd zapytania!!";
		}
	}
	
	public function get_class_id() {
		$this -> db -> select('classID');
		$this -> db -> from('classes');
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> last_row();
		} else {
			return "Błąd zapytania!!";
		}
	}
	
	public function class_items_multi_insert($arr) {
		foreach ($arr['inventory_id'] as $item) {
			$record = array(
				'id' => $arr['id'],
				'inventory_id' => $item,
				'classID' => $arr['classID'],
				'amount' => $arr['amount'],
				'options' => $arr['options']
			);
			$this -> db -> insert('basic_inv', $record);
		}
	}
}