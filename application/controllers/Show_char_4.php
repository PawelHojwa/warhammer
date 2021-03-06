<?php
class Show_char_4 extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> library('session');
		$this -> load -> model('spell_model');
		$this -> load -> model('profession_model');
	}
	
	public function get_spells($id) {
		return $this -> spell_model -> get_spells($id);
	}
	
	public function page_4() {
		$data['spells'] = $this -> get_spells($_SESSION['p_id']);
		$data['title'] = "Karta postaci";
		$data['name'] = $this -> session -> user;
		$this -> load -> view('templates/header', $data);
		if ($this -> session -> has_userdata('userID')) {
			$this -> load -> view('form/success', $data);
		} else {
			$this -> load -> view('form/login');
		}
		$this -> load -> view('characters/page_4', $data);
		$this -> load -> view('templates/footer');
	}
}