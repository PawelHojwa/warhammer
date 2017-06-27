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
		$this->load->library('char_skill');
	}

	public function verify_data($id = "") {
		$skill_1 = $this -> input -> post('skills');
		$skill_2 = $this -> input -> post('s');
		$skills = array_merge($skill_1, $skill_2);
		$data = array(
			'id' => $id, 
			'char_id' => $_SESSION['p_id'],
			'profId' => $this -> input -> post('prof'), 
			'skillid' => $skills
			);
		return $data;
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
			$data = $this -> char_skill -> char_data($_SESSION['p_id']);
			$char_id = $this->form_model->get_values('char_skills', array('char_id' => $_SESSION['p_id']), 'char_id');
			$this -> form_validation -> set_rules('prof', 'Profesja', 'required', array('required' => "'{field}' jest wymagane"));
			if ($this -> form_validation -> run() === false) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/skills', $data);
				$this -> load -> view('templates/footer');
			} else {
				if ($char_id == NULL) {
					$arr = $this -> verify_data();
					$this -> form_model -> multi_insert('char_skills', $arr);
          redirect('show_char/show');
				} else {
					$this->form_model->delete('char_skills', array('char_id' => $_SESSION['p_id']));
					$arr = $this -> verify_data();
					$this -> form_model -> multi_insert('char_skills', $arr);
					redirect('show_char/show');
				}
			}
		}
	}
	
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
	