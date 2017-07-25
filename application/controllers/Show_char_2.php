<?php
class Show_char_2 extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> model('char_inventory_model');
		$this -> load -> model('characters_model');
		$this -> load -> model('speed_model');
		$this -> load -> model('char_skills_model');
		$this -> load -> library('session');
	}
	
	public function get_inventory ($id) {
		$char_inventory =  $this -> char_inventory_model -> get_char_inventory($id);
		$arr = array(
			'inventory' => $char_inventory
		);
		return $arr;
	}
	
	public function get_stats($id, $name) {
		$s = 0;
		$stats = $this -> characters_model -> get_basic_info($id);
		$s = $stats[$name];
		return $s;
	}
	
	public function get_skills($id) {
		$skill = array();
		$skills = $this -> char_skills_model -> get_character_skills($id);
		$skill = $skills['skillid'];
		return $skill;
	} 
	
	public function show_speed ($id) {
		return $speed = $this -> speed_model -> get_speed($id);
	}
	
	public function page_2() {
		$player_id = $_SESSION['p_id'];
		$data = $this -> get_inventory($player_id);
		$data['id'] = $player_id;
		$data['sz'] = $this -> get_stats($player_id, 'sz');
		$data['intel'] = $this -> get_stats($player_id, 'intel');
		$data['i'] = $this -> get_stats($player_id, 'i');
		$data['op'] = $this -> get_stats($player_id, 'op');
		$data['speed'] = $this -> show_speed($data['sz']);
		$data['skills'] = $this -> get_skills($_SESSION['p_id']);
		$data['pp'] = $this -> get_stats($player_id, 'dp');
		$data['exp'] = $this -> get_stats($player_id, 'exp');
		$data['family'] = $this -> get_stats($player_id, 'family');
		$data['title'] = "Karta postaci";
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('characters/page_2', $data);
		$this -> load -> view('templates/footer');
	}
}