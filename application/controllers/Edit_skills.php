<?php
class Edit_skills extends CI_Controller {
	public function __construct() {
		parent:: __construct();
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> helper('form');
		$this -> load -> model('universal_model');
		$this -> load -> library('session');
		$this -> load -> library('form_validation');
		$this -> load -> model('p_player_model');
		$this -> load -> model('char_skills_model');
		$this -> load -> model('spell_model');
	}
	
	public function edit() {
		if (!isset($_SESSION['user'])) {
			redirect('Login/view_form');
		} else {
			$player_id = $_SESSION['p_id'];
			$data = $this -> char_skills_model -> get_character_skills($player_id);
			$spells = $this -> spell_model -> spells();
			$char_spell = $this -> spell_model -> get_spells($player_id);
			$skill_id = $this -> char_skills_model -> get_skills('skillid');
			$skill_name = $this -> char_skills_model -> get_skills('skillName');
			$skills = array_combine($skill_id, $skill_name);
			$data['prof_id'] = $this -> universal_model -> get_values('char_skills', array('char_id' => $player_id), 'profId');
			$data['char_id'] = $player_id;
			$data['skills'] = $skills;
			$data['spells'] = $spells;
			if (!empty($char_spells)) {
				$data['spell'] = $char_spells;
			}
			$data['amount'] = 0;
			$data['exp'] = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'exp');
			$data['title'] = 'Dodawanie umiejętności';
			if (floor($data['exp'] / 100) < 1) {
				redirect('Login/logout');
			} else {
				$data['amount'] = floor($data['exp'] / 100);
			}
			$this -> form_validation -> set_rules('exp', 'Exp', 'required', array('required' => "Pole '{field}' nie może być puste"));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/add_skills_and_spells', $data);
				$this -> load -> view('templates/footer');
			} else {
				$v_skills = $this -> verify_skill($player_id, $data['prof_id']);
				$v_spells = $this -> verify_spell($player_id);
				$exp = $this -> input -> post('exp');
				$deff_exp = $data['exp'] - $exp;
				if (!empty($v_skills['skill_id']) && is_array($v_skills)) {
					$this -> char_skills_model -> multi_insert('char_skills', 'skill_id', $v_skills);
				}
				if (!empty($v_spells['spell']) && is_array($v_spells)) {
					$this -> spell_model -> multi_insert('char_spells', $v_spells);
				}
				$this -> universal_model -> change('characters', array('exp' => $deff_exp), array('id' => $player_id));
				redirect('login/logout');
			}
		}
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

	public function character_spells() {
		if (isset($_REQUEST['id']) === TRUE && $_REQUEST['id'] !== FALSE) {
			$spells = $this -> spell_model -> get_spells($_REQUEST['id']);
			$character_spells = array();
			if (!empty($spells) && is_array($spells)) {
				foreach ($spells as $spell) {
					$character_spells[] = $spell['id'];
				}
			}
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($character_spells));
		} else {
			echo "Błąd";
		}
	} 
	
	public function verify_skill($char_id, $prof_id, $id = "") {
		$arr = array(
			'id' => $id,
			'char_id' => $char_id,
			'profId' => $prof_id,
			'skill_id' => $this -> input -> post('skills')
		);
		return $arr;
	}
	
	public function verify_spell($char_id, $id = "") {
		$spells = $this -> input -> post('spell');
		$arr = array(
			'id' => $id,
			'char_id' => $char_id,
			'spell' => $spells
		);
		return $arr;
	}
}