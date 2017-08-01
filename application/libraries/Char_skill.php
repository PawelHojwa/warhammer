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
		if ($r == 1) {
			if (($a >= 21 && $a <= 30) || ($a >= 41 && $a <= 50))
				return $s += 1;
			else if ($a >= 31 && $a <= 41)
				return $s += 2;
			else if ($a >= 61 && $a <= 70)
				return $s -= 1;
			else if ($a >= 71 && $a <= 80)
				return $s -= 2;
			else
				return $s;
		} else if ($r == 2) {
			if (($a >= 41 && $a <= 90) || ($a >= 201 && $a <= 210))
				return $s += 1;
			else if (($a >= 91 && $a <= 140) || ($a >= 191 && $a <= 200))
				return $s += 2;
			else if ($a >= 141 && $a <= 190)
				return $s += 3;
			else
				return $s;
		} else if ($r == 3) {
			if ($a >= 31 && $a <= 70)
				return $s += 1;
			else if ($a >= 101 && $a <= 120)
				return $s -= 1;
			else if ($a >= 121 && $a <= 140)
				return $s -= 2;
			else
				return $s;
		} else {
			if (($a >= 41 && $a <= 70) || ($a >= 101 && $a <= 130))
				return $s += 1;
			else if ($a >= 71 && $a <= 100)
				return $s += 2;
			else if ($a >= 171 && $a <= 190)
				return $s -= 1;
			else if ($a >= 191 && $a <= 200)
				return $s -= 2;
			else
				return $s;
		}
	}
}
