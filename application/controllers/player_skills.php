<?php
class Player_skills extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> model('form_model');
		$this -> load -> helper('form');
		$this -> load -> helper('url_helper');
		$this -> load -> library('form_validation');
		$this -> load -> library('session');
		$this -> load -> helper('html');
	}

	public function get_char_name($tab_name, $col) {
		return $this -> form_model -> last_index($tab_name, $col);
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

	public function verify_data($id = "") {
		$skill_1 = $this -> input -> post('skills');
		$skill_2 = $this -> input -> post('s');
		$skills = array_merge($skill_1, $skill_2);
		$data = array(
			'id' => $id, 
			'char_id' => $this -> get_char_name('characters', 'id'), 
			'profId' => $this -> input -> post('prof'), 
			'skillid' => $skills
			);
		return $data;
	}

	public function profession() {
		return $this -> form_model -> arr_conv('profesje', 'professionName', 1);
	}

	public function skills($column) {
		return $this -> form_model -> arr_conv('umiejetnosci', $column, 1);
	}

	public function skill() {
		/*if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/login', $data);
			$this -> load -> view('templates/footer');
		} else {*/
			$name = $this -> get_char_name('characters', 'name');
			$as = $this -> form_model -> get_values('characters', array('name' <= $name), 'nskill');
			$age = $this -> form_model -> get_values('characters', array('name' <= $name), 'age');
			$race = $this -> form_model -> get_values('characters', array('name' <= $name), 'raceID');
			$data['age'] = $age;
			$am_skill = $this -> check_age($race, $age, $as);
			$data['am_skill'] = $am_skill;
			$data['player_name'] = $name;
			$data['title'] = "Wybór umiejętności";
			$data['skills'] = $this -> skills('skillName');
			$data['skills_id'] = $this -> skills('skillid');
			$data['profession'] = $this -> profession();
			$prof_id = $this -> get_char_name('characters', 'id');

			$this -> form_validation -> set_rules('prof', 'Profesja', 'required', array('required' => "'{field}' jest wymagane"));
			if ($this -> form_validation -> run() === false) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/skills', $data);
				$this -> load -> view('templates/footer');
			} else {
				$arr = $this -> verify_data();
				//$this -> form_model -> multi_insert('char_skills', $arr);
				$data_arr = $this->form_model->get_basic_info();
				$data_skills = $this->form_model->get_character_skills();
				echo "<pre>";
				var_dump($data_skills);
				echo "</pre>";
				$data['title'] = "Karta postaci";
				$data['name'] = $data_arr['name'];
				$data['age'] = $data_arr['age'];
				$data['sk'] = array();
				foreach ($data_skills['skillid'] as $value)
					$data['sk'][]= $value;
 				$data['prof'] = $data_skills['profId'];
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/success', $data);
				$this -> load -> view('templates/footer');
			}
		}
	//}

	public function get_skill($id) {
		return $this -> form_model -> get_skill($id);
	}

	public function get_prof() {
		if (isset($_POST['prof'])) {
			$arr = array();
			$skills = $this -> get_skill($_POST['prof']);
			foreach ($skills as $skill) {
				$arr[] = $skill['skillid'];
			}
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($arr));
		} else
			echo "Błąd";
	}

}
