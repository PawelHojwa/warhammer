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
		$this->load->library('formable');
		$this->load->helper('html');
        $this->load->driver('session');
	}
	
	public function view_form()
	{
		$data['title'] = "Logowanie";
		$data['sub_title'] = "Zaloguj się";
		$data['error'] = "";
		$this->load->view('templates/header', $data);
		$this->load->view('form/login', $data);
		$this->load->view('templates/footer');
	}
	
	public function success()
	{
		redirect('create_player/create');
	}
	
	public function form_login()
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
			$users = $this->form_model->get_user('users', $user);
            $user_id = $this->form_model->get_values('users', array('login' => $_POST['username']), 'userID');
            $s_data = array(
                'user' => $_POST['username'],
                'userID' => $user_id
            );
    	$this->session->set_userdata($s_data);
			if (empty($users))
			{
				$this->view_form();
			}
			else
			{
                
				$this->success();
			}
		}
	}
	
	public function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url());
	}
}