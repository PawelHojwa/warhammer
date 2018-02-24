<?php
class Char_skills_model extends CI_Model {
	public function __contruct() {
		$this -> load -> database();
	}
	
	public function multi_insert($tab_name, $column ,$arr) {
		foreach ($arr[$column] as $skill) {
			$record = array('id' => $arr['id'], 'char_id' => $arr['char_id'], 'skill_id' => $skill);
			$this -> db -> insert($tab_name, $record);
		}
	}
	
	public function get_skills($col) {
		$this -> db -> select('*');
		$this -> db -> from('umiejetnosci');
		$this -> db -> order_by('skillName');
		$query = $this -> db -> get();
		$target = array();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			foreach ($query -> result() as $row){
				$target[] = $row -> $col;
			}
			return $target;
		} else {
			return "Błąd zapytania!!";
		}
		
	}
	
	public function get_character_skills($id = 1) {
		$this -> db -> select('*');
		$this -> db -> from('umiejetnosci');
		//$this -> db -> from('professions');
		//$this -> db -> from('professions_statistics');
		$this -> db -> join('char_skills', 'umiejetnosci.skillid = char_skills.skill_id' /*AND professions.id = professions_statistics.id'*/, 'right');
		$this -> db -> order_by('skillName', 'ASC');
		$this -> db -> where(['char_id' => $id]);
		
		$query = $this -> db -> get();
		$arr = array();
		foreach ($query->result_array() as $key => $value) {
			$arr['skillid'][$key] = $value['skillName'];
			/*$arr['sz'] = $value['sz'];
			$arr['ww'] = $value['ww'];
			$arr['us'] = $value['us'];
			$arr['s'] = $value['s'];
			$arr['wt'] = $value['wt'];
			$arr['zw'] = $value['zw'];
			$arr['i'] = $value['ini'];
			$arr['a'] = $value['a'];
			$arr['zr'] = $value['zr'];
			$arr['cp'] = $value['cp'];
			$arr['int'] = $value['intel'];
			$arr['op'] = $value['op'];
			$arr['sw'] = $value['sw'];
			$arr['ogd'] = $value['ogd'];*/
		}
		return $arr;
	}

	public function race_skills($race_id) {
		$this -> db -> select('*');
		$this -> db -> from('race_skills');
		$this -> db -> join('umiejetnosci', 'umiejetnosci.skillid = race_skills.skill_id');
		$this -> db -> where('race_id', $race_id);
		$query = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			$target = array();
			foreach ($query -> result() as $row) {
				$target[] = $row;
			}
			return $target;
		} else {
			return "Błąd zapytania!!";
		}
	}
}