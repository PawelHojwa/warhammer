<?php
class Show extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> library('session');
		$this -> load -> model('universal_model');
		$this -> load -> helper('url');
		$this -> load -> helper('html');
	}
	
	public function get_prof_skills($id) {
		$arr = $this -> universal_model -> get_user('professions_skills', array('profession_id' => $id));
		$arr_skill = $arr_skill_name = array();
		foreach ($arr as $row) {
			$arr_skill[] = $row['skill_id'];
		}
		foreach ($arr_skill as $row) {
			$arr_skill_name[] = $this -> universal_model -> get_values('umiejetnosci', array('skillid' => $row), 'skillName');
		}
		return $arr_skill_name;
	}
	
	public function get_profession_name($id) {
		return $this -> universal_model -> get_values('professions', array('id' => $id), 'profession_name');
	}
	
	public function prof_skills() {
		$id = $_GET['id'];
		$skills = $this -> get_prof_skills($id);
		$name = $this -> get_profession_name($id);
		$data['skills'] = $skills;
		$data['profession_name'] = $name;
		$this -> load -> view('show/prof_skills', $data);
	}
}