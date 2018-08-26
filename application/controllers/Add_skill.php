<?php
class Add_skill extends CI_Controller {
	public function __construct() {
		parent:: __construct();
		$this -> load -> helper('html');
		$this -> load -> helper('url');
		$this -> load -> helper('form');
		$this -> load -> model('universal_model');
		$this -> load -> model('char_skills_model');
		$this -> load -> model('p_player_model');
		$this -> load -> library('form_validation');
		$this -> load -> library('session');
	}
	
	public function add() {
		$player_id = $_SESSION['p_id'];
		$skills_id = $this -> char_skills_model -> get_skills('skillid');
		$skills_name = $this -> char_skills_model -> get_skills('skillName');
		$skills = array_combine($skills_id, $skills_name);
		$profession_id = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'profession_id');
		$profession_name = $this -> universal_model -> get_values('professions', array("id" => $profession_id), 'profession_name');
		$data['skills'] = $skills;
		$data['title'] = "Dodaj umiejętność";
		$data['profession_name'] = $profession_name;
		$data['player_id'] = $player_id;	
		$data['name'] = $this -> session -> user;
		$exp = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'exp');
		$data['amount'] = 0;
		if (floor($exp / 100) == 0) {
			redirect('login/view_form');
		} else {
			$data['amount'] = floor($exp / 100);
		}
		$this -> form_validation -> set_rules('exp', 'Exp', 'required', array('required' => "Pole '{field}' nie może być puste"));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('templates/header', $data);
			if ($this -> session -> has_userdata('userID')) {
				$this -> load -> view('form/success', $data);
			} else {
				$this -> load -> view('form/login');
			}
			$this -> load -> view('form/add_skills', $data);
			$this -> load -> view('templates/footer');
		} else {
			$diff_exp = $this -> input -> post('exp');
			$arr = $this -> verify_skills($player_id, $profession_id);
			$this -> char_skills_model -> multi_insert('char_skills', 'skill_id', $arr);
			$this -> universal_model -> update('characters', array('exp' => ($exp - $diff_exp)), array('id' => $player_id));
			redirect('add_choose/show_options');
		}
	}

	public function verify_skills($p_id, $prof_id, $id = '') {
		$arr = array(
			'id' => $id,
			'char_id' => $p_id,
			'skill_id' => $this -> input -> post('skill')
		);
		return $arr;
	}
	
	public function character_skills() {
		if (isset($_REQUEST['id']) === TRUE && $_REQUEST['id'] !== FALSE) {
			$skills = $this -> p_player_model -> get_skill('char_skills', 'char_id', $_REQUEST['id']);
			$character_skills = array();
			if (!empty($skills) && is_array($skills)) {
				foreach ($skills as $skill) {
					$character_skills[] = $skill['skill_id'];
				}
			}
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($character_skills));
		} else {
			echo "Błąd";
		}
	}
}