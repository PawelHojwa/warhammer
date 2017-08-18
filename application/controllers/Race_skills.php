<?php
class Race_skills extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> model('char_skills_model');
		$this -> load -> model('universal_model');
		$this -> load -> library('form_validation');
		$this -> load -> library('session');
	}
	
	public function get_race_skills($id) {
		return $this -> char_skills_model -> race_skills($id);
	}
	
	public function verify_data($arr2, $id = "") {
		$arr = $this -> input -> post('skill');
		if (!empty($arr) && is_array($arr)) {
			$skills = array_merge($arr2, $arr);
		} else {
			$skills = $arr2;
		}
		$data = array(
			'id' => $id,
			'char_id' => $_SESSION['p_id'],
			'prof_id' => 1,
			'skill_id' => $skills
		);
		return $data;
	}
	
	public function choose_skills() {
		$this -> form_validation -> set_rules('skill[]', 'Umiejętność', 'required', array('required' => '{field} jest wymagana'));
		$race = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'raceID');
		$this -> universal_model -> delete('char_skills', array('char_id' => $_SESSION['p_id']));
		$data['skills'] = $this -> get_race_skills($race);
		$data['title'] = "Umiejętności rasowe";
		$data['amount'] = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'amount');
		if ($data['amount'] == 1) {
			$skill = $data['skills'][0] -> skill_id;
			$this -> universal_model -> insert('char_skills', array('id' => '', 'char_id' => $_SESSION['p_id'], 'profId' => 1, 'skill_id' => $skill));
			$this -> universal_model -> change('characters', array('amount' => 0), array('id' => $_SESSION['p_id']));
			$this -> session -> unset_userdata('amount');
			redirect('player_skills/skill');
		}
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/race_skills', $data);
			$this -> load -> view('templates/footer');
		} else {
			$arr = array();
			foreach ($data['skills'] as $skill) {
				if ($skill -> options == 0) {
					$arr[] = $skill -> skillid;
				}
			}
			
			$datas = $this -> verify_data($arr);
			$this -> char_skills_model -> multi_insert('char_skills', 'skill_id', $datas);
			redirect('player_skills/skill');
		}
	}
}