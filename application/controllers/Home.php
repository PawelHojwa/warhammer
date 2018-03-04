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
	}
	
	public function index()
	{
		if ($this -> session -> has_userdata('userID'))
			$user_type = $this -> universal_model -> get_values('users', array('userId' => $_SESSION['userID']), 'type');
		else {
			$user_type = 'gracz';
		}
		$data = array('title' => "True Fantasy Group",
									'price_list' => 'Cennik',
									'create' => 'Tworzenie postaci',
									'speed' => 'Prędkość',
									'monster' => 'Bestiariusz',
									'admin_panel' => 'Panel administratora',
									'type' => $user_type
		);
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('home/index', $data);
		$this -> load -> view('templates/footer');
	}
}