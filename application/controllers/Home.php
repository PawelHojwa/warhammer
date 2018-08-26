<?php

class Home extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this -> load -> model('universal_model');
		$this -> load -> helper('url_helper');
		$this -> load -> helper('html');
		$this -> load -> library('session');
		$this -> load -> helper('form');
	}
	
	public function index()
	{
		if ($this -> session -> has_userdata('userID'))
			$user_type = $this -> universal_model -> get_values('users', array('userId' => $_SESSION['userID']), 'type');
		else {
			$user_type = 'guest';
		}
		$name = $this -> session -> user;
		$data = array('title' => "True Fantasy Group",
									'price_list' => 'Cennik',
									'create' => 'Tworzenie postaci',
									'speed' => 'Prędkość',
									'monster' => 'Bestiariusz',
									'admin_panel' => 'Panel administratora',
									'professions' => 'Profesje',
									'skills' => 'Umiejętności',
									'spells' => 'Zaklęcia',
									'type' => $user_type,
									'name' => $name
		);
		$this -> load -> view('templates/header', $data);
		if ($this -> session -> has_userdata('userID')) {
			$this -> load -> view('form/success', $data);
		} else {
			$this -> load -> view('form/login');
		}
		$this -> load -> view('home/index', $data);
		$this -> load -> view('templates/footer');
	}
}