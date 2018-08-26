<?php
class Show_char_3 extends CI_Controller {
 	public function __construct() {
 		parent::__construct();
 		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> model('char_inventory_model');
		$this -> load -> library('session');
	}

	public function get_company($id) {
		$company = $this -> char_inventory_model -> get_char_inventory($id);
		$arr = array(
			'company' => $company
		);
		return $arr;
	}

	public function page_3() {
		$player_id = $_SESSION['p_id'];
		$data = $this -> get_company($player_id);
		$data['title'] = "Karta postaci";
		$data['name'] = $this -> session -> user;
		$this -> load -> view('templates/header', $data);
		if ($this -> session -> has_userdata('userID')) {
			$this -> load -> view('form/success', $data);
		} else {
			$this -> load -> view('form/login');
		}
		$this -> load -> view('characters/page_3');
		$this -> load -> view('templates/footer');
	}
}