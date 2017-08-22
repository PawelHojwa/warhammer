<?php
class Add_stats extends CI_Controller {
	public function __construct() {
		parent:: __construct();
		$this -> load -> helper('form');
		$this -> load -> helper('url');
		$this -> load -> helper('html');
		$this -> load -> model('universal_model');
		$this -> load -> model('current_schematic_model');
		$this -> load -> model('characters_model');
		$this -> load -> model('char_skills_model');
		$this -> load -> library('session');
		$this -> load -> library('form_validation');
	}
	
	public function get_stats($id) {
		$basic_stats = $this -> characters_model -> get_basic_info($id);
		$dev_schemat = $this -> char_skills_model -> get_character_skills($id);
		$curret_schemat = $this -> current_schematic_model -> get_current_schematic($id);
		$arr1 = array('sz' => $basic_stats['sz'], 'ww' => $basic_stats['ww'], 'us' => $basic_stats['us'], 's' => $basic_stats['s'], 'wt' => $basic_stats['wt'], 'zw' => $basic_stats['zw'], 'i' => $basic_stats['i'], 'a' => $basic_stats['a'], 'zr' => $basic_stats['zr'], 'cp' => $basic_stats['cp'], 'int' => $basic_stats['intel'], 'op' => $basic_stats['op'], 'sw' => $basic_stats['sw'], 'ogd' => $basic_stats['ogd']);
		$arr2 = array('rsz' => $dev_schemat['sz'], 'rww' => $dev_schemat['ww'], 'rus' => $dev_schemat['us'], 'rs' => $dev_schemat['s'], 'rwt' => $dev_schemat['wt'], 'rzw' => $dev_schemat['zw'], 'ri' => $dev_schemat['i'], 'ra' => $dev_schemat['a'], 'rzr' => $dev_schemat['zr'], 'rcp' => $dev_schemat['cp'], 'rint' => $dev_schemat['int'], 'rop' => $dev_schemat['op'], 'rsw' => $dev_schemat['sw'], 'rogd' => $dev_schemat['ogd']);
		$arr3 = array('csz' => $curret_schemat['sz'], 'cww' => $curret_schemat['ww'], 'cus' => $curret_schemat['us'], 'cs' => $curret_schemat['s'], 'cwt' => $curret_schemat['wt'], 'czw' => $curret_schemat['zw'], 'ci' => $curret_schemat['i'], 'ca' => $curret_schemat['a'], 'czr' => $curret_schemat['zr'], 'ccp' => $curret_schemat['cp'], 'cint' => $curret_schemat['intel'], 'cop' => $curret_schemat['op'], 'csw' => $curret_schemat['sw'], 'cogd' => $curret_schemat['ogd']);
		$arr = array_merge($arr1, $arr2, $arr3);
		return $arr;
	}
	
	public function get_player_profession($id) {
		$arr = $this -> char_skills_model -> get_character_skills($id);
		return $arr;
	}
	
	public function add() {
		if (!isset($_SESSION['user'])) {
			redirect('login/view_form');
		} else {
			$player_id = $_SESSION['p_id'];
			$data = $this -> get_stats($player_id);
			$data['title'] = "Dodawanie statystyk";
			$profession_name = $this -> get_player_profession($player_id);
			$data['profession_name'] = $profession_name['profName'];
			$data['amount'] = 0;
			$exp = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'exp');
			if (floor($exp / 100) == 0) {
				redirect('login/logout');
			} else {
				$data['amount'] = floor($exp / 100);
			}
			/*echo "<pre>";
			var_dump($data);
			echo "</pre>";*/
			$this -> form_validation -> set_rules('exp', 'Exp', 'required', array('required' => "Pole '{field}' jest wymagane"));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/add_stats', $data);
				$this -> load -> view('templates/footer');
			} else {
				$arr = $this -> verify_stats($player_id);
				$diff_exp = $this -> input -> post('exp');
				$this -> universal_model -> update('current_schematic', $arr, array('char_id' => $player_id));
				$this -> universal_model -> update('characters', array('exp' => ($exp - $diff_exp)), array('id' => $player_id));
				redirect('add_choose/show_options');
			}
		}
	}

	public function verify_stats($p_id) {
		$arr = array(
			'char_id' => $p_id,
			'sz' => $this -> input -> post('csz'),
			'ww' => $this -> input -> post('cww'),
			'us' => $this -> input -> post('cus'),
			's' => $this -> input -> post('cs'),
			'wt' => $this -> input -> post('cwt'),
			'zw' => $this -> input -> post('czw'),
			'i' => $this -> input -> post('ci'),
			'a' => $this -> input -> post('ca'),
			'zr' => $this -> input -> post('czr'),
			'cp' => $this -> input -> post('ccp'),
			'intel' => $this -> input -> post('cint'),
			'op' => $this -> input -> post('cop'),
			'sz' => $this -> input -> post('csw'),
			'ogd' => $this -> input -> post('cogd') 
		);
		return $arr;
	}
}
