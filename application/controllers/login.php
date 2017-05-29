<?php

class Login extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->helper('form');
		$this->load->helper('url_helper');
		$this->load->library('form_validation');
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
		$data['title'] = "Logowanie";
		$data['sub_title'] = "Formularz logowania";
		$data['error'] = "";
		$this->load->view('templates/header', $data);
		$this->load->view('templates/blabla', $data);
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
				$this->success();
			}
		}
	}
}