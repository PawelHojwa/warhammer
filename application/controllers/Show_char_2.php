<?php
class Show_char_2 extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		
	}
	
	public function page_2() {
		$data['title'] = "Karta postaci";
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('characters/character_2');
		$this -> load -> view('templates/footer');
	}
}