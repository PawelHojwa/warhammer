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
	
	public function get_spells($value = array()) {
		$this -> db -> select('*');
		$this -> db -> from('spells');
		$this -> db -> from('casts_type');
		$this -> db -> where($value);
		$this -> db -> join('casts_names', 'casts_names.id = spells.spell_name_id AND spells.spell_type = casts_type.id');
		$this -> db -> order_by('spells.spell_lvl');
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
		$this -> db -> order_by('items_group_id ASC, item ASC');
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
	
	public function exit_profession_insert($arr) {
		foreach ($arr['exit_profession'] as $row) {
			$record = array(
				'id' => $arr['id'],
				'profession_id' => $arr['profession_id'],
				'exit_profession' => $row
			);
			$this -> db -> insert('exit_professions', $record);
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
	
	public function search_data($tab_name, $col_name, $data) {
		$msg = "";
		$this -> db -> select($col_name);
		$this -> db -> from($tab_name);
		$this -> db -> like($col_name, $data);
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> result();
		} else {
			$msg = "Błąd zapytania";
			return $msg;
		}
	}
	
	public function get_monster($category_id) {
		$this -> db -> select('*');
		$this -> db -> from('monsters');
		$this -> db -> where('categoryID', $category_id);
		$this -> db -> order_by('monsterName');
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> result();
		} else {
			return "Błąd zapytania!";
		}
	}
	
	public function armour_multi_insert($arr) {
		foreach($arr['placement'] as $row) {
			$record = array(
				'id' => $arr['id'],
				'armour_id' => $arr['armour_id'],
				'pp' => $arr['pp'],
				'placement' => $row
			);
			$this -> db -> insert('armour', $record);
		}
	}
	
	public function add_race_skill_insert($arr) {
		$record = array(
			array(
				'id' => $arr['id'],
				'raceID' => $arr['raceID'],
				'min_age' => $arr['min_age'][0],
				'max_age' => $arr['max_age'][0],
				'add_skill' => $arr['add_skill'][0],
				'action' => $arr['action'][0]
			),
			array(
				'id' => $arr['id'],
				'raceID' => $arr['raceID'],
				'min_age' => $arr['min_age'][1],
				'max_age' => $arr['max_age'][1],
				'add_skill' => $arr['add_skill'][1],
				'action' => $arr['action'][1]
			),
			array(
				'id' => $arr['id'],
				'raceID' => $arr['raceID'],
				'min_age' => $arr['min_age'][2],
				'max_age' => $arr['max_age'][2],
				'add_skill' => $arr['add_skill'][2],
				'action' => $arr['action'][2]
			),
			array(
				'id' => $arr['id'],
				'raceID' => $arr['raceID'],
				'min_age' => $arr['min_age'][3],
				'max_age' => $arr['max_age'][3],
				'add_skill' => $arr['add_skill'][3],
				'action' => $arr['action'][3]
			),
			array(
				'id' => $arr['id'],
				'raceID' => $arr['raceID'],
				'min_age' => $arr['min_age'][4],
				'max_age' => $arr['max_age'][4],
				'add_skill' => $arr['add_skill'][4],
				'action' => $arr['action'][4]
			),
		);
		$this -> db -> insert_batch('race_add_skill', $record);
	}
	
	/*public function multi_update($arr, $value) {
		foreach($arr[$value] as $row) {
			
		}
	}*/
}