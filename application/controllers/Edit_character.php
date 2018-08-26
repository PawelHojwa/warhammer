<?php

class Edit_character extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('form');
		$this -> load -> helper('url_helper');
		$this -> load -> helper('html');
		$this -> load -> library('session');
		$this -> load -> library('form_validation');
		$this -> load -> model('universal_model');
		$this -> load -> model('characters_model');
	}
	
	public function edit() {
		if (!isset($_SESSION['p_id'])) {
			$id = $_GET['id'];
			$_SESSION['p_id'] = $_GET['id'];
		} else {
			$id = $_SESSION['p_id'];
		}
		$exp = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'exp');
		$data = $this -> characters_model -> get_basic_info($id);
		$data['title'] = 'Edycja - informacje podstawowe';
		$data['name'] = $this -> session -> user;
		$this -> form_validation -> set_rules('weight', 'Waga', 'required', array('required' => "Pole '{field}' jest wymagana"));
		$this -> form_validation -> set_rules('hair', 'Włosy', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('description', 'Opis', 'required', array('required' => "Pole '{field}' jest wymagane"));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/edit_basic', $data);
			$this -> load -> view('templates/footer');
		} else {
			$arr = $this -> verify_data($exp);
			$this -> universal_model -> update('characters', $arr, array('id' => $_SESSION['p_id']));
			redirect('add_choose/show_options');
		}	
	}
	
	
	public function verify_data($x) {
		$data = array(
			'weight' => $this -> input -> post('weight'),
			'hair' => $this -> input -> post('hair'),
			'description' => $this -> input -> post('description'),
			'exp' => $this -> input -> post('exp') + $x
		);
		return $data;
	}
}