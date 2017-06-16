<?php

class Register extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->helper('form');
		$this->load->helper('url_helper');
		$this->load->library('form_validation');
		$this->load->model('form_model');
		$this->load->helper('html');
	}
	
	public function register_data($type = 'gracz')
	{
		$data = array(
			'name' => $this->input->post('name'),
			'login' => $this->input->post('login'),
			'pass' => sha1($this->input->post('pass')),
			'mail' => $this->input->post('email'),
			'type' => $type
		);
		return $data;
	}
	
	public function view_reg_form()
	{
		$data['title'] = "Rejestracja";
		$this->load->view('templates/header', $data);
		$this->load->view('form/register');
		$this->load->view('templates/footer');
	}
	
	public function create_character()
	{
		$data['title'] = "Rejestracja pomyślna";
		$data['sub_title'] = "Możesz zalogować się do serwisu";
		$register = $this->register_data();
		$this->form_model->insert('users', $register);
		$data['error'] = "";
		$this->load->view('templates/header', $data);
		$this->load->view('form/login');
		$this->load->view('templates/footer');
	}
	
	public function register()
	{
		$this->form_validation->set_rules('name', 'Imie', 'trim|required',
        	array('required' => "Pole '{field}' jest wymagane")
		);
		$this->form_validation->set_rules('login', 'Login', 
			'trim|required|is_unique[users.login]|min_length[6]|max_length[15]',
			array('required' => "Pole '{field}' jest wymagane",
				'is_unique' => "Ten '{field}' już istnieje w bazie",
				'min_length' => "'{field}' musi mieć min. {param} znaków",
				'max_length' => "'{field}' musi mieć max. {param} znaków")
		);
		$this->form_validation->set_rules('pass', 'Hasło',
			'trim|required|min_length[6]|max_length[15]',
			array('required' => "Pole '{field}' jest wymagane",
				'min_length' => "'{field}' musi mieć min. {param} znaków",
				'max_length' => "'{field}' musi mieć max. {param} znaków")
		);
		$this->form_validation->set_rules('confpass', 'Powtórz hasło', 
			'trim|required|matches[pass]',
			array('required' => "Pole '{field}' jest wymagane",
				'matches' => "'{field}' inne niż '{param}'")
		);
		$this->form_validation->set_rules('email', 'E-mail', 'trim|required|valid_email',
			array('required' => "Pole '{field}' jest wymagane",
				'valid_email' => "Nieprawidłowy format adresu e-mail")
		);
		if ($this->form_validation->run() === FALSE)
			$this->view_reg_form();
		else
			$this->create_character();
	}
}