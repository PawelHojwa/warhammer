<?php
class Free_stat extends CI_Controller {
	public function __construct() {
		parent:: __construct();
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> model('universal_model');
		$this -> load -> model('characters_model');
		$this -> load -> library('session');
		$this -> load -> model('char_skills_model');
		$this -> load -> model('current_schematic_model');
		$this -> load -> library('form_validation');
		$this -> load -> model('profession_model');
		$this -> load -> model('race_model');
	}
	
	public function get_stats($id, $p_id, $r_id) {
		$basic_stats = $this -> characters_model -> get_basic_info($id);
		$dev_schemat = $this -> profession_model -> get_profession_statistics($p_id);
		$current_schemat = $this -> current_schematic_model -> get_current_schematic($id);
		$race_stats = $this -> race_model -> stats('rasa', 'raceID', $r_id,['sz', 'ww', 'us', 's', 'wt', 'zw', 'i', 'a', 'zr', 'cp', 'intel', 'op', 'sw', 'ogd']);
		$arr1 = array('sz' => $basic_stats['sz'] + $race_stats['sz'], 'ww' => $basic_stats['ww'] + $race_stats['ww'], 'us' => $basic_stats['us'] + $race_stats['us'], 's' => $basic_stats['s'] + $race_stats['s'], 'wt' => $basic_stats['wt'] + $race_stats['wt'], 'zw' => $basic_stats['zw'] + $race_stats['zw'], 'ini' => $basic_stats['i'] + $race_stats['i'], 'a' => $basic_stats['a']+ $race_stats['a'], 'zr' => $basic_stats['zr'] + $race_stats['zr'], 'cp' => $basic_stats['cp'] + $race_stats['cp'], 'int' => $basic_stats['intel'] + $race_stats['intel'], 'op' => $basic_stats['op'] + $race_stats['op'], 'sw' => $basic_stats['sw'] + $race_stats['sw'], 'ogd' => $basic_stats['ogd'] + $race_stats['ogd']);
		$arr2 = array('rsz' => $dev_schemat['sz'], 'rww' => $dev_schemat['ww'], 'rus' => $dev_schemat['us'], 'rs' => $dev_schemat['s'], 'rwt' => $dev_schemat['wt'], 'rzw' => $dev_schemat['zw'], 'ri' => $dev_schemat['ini'], 'ra' => $dev_schemat['a'], 'rzr' => $dev_schemat['zr'], 'rcp' => $dev_schemat['cp'], 'rint' => $dev_schemat['intel'], 'rop' => $dev_schemat['op'], 'rsw' => $dev_schemat['sw'], 'rogd' => $dev_schemat['ogd']);
		$arr3 = array('csz' => $current_schemat['sz'] + $race_stats['sz'], 'cww' => $current_schemat['ww'] + $race_stats['ww'], 'cus' => $current_schemat['us'] + $race_stats['us'], 'cs' => $current_schemat['s'] + $race_stats['s'], 'cwt' => $current_schemat['wt'] + $race_stats['wt'], 'czw' => $current_schemat['zw'] + $race_stats['zw'], 'ci' => $current_schemat['i'] + $race_stats['i'], 'ca' => $current_schemat['a'] + $race_stats['a'], 'czr' => $current_schemat['zr'] + $race_stats['zr'], 'ccp' => $current_schemat['cp'] + $race_stats['cp'], 'cint' => $current_schemat['intel'] + $race_stats['intel'], 'cop' => $current_schemat['op'] + $race_stats['op'], 'csw' => $current_schemat['sw'] + $race_stats['sw'], 'cogd' => $current_schemat['ogd'] + $race_stats['ogd']);
		$arr = array_merge($arr1, $arr2, $arr3);
		return $arr;
	}

	public function update_stats($r_stats, $id = "") {
		$arr = array(
			'id' => $id,
			'char_id' => $_SESSION['p_id'],
			'sz' => $this -> input -> post('csz') - $r_stats['sz'],
			'ww' => $this -> input -> post('cww') - $r_stats['ww'],
			'us' => $this -> input -> post('cus') - $r_stats['us'],
			's' => $this -> input -> post('cs') - $r_stats['s'],
			'wt' => $this -> input -> post('cwt') - $r_stats['wt'],
			'zw' => $this -> input -> post('czw') - $r_stats['zw'],
			'i' => $this -> input -> post('ci') - $r_stats['i'],
			'a' => $this -> input -> post('ca') - $r_stats['a'],
			'zr' => $this -> input -> post('czr') - $r_stats['zr'],
			'cp' => $this -> input -> post('ccp') - $r_stats['cp'],
			'intel' => $this -> input -> post('cint') - $r_stats['intel'],
			'op' => $this -> input -> post('cop') - $r_stats['op'],
			'sw' => $this -> input -> post('csw') - $r_stats['sw'],
			'ogd' => $this -> input -> post('cogd') - $r_stats['ogd']
		);
		return $arr;
	}

	public function dev_points($c_id, $id = "") {
		$arr = array(
			'id' => $id,
			'char_id' => $c_id,
			'sz' => $this -> input -> post('d_sz'),
			'ww' => $this -> input -> post('d_ww'),
			'us' => $this -> input -> post('d_us'),
			's' => $this -> input -> post('d_s'),
			'wt' => $this -> input -> post('d_wt'),
			'zw' => $this -> input -> post('d_zw'),
			'ini' => $this -> input -> post('d_i'),
			'a' => $this -> input -> post('d_a'),
			'zr' => $this -> input -> post('d_zr'),
			'cp' => $this -> input -> post('d_cp'),
			'intel' => $this -> input -> post('d_int'),
			'op' => $this -> input -> post('d_op'),
			'sw' => $this -> input -> post('d_sw'),
			'ogd' => $this -> input -> post('d_ogd')
		);
		return $arr;
	}
	
	public function rise_stat() {
		if (!isset($_SESSION['user'])) {
			redirect('Login/form_login');
		} else {
			$id = $_SESSION['p_id'];
			$prof_id = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'profession_id');
			$race_id = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'raceID');
			$data = $this -> get_stats($id, $prof_id, $race_id);
			$data['title'] = "Pierwsze rozwinięcie";
			$this -> form_validation -> set_rules('csz', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('cww', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('cus', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('cs', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('cwt', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('czw', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('ci', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('ca', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('czr', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('ccp', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('cint', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('cop', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('csw', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			$this -> form_validation -> set_rules('cogd', 'Szybkość', 'required', array('required' => "Pole '{field}' nie może być puste"));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/free_rise', $data);
				$this -> load -> view('templates/footer');
			} else {
				$race_stats = $this -> race_model -> stats('rasa', 'raceID', $race_id,['sz', 'ww', 'us', 's', 'wt', 'zw', 'i', 'a', 'zr', 'cp', 'intel', 'op', 'sw', 'ogd']);
				$current_schematic = $this -> update_stats($race_stats);
				$dev_char_id = $this -> universal_model -> get_values('dev_statistics', array('char_id' => $id), 'char_id');
				$dev_stats = $this -> dev_points($id);
				if ($dev_char_id == $id) {
					$this -> universal_model -> delete('dev_statistics', array('char_id' => $dev_char_id));
					$this -> universal_model -> insert('dev_statistics', $dev_stats);
				} else {
					$this -> universal_model -> insert('dev_statistics', $dev_stats);
				}
				$current_schematic['id'] = $this -> universal_model -> get_values('current_schematic', array('char_id' => $_SESSION['p_id']), 'id');
				$this -> universal_model -> update('current_schematic', $current_schematic, array('char_id' => $_SESSION['p_id']));
				redirect('show_char/page_1');
			}
		}
	}
}