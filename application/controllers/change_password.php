<?php
class Change_password extends CI_Controller
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
	
	public function new_pass_form()
	{
		$data['title'] = "Nowe hasło";
		$data['sub_title'] = "Zmiana hasła";
		$this->load->view('templates/header', $data);
		$this->load->view('form/new_pass', $data);
		$this->load->view('templates/footer');
	}
	
	public function change_success()
	{
		$data['title'] = "Logowanie";
		$data['sub_title'] = "Formularz logowania";
		$data['error'] = "";
		$this->load->view('templates/header', $data);
		$this->load->view('form/login', $data);
		$this->load->view('templates/footer');
	}
	
	public function to_change()
	{
		$arr = array(
			'pass' => sha1($this->input->post('pass'))
		);
		
		return $arr;
	}
	
	public function new_pass()
	{
		
		$this->form_validation->set_rules('email', 'E-mail', 
			'trim|required|valid_email',
			array(
				'required' => "'{}' jest wymagane", 'valid_email' => 'Nieprawidlowy format'
				)
		);
		$this->form_validation->set_rules('pass', 'Hasło', 
			'trim|required|min_length[6]',
			array(
				'required' => "'{field}' jest wymagane", 
				'min_lenghh' => 'Minimalna dłuogość {param} znaków')
		);
		$this->form_validation->set_rules('confpass', 'Powtórz hasło', 
			'trim|matches[pass]',
			array(
				'matches' => "'{field}' inne niż {param}"
				)
		);
		
		if ($this->form_validation->run() === FALSE)
			$this->new_pass_form();
		else
		{
			$email = $this->form_model->get_values('users', array('mail' => $_POST['email']));
			if (empty($email))
				$this->new_pass_form();
			else
			{
				$pass = $this->to_change();
				$this->form_model->change('users', $pass, array('mail' => $_POST['email']));
				$this->change_success();
			}
		}
	}
}