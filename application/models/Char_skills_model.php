<?php
class Char_skills_model extends CI_Model {
	public function __contruct() {
		$this -> load -> database();
	}
	
	public function multi_insert($tab_name, $column ,$arr) {
		foreach ($arr[$column] as $skill) {
			$record = array('id' => $arr['id'], 'char_id' => $arr['char_id'], 'profId' => $arr['profId'], 'skillid' => $skill);
			$this -> db -> insert($tab_name, $record);
		}
	}
	
	public function get_character_skills($id = 1) {
		$this -> db -> select('*');
		$this -> db -> from('umiejetnosci');
		$this -> db -> from('professions');
		$this -> db -> from('professions_statistics');
		$this -> db -> join('char_skills', 'umiejetnosci.skillid = char_skills.skillid AND professions.id = char_skills.profId AND professions.id = professions_statistics.id', 'right');
		$this -> db -> where(['char_id' => $id]);
		$query = $this -> db -> get();
		$arr = array();
		foreach ($query->result_array() as $key => $value) {
			$arr['profName'] = $value['profession_name'];
			$arr['skillid'][$key] = $value['skillName'];
			$arr['sz'] = $value['sz'];
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
			$arr['ogd'] = $value['ogd'];
		}
		return $arr;
	}
}