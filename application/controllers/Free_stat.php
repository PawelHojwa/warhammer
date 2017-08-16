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

	public function update_stats($id = "") {
		$arr = array(
			'id' => $id,
			'char_id' => $_SESSION['char_id'],
			'sz' => $this -> input -> post('csz'),
			'ww' => $this -> input -> post('cww'),
			'us' => $this -> input -> post('cus'),
			's' => $this -> input -> post('cs'),
			'wt' => $this -> input -> post('cswt'),
			'zw' => $this -> input -> post('czw'),
			'i' => $this -> input -> post('ci'),
			'a' => $this -> input -> post('ca'),
			'zr' => $this -> input -> post('czr'),
			'cp' => $this -> input -> post('ccp'),
			'intel' => $this -> input -> post('cint'),
			'op' => $this -> input -> post('cop'),
			'sw' => $this -> input -> post('csw'),
			'ogd' => $this -> input -> post('cogd')
		);
		return $arr;
	}
	
	public function rise_stat() {
		$id = $_SESSION['p_id'];
		$data = $this -> get_stats($id);
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
			$current_schematic = $this -> update_stats();
			$this -> universal_model -> update('current_schematic', $current_schematic, array('char_id' => $_SESSION['p_id']));
			redirect('show_char/page_1');
		}
	}
}