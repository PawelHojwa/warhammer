<?php
class Inventory extends CI_Controller
{
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('form');
		$this -> load -> model('item_model');
		$this -> load -> model('universal_model');
		$this -> load -> model('char_inventory_model');
		$this -> load -> library('session');
		$this -> load -> library('form_validation');
		$this -> load -> helper('url_helper');
		$this -> load -> helper('html');
	}
	
	public function basic_inv($id) {
		return $this -> item_model -> get_inv('basic_inv', ['classID'=> $id]);
	}
	
	public function prof_inv($id) {
		return $this -> item_model -> get_inv('prof_inv', ['profID' => $id]);
	}
	
	public function verify_data($arr, $id = '') {
		$c_inv = $this -> input -> post('inv');
		$inv = array_merge($c_inv, $arr);
		$data = array(
			'id' => $id,
			'char_id' => $_SESSION['p_id'],
			'inv' => $inv
		);
		return $data;
	}
	
	public function form_inventory() {
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			redirect('login/form_login');
		} else {
			$player_id = $_SESSION['p_id'];
			$char_id = $this -> universal_model -> get_values('char_inv', array('char_id' => $player_id), 'char_id');
			$class_id = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'classID');
			$prof_id = $this -> universal_model -> get_values('char_skills', array('char_id' => $player_id), 'profId');
			$b_inv = $this -> basic_inv($class_id); 
			$p_inv = $this -> prof_inv($prof_id);
			$inv = array();
			if (!empty($p_inv) === TRUE && is_array($p_inv) === TRUE) {
				$inv = array_merge($b_inv, $p_inv);
			} else {
				$inv = $b_inv;
			}
			
			$full_inv = array();
			foreach ($inv as $item) {
				if ($item['options'] == 0) {
					$full_inv[] = $item['name'];
				}
			}
			$data['b_inv'] = $inv;
			$data['title'] = 'Ekwipunek';
			$data['sub_title'] = "Wybór ekwipunku";
			$this -> form_validation -> set_rules('inv[]', 's', 'required', array('required' => "'{field}' jest wymagana"));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/inventory', $data);
				$this -> load -> view('templates/footer');
			} else {
				if ($char_id = NULL) {
					$arr = $this -> verify_data($full_inv);
					$this -> char_inventory_model -> multi('char_inv', 'inv', $arr);
					redirect('show_char/show');
				} else {
					
					$this -> universal_model -> delete('char_inv', array('char_id' => $player_id));
					$arr = $this -> verify_data($full_inv);
					echo "<pre>";
					var_dump($full_inv);
					echo "</pre>";
					$this -> char_inventory_model -> multi('char_inv', 'inv', $arr);
					redirect('show_char/page_1');
				}
			}
		}
	}
}