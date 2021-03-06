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
		$player_id = $_SESSION['p_id'];
		$profession_id = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'profession_id');
		$data['profession_id'] = $profession_id;
		$data['title'] = "Wybierze opcje";
		$data['add_stats'] = "Dodaj statystykę";
		$data['add_skill'] = "Dodaj umiejętność";
		$data['add_spell'] = "Dodaj czar";
		$data['change_profession'] = "Zmień profesję";
		$data['name'] = $this -> session -> user;
		$exp = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'exp');
		if (floor($exp / 100) == 0) {
			redirect('login/view_form');
		} else {
			$this -> load -> view('templates/header', $data);
			if ($this -> session -> has_userdata('userID')) {
				$this -> load -> view('form/success', $data);
			} else {
				$this -> load -> view('form/login');
			}
			$this -> load -> view('form/choose', $data);
			$this -> load -> view('templates/footer');
		}
	}
}  