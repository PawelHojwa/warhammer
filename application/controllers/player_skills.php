<?php
class Player_skills extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('form');
		$this -> load -> helper('url_helper');
		$this -> load -> library('form_validation');
		$this -> load -> model('universal_model');
		$this -> load -> model('char_skills_model');
		$this -> load -> model('p_player_model');
		$this -> load -> library('session');
		$this -> load -> helper('html');
		$this -> load -> library('char_skill');
	}

	public function verify_data($p_id, $prof_id, $arr, $id = "") {
		$skills = $this -> input -> post('skills');
		$character_skills = array();
		if (!empty($skills) && is_array($skills)) {
			$character_skills = array_merge($arr, $skills);
		} else {
			$character_skills = $arr;
		}
		$data = array('id' => $id, 'char_id' => $p_id, 'profId' => $prof_id, 'skill_id' => $character_skills);
		return $data;
	}
	
	public function race_skills($r_skills, $p_id, $id = "") {
		$arr = array(
			'id' => $id, 'char_id' => $p_id, 'profId' => 1, 'skill_id' => $r_skills
		);
		return $arr;
	}

	public function skill() {
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/login', $data);
			$this -> load -> view('templates/footer');
		} else {
			$r_skills = $this -> universal_model -> get_user('char_skills', array('char_id' => $_SESSION['p_id']));
			$prof_id = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'profession_id');
			$prof_name = $this -> universal_model -> get_values('professions', array('id' => $prof_id), 'profession_name');
			$race_skills = array();
			$this -> universal_model -> delete('char_skills', array('char_id' => $_SESSION['p_id']));
			if (!empty($r_skills) && is_array($r_skills)) {
				foreach ($r_skills as $skill) {
					$race_skills[] = $skill['skill_id'];
				}
				$r_s = $this -> race_skills($race_skills, $_SESSION['p_id']);
				$this -> char_skills_model -> multi_insert('char_skills', 'skill_id', $r_s);
			}
			$data = $this -> char_skill -> char_data($_SESSION['p_id']);
			if (!isset($_SESSION['amount'])) {
				$data['amount'] = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'amount');
			} else {
				$data['amount'] = $_SESSION['amount'];
			}
			$data['id'] = $_SESSION['p_id'];
			$skills = $this -> get_skill($prof_id);
			$prof_skills = array();
			foreach ($skills as $skill) {
				$prof_skills[] = $skill['skill_id'];
			}
			$data['profession'] = $prof_name;
			$data['profession_id'] = $prof_id;
			$char_id = $this -> universal_model -> get_values('char_skills', array('char_id' => $_SESSION['p_id']), 'char_id');
			$this -> form_validation -> set_rules('skills[]', 'Umiejętność', 'required', array('required' => "'{}' jest wymagana"));
			if ($this -> form_validation -> run() === false) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/skills', $data);
				$this -> load -> view('templates/footer');
			} else {
				if ($char_id == NULL) {
					$arr = $this -> verify_data($_SESSION['p_id'], $prof_id, $prof_skills);
					$this -> char_skills_model -> multi_insert('char_skills', 'skill_id', $arr);
					redirect('inventory/form_inventory');
				} else {
					$this -> universal_model -> delete('char_skills', array('char_id' => $_SESSION['p_id']));
					$arr = $this -> verify_data($_SESSION['p_id'], $prof_id, $prof_skills);
					$this -> char_skills_model -> multi_insert('char_skills', 'skill_id', $arr);
					redirect('inventory/form_inventory');
				}
			}
		}
	}
	
	public function get_skill($id) {
		return $this -> p_player_model -> get_skill('professions_skills', 'profession_id' ,$id);
	}
	
	public function get_race_skills($id) {
		return $this -> p_player_model -> get_skill('char_skills', 'char_id', $id);
	}

	public function get_prof() {
		if (isset($_POST['prof']) /*&& isset($_POST['id'])*/) {
			$arr = array();
			$p_skills = array();
			$prof_skills = $this -> get_skill($_POST['prof']);
			$race_skills = $this -> get_race_skills($_POST['id']);
			$skills = array();
			if (!empty($race_skills) && is_array($race_skills)) {
				foreach ($race_skills as $skill) {
					$skills[] = $skill['skill_id'];
				}
			}
			foreach ($prof_skills as $skill) {
				if ($skill['chance'] == 0) {
					$p_skills[] = $skill['skill_id'];
				}
				if ($skill['chance'] == 1) {
					if (mt_rand(1,100) <= 5) {
						$p_skills[] = $skill['skill_id'];
					}
				}
				if ($skill['chance'] == 2) {
					if (mt_rand(1,100) <= 10) {
						$p_skills[] = $skill['skill_id'];
					}
				}
				if ($skill['chance'] == 3) {
					if (mt_rand(1,100) <= 20) {
						$p_skills[] = $skill['skill_id'];
					}
				}
				if ($skill['chance'] == 4) {
					if (mt_rand(1,100) <= 25) {
						$p_skills[] = $skill['skill_id'];
					}
				}
				if ($skill['chance'] == 5) {
					if (mt_rand(1,100) <= 50) {
						$p_skills[] = $skill['skill_id'];
					}
				}
				if ($skill['chance'] == 6) {
					if (mt_rand(1,100) <= 75) {
						$p_skills[] = $skill['skill_id'];
					}
				}
			}
			$arr = array_merge($p_skills, $skills);
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($arr));
		} else
			echo "Błąd";
	}

}
