<?php
class Show_char extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('form_model');
		$this->load->helper('html');
		$this->load->helper('url_helper');
		$this->load->library('session');
	}
	
	public function get_char()
	{
		$id = $this->form_model->last_index('characters', 'id');
		$b_info = $this->form_model->get_basic_info();
		$c_skill = $this->form_model->get_character_skills($id);
		$arr = array();
		$arr1 = array(
			'name' => $b_info['name'],
			'race' => $b_info['raceName'],
			'gender' => $b_info['genderName'],
			'classes' => $b_info['className'],
			'nature' => $b_info['natureName'],
			'age' => $b_info['age'],
			'height' => $b_info['height'],
			'weight' => $b_info['weight'],
			'hair' => $b_info['hair'],
			'eyes' => $b_info['eyes'],
			'description' => $b_info['description'],
			'sz' => $b_info['sz'],
			'ww' => $b_info['ww'],
			'us' => $b_info['us'],
			's' => $b_info['s'],
			'wt' => $b_info['wt'],
			'zw' => $b_info['zw'],
			'ini' => $b_info['i'],
			'a' => $b_info['a'],
			'zr' => $b_info['zr'],
			'cp' => $b_info['cp'],
			'int' => $b_info['intel'],
			'op' => $b_info['op'],
			'sw' => $b_info['sw'],
			'ogd' => $b_info['ogd'],
		);
		$arr2 = array(
			'profession' => $c_skill['profName'],
			'sk' => $c_skill['skillid'],
			'rsz' => $c_skill['sz'],
			'rww' => $c_skill['ww'],
			'rus' => $c_skill['us'],
			'rs' => $c_skill['s'],
			'rwt' => $c_skill['wt'],
			'rzw' => $c_skill['zw'],
			'ri' => $c_skill['i'],
			'ra' => $c_skill['a'],
			'rzr' => $c_skill['zr'],
			'rcp' => $c_skill['cp'],
			'rint' => $c_skill['int'],
			'rop' => $c_skill['op'],
			'rsw' => $c_skill['sw'],
			'rogd' => $c_skill['ogd'],
		);
		/*echo "<pre>";
		var_dump($arr1);
		echo "</pre>";*/
		return $arr = array_merge($arr1, $arr2);
	}
	
	public function show()
	{
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			redirect('login/form_login');
		} else {
			$data = $this->get_char();
			$data['title'] = "Karta postaci";
			$this->load->view('templates/header', $data);
			$this->load->view('characters/character');
			$this->load->view('templates/footer');
		}	
	}
}