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
		$this -> load -> model('current_schematic_model');
		$this -> load -> model('exit_profession_model');
		$this -> load -> model('profession_model');
		$this -> load -> model('race_model');
	}

	public function get_char($id, $prof_id) {
		$b_info = $this -> characters_model -> get_basic_info($id);
		$c_skill = $this -> char_skills_model -> get_character_skills($id);
		$career = $this -> profession_model -> get_career($id);
		$char_meele_weapon = $this -> char_inventory_model -> get_weapon('mod_broni', 'meele', $id);
		$char_ranged_weapon = $this -> char_inventory_model -> get_weapon('modifier_ranged', 'ranged', $id);
		$char_armour = $this -> char_inventory_model -> get_armour($id);
		$prof_stats = $this -> profession_model -> get_profession_statistics($prof_id);
		$race_stats = $this -> race_model -> stats('rasa', 'raceID', $b_info['raceID'],['sz', 'ww', 'us', 's', 'wt', 'zw', 'i', 'a', 'zr', 'cp', 'intel', 'op', 'sw', 'ogd']);
		$current_stats = $this -> current_schematic_model -> get_current_schematic($id);
		$prof_name;
		foreach ($career as $row) {
			$prof_name[] = $row -> profession_name;
 		}
		$dev = $this -> universal_model -> get_user('dev_statistics', array('char_id' => $id));
		$dev_statistics = array();
		foreach ($dev as $row) {
			$dev_statistics = $row;
		}
		$arr = array();
		$arr1 = array('id' => $b_info['id'], 'name' => $b_info['name'], 'race' => $b_info['raceName'], 'gender' => $b_info['genderName'], 'classes' => $b_info['className'], 'nature' => $b_info['natureName'], 'age' => $b_info['age'], 'height' => $b_info['height'], 'weight' => $b_info['weight'], 'hair' => $b_info['hair'], 'eyes' => $b_info['eyes'], 'description' => $b_info['description'], 'sz' => ($b_info['sz'] + $race_stats['sz']), 'ww' => ($b_info['ww'] + $race_stats['ww']), 'us' => ($b_info['us'] + $race_stats['us']), 's' => ($b_info['s'] + $race_stats['s']), 'wt' => ($b_info['wt'] + $race_stats['wt']), 'zw' => ($b_info['zw'] + $race_stats['zw']), 'ini' => ($b_info['i'] + $race_stats['i']), 'a' => ($b_info['a'] + $race_stats['a']), 'zr' => ($b_info['zr'] + $race_stats['zr']), 'cp' => ($b_info['cp'] + $race_stats['cp']), 'int' => ($b_info['intel'] + $race_stats['intel']), 'op' => ($b_info['op'] + $race_stats['op']), 'sw' => ($b_info['sw'] + $race_stats['sw']), 'ogd' => ($b_info['ogd'] + $race_stats['ogd']), 'add_zw' => $b_info['add_zw'], 'origin' => $b_info['origin']);
		$arr2 = array('sk' => $c_skill['skillid']);
		$arr3 = array('weapon' => $char_meele_weapon);
		$arr4 = array('ranged' => $char_ranged_weapon);
		$arr5 = array('armour' => $char_armour);
		$arr6 = array('rsz' => $prof_stats['sz'], 'rww' => $prof_stats['ww'], 'rus' => $prof_stats['us'], 'rs' => $prof_stats['s'], 'rwt' => $prof_stats['wt'], 'rzw' => $prof_stats['zw'], 'ri' => $prof_stats['ini'], 'ra' => $prof_stats['a'], 'rzr' => $prof_stats['zr'], 'rcp' => $prof_stats['cp'] , 'rint' => $prof_stats['intel'], 'rop' => $prof_stats['op'], 'rsw' => $prof_stats['sw'], 'rogd' => $prof_stats['ogd']);
		$arr7 = array('professions' => $prof_name);
		$arr8 = array('dsz' => $dev_statistics['sz'], 'dww' => $dev_statistics['ww'] / 10, 'dus' => $dev_statistics['us'] / 10, 'ds' => $dev_statistics['s'], 'dwt' => $dev_statistics['wt'], 'dzw' => $dev_statistics['zw'], 'di' => $dev_statistics['ini'] / 10, 'da' => $dev_statistics['a'], 'dzr' => $dev_statistics['zr'] / 10, 'dcp' => $dev_statistics['cp'] / 10, 'dint' => $dev_statistics['intel'] / 10, 'dop' => $dev_statistics['op'] / 10, 'dsw' => $dev_statistics['sw'] / 10, 'dogd' => $dev_statistics['ogd'] / 10);
		$arr9 = array('csz' => ($current_stats['sz'] + $race_stats['sz']), 'cww' => ($current_stats['ww'] + $race_stats['ww']), 'cus' => ($current_stats['us'] + $race_stats['us']), 'cs' => ($current_stats['s'] + $race_stats['s']), 'cwt' => ($current_stats['wt'] + $race_stats['wt']), 'czw' => ($current_stats['zw'] + $race_stats['zw']), 'ci' => ($current_stats['i'] + $race_stats['i']), 'ca' => ($current_stats['a'] + $race_stats['a']), 'czr' => ($current_stats['zr'] + $race_stats['zr']), 'ccp' => ($current_stats['cp'] + $race_stats['cp']), 'cint' => ($current_stats['intel'] + $race_stats['intel']), 'cop' => ($current_stats['op'] + $race_stats['op']), 'csw' => ($current_stats['sw'] + $race_stats['sw']), 'cogd' => ($current_stats['ogd'] + $race_stats['ogd']), );
		return $arr = array_merge($arr1, $arr2, $arr3, $arr4, $arr5, $arr6, $arr7, $arr8, $arr9);
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
			$profession_id = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'profession_id');
			$data = $this -> get_char($_SESSION['p_id'], $profession_id);
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
					$data['cwt']++;
				}
				if ($skill == 'Bardzo silny') {
					$data['cs']++;
					$data['cs']++;
				}
				if ($skill == 'Bardzo szybki') {
					$data['sz']++;
					$data['csz']++;
				}
				if ($skill == 'Celne strzelanie') {
					$data['us'] += 10;
					$data['cus'] += 10;
				}
				if ($skill == "Szybki refleks") {
					$data['ini'] += 10;
					$data['ci'] += 10;
				}
				if ($skill == 'Siłacz') {
					$data['s']++;
					$data['zw'] += $data['add_zw'];
					$data['cs']++;
					$data['czw'] += $data['add_zw'];
					
				}
			}
			$data['title'] = "Karta postaci";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('characters/page_1', $data);
			$this -> load -> view('templates/footer');
		}
	}

}
