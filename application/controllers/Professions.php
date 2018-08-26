<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Professions extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('html');
		$this -> load -> helper('url');
		$this -> load -> helper('form');
		$this -> load -> library('table');
		$this -> load -> model('admin_model');
		$this -> load -> model('universal_model');
		$this -> load -> library('session');
	}
	
	public function set_data() {
		$arr = [
			'title' => 'Profesje',
			'name' => $this -> session -> user
		];
		return $arr;
	}
	
	public function check_val($val) {
		if ($val == 0) {
			$val = "-";
		} else {
			$val = "+" . $val;
		}
		return $val;
	}
	
	public function show_professions() {
		$data = $this -> set_data();
		$this -> load -> view('templates/header', $data);
		if ($this -> session -> has_userdata('userID')) {
				$this -> load -> view('form/success', $data);
			} else {
				$this -> load -> view('form/login');
			}
		$this -> load -> view('show/professions', $data);
		$this -> load -> view('templates/footer');
	}
	
	public function get_professions() {
		if ($this -> input -> post('adv') !== TRUE) {
			$adv = $this -> input -> post('adv');
			$professions = $this -> admin_model -> get_professions($adv);
			$this -> table -> set_heading('Profesja', 'Sz', 'WW', 'US', 'S', 'Wt', 'Żw', 
			'I', 'A', 'Zr', 'CP', 'Int', 'Op', 'SW', 'Ogd', 'Umiejętności', 'Profesje wyjściowe');
			if ($adv == 0) {
				$this -> table -> set_caption('Profesje podstawowe');
			} else {
				$this -> table -> set_caption('Profesje zaawansowane');
			}
			foreach ($professions as $profession) {
				$hide_row = ['data' => $profession -> id, 'class' => 'hide'];
				$this -> table -> add_row(
					$hide_row,
					$profession -> profession_name,
					$this -> check_val($profession -> sz),
					$this -> check_val($profession -> ww),
					$this -> check_val($profession -> us),
					$this -> check_val($profession -> s),
					$this -> check_val($profession -> wt),
					$this -> check_val($profession -> zw),
					$this -> check_val($profession -> ini),
					$this -> check_val($profession -> a),
					$this -> check_val($profession -> zr),
					$this -> check_val($profession -> cp),
					$this -> check_val($profession -> intel),
					$this -> check_val($profession -> op),
					$this -> check_val($profession -> sw),
					$this -> check_val($profession -> ogd),
					anchor('show/prof_skills?id=' . $profession -> id, 'Pokaż', array('class'=>'skill-list')),
					anchor('show/prof_exit?id=' . $profession -> id, 'Pokaż', array('class' => 'exit')) 
				);
			}
			echo $this -> table -> generate();
		} else {
			echo "Nie ma takiej profesji...!!!";
		}
	}
}