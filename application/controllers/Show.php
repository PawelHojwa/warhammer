<?php
class Show extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> library('session');
		$this -> load -> model('universal_model');
		$this -> load -> helper('url');
		$this -> load -> helper('html');
	}
	
	public function get_skills($id, $tab_name, $id_name) {
		$arr = $this -> universal_model -> get_user($tab_name, array($id_name => $id));
		$arr_skill = $arr_skill_name = array();
		foreach ($arr as $row) {
			$arr_skill[] = $row['skill_id'];
		}
		foreach ($arr_skill as $row) {
			$arr_skill_name[] = $this -> universal_model -> get_values('umiejetnosci', array('skillid' => $row), 'skillName');
		}
		return $arr_skill_name;
	}
	
	public function get_name($id, $tab_name, $name, $lp) {
		return $this -> universal_model -> get_values($tab_name, array($lp => $id), $name);
	}
	
	public function prof_skills() {
		$id = $_GET['id'];
		$skills = $this -> get_skills($id, 'professions_skills', 'profession_id');
		$name = $this -> get_name($id, 'professions', 'profession_name', 'id');
		$data['skills'] = $skills;
		$data['profession_name'] = $name;
		$this -> load -> view('show/prof_skills', $data);
	}

	public function race_skills() {
		$id = $_GET['id'];
		$skills = $this -> get_skills($id, 'race_skills', 'race_id');
		$name = $this -> get_name($id, 'rasa', 'raceName', 'raceID');
		$data['skills'] = $skills;
		$data['race_name'] = $name;
		$this -> load -> view('show/race_skills', $data);
	}
}