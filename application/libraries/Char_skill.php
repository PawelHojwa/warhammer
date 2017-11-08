<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Char_skill {
	
	public function char_data($id) {
		$CI = &get_instance();
		$CI -> load -> model('universal_model');
		$name = $CI -> universal_model -> get_values('characters', array('id' => $id), 'name');
		$class_id = $CI -> universal_model -> get_values('characters', array('id' => $id), 'classID');
		$race = $CI -> universal_model -> get_values('characters', array('id' => $id), 'raceID');
		$prof_id = $this -> prof_id($class_id);
		$prof_name = $this -> profession($class_id);
		$profession = array_combine($prof_id, $prof_name);
		$skill_id = $this -> skill_id('skillid');
		$skill_name = $this -> skill_id('skillName');
		$skills = array_combine($skill_id, $skill_name);
		$data['race'] = $race;
		$data['player_name'] = $name;
		$data['title'] = "Wybór umiejętności";
		$data['skills'] = $skills;
		$data['profession'] = $profession;	
		return $data;
	}
	
	public function skills($column) {
		$CI = &get_instance();
		$CI -> load -> model('universal_model');
		return $CI -> universal_model -> arr_conv('umiejetnosci', $column, 1);
	}

	public function skill_id($col) {
		$CI = &get_instance();
		$CI -> load -> model('char_skills_model');
		return $CI -> char_skills_model -> get_skills($col);
	}
	
	
	
	public function prof_id($id) {
		$CI = &get_instance();
		$CI -> load -> model('profession_model');
		return $CI -> profession_model -> get_professions('professions', 'id', $id);
	}
	
	public function profession($id) {
		$CI = &get_instance();
		$CI -> load -> model('profession_model');
		return $CI -> profession_model -> get_professions('professions', 'profession_name',$id);
	}
	
	public function check_age($r, $a, $s) {
		//if (is_array($r) && !empty($r)) {
			foreach ($r as $row) {
				if ($a >= $row['min_age'] && $a <= $row['max_age']) {
					if ($row['action'] == 1) {
						return $s += $row['add_skill'];
					} else if ($row['action'] == 2){
						return $s -= $row['add_skill'];
					} else {
						return $s;
					}
				} else {
					return $s;
				}
			}
		//} else {
	//	return $a;
		//}
	}
}
