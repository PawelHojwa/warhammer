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
		return $this -> item_model -> get_inv('professions_inventory', ['profession_id' => $id]);
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
			$prof_id = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'profession_id');
			$basic_inv = $this -> basic_inv($class_id); 
			$prof_inv = $this -> prof_inv($prof_id);
			/*$inv = $b_inv;
			$z = count($inv);
			for ($i = 0; $i < $z; $i++) {
				if (!empty($p_inv) === TRUE && is_array($p_inv) === TRUE) {
					if ($b_inv[$i]['invetnory_id'] != $p_inv[$i]['inventory']) {
						array_push($inv, $p_inv[$i]);
					}
				}
			}
			$full_inv = array();
			foreach ($inv as $item) {
				if ($item['options'] == 0) {
					$full_inv[] = $item['inventory_id'];
				}
			}*/
			$inventory = array();
			if (!empty($prof_inv) && is_array($prof_inv)) {
				$shared = array_uintersect($prof_inv, $basic_inv, function($x, $y) {return strcasecmp($x['inventory_id'], $y['inventory_id']);});
				$summary = array_merge($basic_inv, $prof_inv);
				$uniqe = array_udiff($summary, $shared, function($x, $y) {return strcasecmp($x['inventory_id'], $y['inventory_id']);});
				$inventory = array_merge($shared, $uniqe);
			} else {
				$inventory = $basic_inv;
			}
			
			$full_inv = array();
			foreach ($inventory as $item) {
				if ($item['options'] == 0) {
					$full_inv[] = $item['inventory_id']; 
				}
			}
			$data['inventory'] = $inventory;
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
					if ($prof_id == 69) {
						redirect('spells/spell_form');
					} else {
						$this -> universal_model -> delete('char_spells', array('char_id' => $player_id));
						redirect('show_char/page_1');
					}
				} else {
					$this -> universal_model -> delete('char_inv', array('char_id' => $player_id));
					$arr = $this -> verify_data($full_inv);
					$this -> char_inventory_model -> multi('char_inv', 'inv', $arr);
					if ($prof_id == 69) {
						redirect('spells/spell_form');
					} else {
						$this -> universal_model -> delete('char_spells', array('char_id' => $player_id));
						redirect('free_stat/rise_stat');
					}
				}
			}
		}
	}
}