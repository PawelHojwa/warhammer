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
		$this -> load -> model('profession_model');
		$this -> load -> model('race_model');
		$this -> load -> model('develope_statistics_model');
		$this -> load -> library('session');
		$this -> load -> library('form_validation');
	}
	
	public function get_stats($id, $prof_id) {
		$basic_stats = $this -> characters_model -> get_basic_info($id);
		$dev_schemat = $this -> profession_model -> get_profession_statistics($prof_id);
		$curret_schemat = $this -> current_schematic_model -> get_current_schematic($id);
		$dev_stats = $this -> develope_statistics_model -> get_dev_stats($id);
		$arr1 = array('sz' => $basic_stats['sz'], 'ww' => $basic_stats['ww'], 'us' => $basic_stats['us'], 's' => $basic_stats['s'], 'wt' => $basic_stats['wt'], 'zw' => $basic_stats['zw'], 'i' => $basic_stats['i'], 'a' => $basic_stats['a'], 'zr' => $basic_stats['zr'], 'cp' => $basic_stats['cp'], 'int' => $basic_stats['intel'], 'op' => $basic_stats['op'], 'sw' => $basic_stats['sw'], 'ogd' => $basic_stats['ogd']);
		$arr2 = array('rsz' => $dev_schemat['sz'], 'rww' => $dev_schemat['ww'], 'rus' => $dev_schemat['us'], 'rs' => $dev_schemat['s'], 'rwt' => $dev_schemat['wt'], 'rzw' => $dev_schemat['zw'], 'ri' => $dev_schemat['ini'], 'ra' => $dev_schemat['a'], 'rzr' => $dev_schemat['zr'], 'rcp' => $dev_schemat['cp'], 'rint' => $dev_schemat['intel'], 'rop' => $dev_schemat['op'], 'rsw' => $dev_schemat['sw'], 'rogd' => $dev_schemat['ogd']);
		$arr3 = array('csz' => $curret_schemat['sz'], 'cww' => $curret_schemat['ww'], 'cus' => $curret_schemat['us'], 'cs' => $curret_schemat['s'], 'cwt' => $curret_schemat['wt'], 'czw' => $curret_schemat['zw'], 'ci' => $curret_schemat['i'], 'ca' => $curret_schemat['a'], 'czr' => $curret_schemat['zr'], 'ccp' => $curret_schemat['cp'], 'cint' => $curret_schemat['intel'], 'cop' => $curret_schemat['op'], 'csw' => $curret_schemat['sw'], 'cogd' => $curret_schemat['ogd']);
		$arr4 = array('dsz' => $dev_stats['sz'], 'dww' => $dev_stats['ww'], 'dus' => $dev_stats['us'], 'ds' => $dev_stats['s'], 'dwt' => $dev_stats['wt'], 'dzw' => $dev_stats['zw'], 'di' => $dev_stats['ini'], 'da' => $dev_stats['a'], 'dzr' => $dev_stats['zr'], 'dcp' => $dev_stats['cp'], 'dint' => $dev_stats['intel'], 'dop' => $dev_stats['op'], 'dsw' => $dev_stats['sw'], 'dogd' => $dev_stats['ogd']);
 		$arr = array_merge($arr1, $arr2, $arr3, $arr4);
		return $arr;
	}

	public function get_race_stats($id) {
		$arr = $this -> race_model -> stats('rasa', 'raceID', $id, ['sz', 'ww', 'us', 's', 'wt', 'zw', 'i', 'a', 'zr', 'cp', 'intel', 'op', 'sw', 'ogd']);
		return $arr;
	}
	
	public function add() {
		if (!isset($_SESSION['user'])) {
			redirect('login/view_form');
		} else {
			$player_id = $_SESSION['p_id'];
			$profession_id = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'profession_id');
			$profession_name = $this -> universal_model -> get_values('professions', array('id' => $profession_id), 'profession_name');
			$data = $this -> get_stats($player_id, $profession_id);
			$race_id = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'raceID');
			$race_stats = $this -> get_race_stats($race_id);
			//podstawowe statystyki
			$data['sz'] += $race_stats['sz'];
			$data['ww'] += $race_stats['ww'];
			$data['us'] += $race_stats['us'];
			$data['s'] += $race_stats['s'];
			$data['wt'] += $race_stats['wt'];
			$data['zw'] += $race_stats['zw'];
			$data['i'] += $race_stats['i'];
			$data['a'] += $race_stats['a'];
			$data['zr'] += $race_stats['zr'];
			$data['cp'] += $race_stats['cp'];
			$data['int'] += $race_stats['intel'];
			$data['op'] += $race_stats['op'];
			$data['sw'] += $race_stats['sw'];
			$data['ogd'] += $race_stats['ogd'];
			//statystyki po rozwinięciu
			$data['csz'] += $race_stats['sz'];
			$data['cww'] += $race_stats['ww'];
			$data['cus'] += $race_stats['us'];
			$data['cs'] += $race_stats['s'];
			$data['cwt'] += $race_stats['wt'];
			$data['czw'] += $race_stats['zw'];
			$data['ci'] += $race_stats['i'];
			$data['ca'] += $race_stats['a'];
			$data['czr'] += $race_stats['zr'];
			$data['ccp'] += $race_stats['cp'];
			$data['cint'] += $race_stats['intel'];
			$data['cop'] += $race_stats['op'];
			$data['csw'] += $race_stats['sw'];
			$data['cogd'] += $race_stats['ogd'];
			$data['title'] = "Dodawanie statystyk";
			$data['profession_name'] = $profession_name;
			$data['amount'] = 0;
			$exp = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'exp');
			$data['exp'] = $exp;
			if (floor($exp / 100) == 0) {
				redirect('login/logout');
			} else {
				$data['amount'] = floor($exp / 100);
			}
			$this -> form_validation -> set_rules('exp', 'Exp', 'required', array('required' => "Pole '{field}' jest wymagane"));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/add_stats', $data);
				$this -> load -> view('templates/footer');
			} else {
				$arr = $this -> verify_stats($player_id, $race_stats);
				$points = $this -> verify_dev_stats($player_id);
				$diff_exp = $this -> input -> post('exp');
				$this -> universal_model -> update('current_schematic', $arr, array('char_id' => $player_id));
				$this -> universal_model -> update('dev_statistics', $points, array('char_id' => $player_id));
				$this -> universal_model -> update('characters', array('exp' => ($exp - $diff_exp)), array('id' => $player_id));
				redirect('add_choose/show_options');
			}
		}
	}

	public function verify_stats($p_id, $r_s) {
		$arr = array(
			'char_id' => $p_id,
			'sz' => $this -> input -> post('csz') - $r_s['sz'],
			'ww' => $this -> input -> post('cww') - $r_s['ww'],
			'us' => $this -> input -> post('cus') - $r_s['us'],
			's' => $this -> input -> post('cs') - $r_s['s'],
			'wt' => $this -> input -> post('cwt') - $r_s['wt'],
			'zw' => $this -> input -> post('czw') - $r_s['zw'],
			'i' => $this -> input -> post('ci') - $r_s['i'],
			'a' => $this -> input -> post('ca') - $r_s['a'],
			'zr' => $this -> input -> post('czr') - $r_s['zr'],
			'cp' => $this -> input -> post('ccp') - $r_s['cp'],
			'intel' => $this -> input -> post('cint') - $r_s['intel'],
			'op' => $this -> input -> post('cop') - $r_s['op'],
			'sw' => $this -> input -> post('csw') - $r_s['sw'],
			'ogd' => $this -> input -> post('cogd') - $r_s['ogd'] 
		);
		return $arr;
	}
	
	public function verify_dev_stats($p_id) {
		$arr = array(
			'char_id' => $p_id,
			'sz' => $this -> input -> post('dsz'),
			'ww' => $this -> input -> post('dww'),
			'us' => $this -> input -> post('dus'),
			's' => $this -> input -> post('ds'),
			'wt' => $this -> input -> post('dwt'),
			'zw' => $this -> input -> post('dzw'),
			'ini' => $this -> input -> post('di'),
			'a' => $this -> input -> post('da'),
			'zr' => $this -> input -> post('dzr'),
			'cp' => $this -> input -> post('dcp'),
			'intel' => $this -> input -> post('dint'),
			'op' => $this -> input -> post('dop'),
			'sw' => $this -> input -> post('dsw'),
			'ogd' => $this -> input -> post('dogd') 
		);
		return $arr;
	}
}
