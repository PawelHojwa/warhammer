<?php
class Show_char_2 extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> model('char_inventory_model');
		$this -> load -> model('characters_model');
		$this -> load -> model('speed_model');
		$this -> load -> library('session');
	}
	
	public function get_inventory ($id) {
		$char_inventory =  $this -> char_inventory_model -> get_char_inventory($id);
		$arr = array(
			'inventory' => $char_inventory
		);
		return $arr;
	}
	
	public function get_speed($id) {
		$s = 0;
		$stats = $this -> characters_model -> get_basic_info($id);
		//foreach ($stats as $stat) {
			$s = $stats['sz'];
		//}
		return $s;
	}
	
	public function show_speed ($id) {
		return $speed = $this -> speed_model -> get_speed($id);
	}
	
	public function page_2() {
		$data = $this -> get_inventory($_SESSION['p_id']);
		$data['sz'] = $this -> get_speed($_SESSION['p_id']);
		$data['speed'] = $this -> show_speed($data['sz']);
		$data['title'] = "Karta postaci";
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('characters/character_2', $data);
		$this -> load -> view('templates/footer');
	}
}