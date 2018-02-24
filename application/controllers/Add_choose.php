<?php
class Add_choose extends CI_Controller {
	public function __construct() {
		parent:: __construct();
		$this -> load -> helper('url');
		$this -> load -> helper('html');
		$this -> load -> model('universal_model');
		$this -> load -> library('session');
	}
	
	public function show_options() {
		if (!isset($_SESSION['user'])) {
			redirect('login/view_form');
		} else {
			$player_id = $_SESSION['p_id'];
			$profession_id = $this -> universal_model -> get_values('char_skills', array('char_id' => $player_id), 'profId');
			$data['profession_id'] = $profession_id;
			$data['title'] = "Wybierze opcje";
			$data['add_stats'] = "Dodaj statystykę";
			$data['add_skill'] = "Dodaj umiejętność";
			$data['add_spell'] = "Dodaj czar";
			$data['change_profession'] = "Zmień profesję";
			$exp = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'exp');
			if (floor($exp / 100) == 0) {
				redirect('login/view_form');
			} else {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/choose', $data);
				$this -> load -> view('templates/footer');
			}
		}
	}
}  