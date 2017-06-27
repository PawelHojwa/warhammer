<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Char_skill {
	
	public function char_data($id) {
		$CI = &get_instance();
		$CI -> load -> model('form_model');
		$name = $CI -> form_model -> get_values('characters', array('id' => $id), 'name');
		$as = $CI -> form_model -> get_values('characters', array('id' => $id), 'nskill');
		$age = $CI -> form_model -> get_values('characters', array('id' => $id), 'age');
		$race = $CI -> form_model -> get_values('characters', array('id' => $id), 'raceID');
		$data['age'] = $age;
		$am_skill = $this -> check_age($race, $age, $as);
		$data['am_skill'] = $am_skill;
		$data['player_name'] = $name;
		$data['title'] = "Wybór umiejętności";
		$data['skills'] = $this -> skills('skillName');
		$data['skills_id'] = $this -> skills('skillid');
		$data['profession'] = $this -> profession();	
		return $data;
	}
	
	public function skills($column) {
		$CI = &get_instance();
		$CI -> load -> model('form_model');
		return $CI -> form_model -> arr_conv('umiejetnosci', $column, 1);
	}
	
	public function profession() {
		$CI = &get_instance();
		$CI -> load -> model('form_model');
		return $CI -> form_model -> arr_conv('profesje', 'professionName', 1);
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
