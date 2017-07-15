<?php

class Home extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this -> load -> helper('url_helper');
		$this -> load -> helper('html');
	}
	
	public function index()
	{
		$data = array('title' => "True Fantasy Group", 'price_list' => 'Cennik', 'create' => 'Tworzenie postaci', 'speed' => 'Prędkość');
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('home/index', $data);
		$this -> load -> view('templates/footer');
	}
}