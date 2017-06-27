<?php 

class Trade extends CI_Controller
{
	public function __construct()
	{
		parent:: __construct();
		$this -> load -> model('form_model');
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
	}
	
	public function get_list($tab_name)
	{
		return $this -> form_model -> get_data($tab_name);
	}
	
	public function price_list()
	{
		$armours = $this -> get_list('pancerz');
		$living = $this -> get_list('utrzymanie');
		$clothes = $this -> get_list('ubranie');
		$m_weapon = $this -> get_list('bron_reczna');
		$r_weapon = $this -> get_list('bron_strzelecka');
		$f_weapon = $this -> get_list('bron_palna');
		$data['title'] = "Cennik";
		$data['capt_armour'] = "Pancerz";
		$data['capt_living'] = "Utrzymanie";
		$data['capt_clothes'] = "Ubranie";
		$data['capt_m_weapon'] = "Broń ręczna";
		$data['capt_r_weapon'] = "Broń strzelecka";
		$data['capt_f_weapon'] = "Broń palna";
		$data['armours'] = $armours;
		$data['livings'] = $living;
		$data['clothes'] = $clothes;
		$data['m_weapon'] = $m_weapon;
		$data['r_weapon'] = $r_weapon;
		$data['f_weapon'] = $f_weapon;
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('trade/list', $data);
		$this -> load -> view('templates/footer');
	}
}