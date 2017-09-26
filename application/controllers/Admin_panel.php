<?php
class Admin_panel extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> library('session');
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> model('admin_model');
		$this -> load -> library('form_validation');
		$this -> load -> model('universal_model');
		$this -> load -> helper('form');
	}
	
	public function admin() {
		$data = array(
			'title' => 'Panel administratora',
			'char_names' => 'Postacie',
			'add_skill' => 'Dodaj umiejętność',
			'add_spell' => 'Dodaj czar',
			'add_profession' => 'Dodaj profesje',
			'add_race' => 'Dodaj rase',
			'add_class' => 'Dodaj klase'
		);
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('admin/panel', $data);
		$this -> load -> view('templates/footer');
	}
	
	public function get_character_names() {
		$arr = array();
		return $arr = $this -> admin_model -> get_names();
	}
	
	public function get_skills() {
		$arr = array();
		return $arr = $this -> admin_model -> get_skills();
	}
	
	public function skills_data($id = '') {
		$arr = array(
			'skillid' => $id,
			'skillName' => $this -> input -> post('skill_name')
		);
		return $arr;
	}
	
	public function show_list() {
		$data['chars'] = $this -> get_character_names();
		$data['subtitle'] = 'Wszystkie postacie';
		$this -> load -> view('admin/show_list', $data);
	}
	
	public function add_skill() {
		$data['skills'] = $this -> get_skills();
		$data['subtitle'] = "Dodaj/usuń umiejętność";
		$this -> form_validation -> set_rules('skill_name', 'Nazwa umiejętności', 'required', array('required' => '{field} jest wymagana'));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('admin/add_skills', $data);
		} else {
			$skill_data = $this -> skills_data();
			$this -> universal_model -> insert('umiejetnosci', $skill_data);
			redirect('admin_panel/admin');
		}
	}
	
	public function get_spell_id() {
		$data = $this -> admin_model -> get_spell_id();
		return $data;
	}
	
	public function sp_name($id = '') {
		$arr = array(
			'id' => $id,
			'cast_name' => $this -> input -> post('spell_name')
		);
		return $arr;
	}
	
	public function spell($spell_name_id, $id ="") {
		$arr = array(
			'id' => $id,
			'spell_name_id' => $spell_name_id,
			'spell_type' => $this -> input -> post('spell_type'),
			'spell_lvl' => $this -> input -> post('spell_lvl'),
			'spell_cost_pm' => $this -> input -> post('spell_cost'),
			'spell_duration' => $this -> input -> post('spell_duration'),
			'spell_range' => $this -> input -> post('spell_range'),
			'spell_components' => $this -> input -> post('spell_components'),
			'spell_effect' => $this -> input -> post('spell_effect')
		);
		return $arr;
	}
	
	public function add_spell() {
		$data['spells'] = $this -> admin_model -> get_spells();
		$data['subtitle'] = "Dodaj/Usuń czar";
		$spells = $this -> universal_model -> get_data('casts_type');
		$spell_id = array();
		$spell_type = array();
		foreach ($spells as $spell) {
			$spell_id[] = $spell['id'];
			$spell_type[] = $spell['type'];
		}
		$data['spell_type'] = array_combine($spell_id, $spell_type);
		$lvl = array(0, 1, 2, 3, 4);
		$data['spell_lvl'] = $lvl;
		$this -> form_validation -> set_rules('spell_name', 'Nazwa czaru', 'required', array('required' => '{field} jest wymagana'));
		$this -> form_validation -> set_rules('spell_lvl', 'Poziom czaru', 'required', array('required' => '{field} jest wymagany'));
		$this -> form_validation -> set_rules('spell_cost', 'Koszt czaru', 'required', array('required' => '{field} jest wymagany'));
		$this -> form_validation -> set_rules('spell_duration', 'Długość działania', 'required', array('required' => '{field} jest wymagana'));
		$this -> form_validation -> set_rules('spell_type', 'Typ czaru', 'required', array('required' => '{field} jest wymagany'));
		$this -> form_validation -> set_rules('spell_range', 'Zasięg czaru', 'required', array('required' => '{field} jest wymagany'));
		$this -> form_validation -> set_rules('spell_components', 'Komponenty', 'required', array('required' => '{field} są wymagane'));
		$this -> form_validation -> set_rules('spell_effect', 'Efekt', 'required', array('required' => '{field} jest wymagany'));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('admin/add_spells', $data);
		} else {
			$spell_name = $this -> sp_name();
			$this -> universal_model -> insert('casts_names', $spell_name);
			$spell_name_id = $this -> get_spell_id();
			
			$spell = $this -> spell($spell_name_id -> id);
			$this -> universal_model -> insert('spells', $spell);
			echo "<pre>";
			var_dump($spell);
			echo "</pre>";
			redirect('admin_panel/add_spell');
		}
	}
}