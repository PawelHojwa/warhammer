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
		$this->load->library('formable');
		$this->load->helper('html');
    $this->load->driver('session');
		$this -> load -> model('universal_model');
	}
	
	public function view_form()
	{
		$this->load->view('form/login');
	}
	
	public function success() {
		$user_name = $this -> session -> user;
		$data['name'] = $user_name;
		$this -> load -> view('form/success');
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
			$users = $this->universal_model->get_user('users', $user);
      $user_id = $this->universal_model->get_values('users', array('login' => $_POST['username']), 'userID');
			$user_type = $this -> universal_model -> get_values('users', array('login' => $_POST['username']), 'type');
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
        if ($user_type == 'admin') {
        	redirect('home/index');
        } else {
        	$this->success();
        }
			}
		}
	}
	
	public function logout()
	{
		$this->session->sess_destroy();
		redirect(base_url());
	}
}