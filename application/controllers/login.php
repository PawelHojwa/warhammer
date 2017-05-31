<?php

class Login extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->helper('form');
		$this->load->helper('url_helper');
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->model('form_model');
	}
	
	public function view_form()
	{
		$data['title'] = "Logowanie";
		$data['sub_title'] = "Formularz logowania";
		$data['error'] = "";
		$this->load->view('templates/header', $data);
		$this->load->view('form/login', $data);
		$this->load->view('templates/footer');
	}
	
	public function success()
	{
		$data['title'] = "Tworzenie postaci";
		$race = $this->form_model->arr_conv('rasa', 'raceName');
		$gender = $this->form_model->arr_conv('gender', 'genderName');
		$classes = $this->form_model->arr_conv('classes', 'className');
		$nature = $this->form_model->arr_conv('charakter', 'natureName');
		$data['race'] = $race;
		$data['gender'] = $gender;
		$data['classes'] = $classes;
		$data['nature'] = $nature;
		$this->load->view('templates/header', $data);
		$this->load->view('form/create_character', $data);
		$this->load->view('templates/footer');
	}
	
	public function login()
	{
		$this->form_validation->set_rules('username', 'Imię', 'required',
			array('required' => "Pole '{field}' jest wymagane",
			)
		);	
		$this->form_validation->set_rules('password', 'Hasło', 'required',
			array('required' => "Pole '{field}' jest wymagane")
		);
		
	
		if ($this->form_validation->run() === FALSE)
		{
			$this->view_form();
		}
		else
		{
			$user = array('login' => $_POST['username'], 'pass' => sha1($_POST['password']));
			$users = $this->form_model->get_values('users', $user);
			if (empty($users))
			{
				$data['error'] = "Nieprawidłowy login/hasło";
				$this->view_form();
			}
			else
			{
				$_SESSION['user'] = $_POST['username'];
				
				$this->success();
			}
		}
	}
}