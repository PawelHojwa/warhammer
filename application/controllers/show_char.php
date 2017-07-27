<?php
class Show_char extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> model('char_skills_model');
		$this -> load -> model('characters_model');
		$this -> load -> model('char_inventory_model');
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> library('session');
		$this -> load -> library('char_skill');
		$this -> load -> model('universal_model');
		$this -> load -> model('exit_profession_model');
	}

	public function get_char($id) {
		$b_info = $this -> characters_model -> get_basic_info($id);
		$c_skill = $this -> char_skills_model -> get_character_skills($id);
		$char_meele_weapon = $this -> char_inventory_model -> get_weapon('mod_broni', 'meele', $id);
		$char_ranged_weapon = $this -> char_inventory_model -> get_weapon('modifier_ranged', 'ranged', $id);
		$char_armour = $this -> char_inventory_model -> get_armour($id);
		$arr = array();
		$arr1 = array('id' => $b_info['id'], 'name' => $b_info['name'], 'race' => $b_info['raceName'], 'gender' => $b_info['genderName'], 'classes' => $b_info['className'], 'nature' => $b_info['natureName'], 'age' => $b_info['age'], 'height' => $b_info['height'], 'weight' => $b_info['weight'], 'hair' => $b_info['hair'], 'eyes' => $b_info['eyes'], 'description' => $b_info['description'], 'sz' => $b_info['sz'], 'ww' => $b_info['ww'], 'us' => $b_info['us'], 's' => $b_info['s'], 'wt' => $b_info['wt'], 'zw' => $b_info['zw'], 'ini' => $b_info['i'], 'a' => $b_info['a'], 'zr' => $b_info['zr'], 'cp' => $b_info['cp'], 'int' => $b_info['intel'], 'op' => $b_info['op'], 'sw' => $b_info['sw'], 'ogd' => $b_info['ogd'], 'add_zw' => $b_info['add_zw'], 'origin' => $b_info['origin']);
		$arr2 = array('profession' => $c_skill['profName'], 'sk' => $c_skill['skillid'], 'rsz' => $c_skill['sz'], 'rww' => $c_skill['ww'], 'rus' => $c_skill['us'], 'rs' => $c_skill['s'], 'rwt' => $c_skill['wt'], 'rzw' => $c_skill['zw'], 'ri' => $c_skill['i'], 'ra' => $c_skill['a'], 'rzr' => $c_skill['zr'], 'rcp' => $c_skill['cp'], 'rint' => $c_skill['int'], 'rop' => $c_skill['op'], 'rsw' => $c_skill['sw'], 'rogd' => $c_skill['ogd'], );
		$arr3 = array('weapon' => $char_meele_weapon);
		$arr4 = array('ranged' => $char_ranged_weapon);
		$arr5 = array('armour' => $char_armour);
		return $arr = array_merge($arr1, $arr2, $arr3, $arr4, $arr5);
	}
	
	public function page_1() {
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			redirect('login/form_login');
		} else {
			if (!isset($_SESSION['p_id'])) {
				$_SESSION['p_id'] = $_GET['id'];
			}
			$profession_id = $this -> universal_model -> get_values('char_skills', array('char_id' => $_SESSION['p_id']), 'profId');
			$data = $this -> get_char($_SESSION['p_id']);
			$data['exit_professions'] = $this -> exit_profession_model -> exit_professions($profession_id);
			foreach ($data['exit_professions'] as $exit) {
				if ($profession_id > 3 && $profession_id < 25 && $exit['exit_profession'] == 0) {
					$data['exit_professions'] = "Kolejna profesja cyrkowca lub podstawowa profesja Łotra, lub losowo wybrana klasa Rangera, Wojownika lub Uczonego";
				} else if (($profession_id > 141 && $profession_id < 161  || $profession_id == 169) && $exit['exit_profession'] == 0) {
					$data['exit_professions'] = "Brak";
				}
			}
			foreach($data['sk'] as $skill) {
				if ($skill == 'Bardzo wytrzymały') {
					$data['wt']++;
				}
				if ($skill == 'Bardzo silny') {
					$data['s']++;
				}
				if ($skill == 'Bardzo szybki') {
					$data['sz']++;
				}
				if ($skill == 'Celne strzelanie') {
					$data['us'] += 10;
				}
				if ($skill == "Szybki refleks") {
					$data['ini'] += 10;
				}
				if ($skill == 'Siłacz') {
					$data['s']++;
					$data['zw'] += $data['add_zw'];
				}
			}
			$data['title'] = "Karta postaci";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('characters/page_1', $data);
			$this -> load -> view('templates/footer');
		}
	}

}
