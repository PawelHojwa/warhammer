<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Spell extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this -> load -> library('table');
		$this -> load -> helper('form');
		$this -> load -> helper('html');
		$this -> load -> helper('url');
		$this -> load -> model('admin_model');
		$this -> load -> model('universal_model');
		$this -> load -> library('session');
	}
	
	public function get_spells() {
		if ($this -> input -> post('spell_cat') !== FALSE && $this -> input -> post('spell_lvl') !== FALSE) {
			$type = $this -> input -> post('spell_cat');
			$lvl = $this -> input -> post('spell_lvl');
			$arr = $this -> admin_model -> get_spells(['spell_type' => $type, 'spell_lvl' => $lvl]);
			if (!empty($arr) && is_array($arr)) {
				$this -> table -> set_heading('Nazwa', 'Typ', 'Poziom', 'PM', 'Czas trwania',
				'Zasięg', 'Składniki', 'Efekt');
				foreach ($arr as $row) {
					$hide = ['data' => $row -> id, 'class' => 'hide'];
					$this -> table -> add_row(
						$hide,
				 		$row -> cast_name,
						$row -> type,
						$row -> spell_lvl,
						$row -> spell_cost_pm,
						$row -> spell_duration,
						$row -> spell_range,
						$row -> spell_components,
						anchor('show/spell_description?id=' . $row -> id, 'Pokaż', ['class' => 'spell-desc'])
					);
				}
				echo $this -> table -> generate();
			} else {
				echo "Wybierz poziom czaru.";
			}
		}
	}
	
	public function set_data() {
		$types = $this -> get_spell_types();
		$lvl = ['1' => 1, '2' => 2, '3' => 3, '4' => 4];
		$arr = [
			'title' => 'Zaklęcia',
			'types' => $types,
			'lvl' => $lvl,
			'name' => $this -> session -> user
		];
		return $arr;
	}
	
	public function get_spell_types() {
		$arr = $this -> universal_model -> get_data('casts_type');
		$arr_id = $arr_name = [];
		foreach ($arr as $row) {
			$arr_id[] = $row['id'];
			$arr_name[] = $row['type'];
		}
		return array_combine($arr_id, $arr_name);
	}
	
	public function show() {
		$data = $this -> set_data();
		$this -> load -> view('templates/header', $data);
		if ($this -> session -> has_userdata('userID')) {
			$this -> load -> view('form/success', $data);
		} else {
			$this -> load -> view('form/login');
		}
		$this -> load -> view('show/spells', $data);
		$this -> load -> view('templates/footer');
	}
}