<?php
class Spells extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('form');
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> model('universal_model');
		$this -> load -> model('spell_model');
		$this -> load -> library('session');
		$this -> load -> library('form_validation');
	}
	
	public function get_spell() {
		return $this -> spell_model -> spells();
	}
	
	public function verifity_data($id = "") {
		$spell = $this -> input -> post('spell');
		$data = array(
			'id' => $id,
			'char_id' => $_SESSION['p_id'],
			'spell' => $spell
		);
		return $data;
	}
	
	public function spell_form() {
		if (!isset($_SESSION['user'])) {
			redirect('login/view_form');
		} else {
			$this -> form_validation -> set_rules('spell[]', 'Czar', 'required', array('required' => 'Nie wybrano czarów'));
			$data['amount'] = 2;
			$data['spells'] = $this -> get_spell();
			$data['title'] = "Zaklęcia";
			$data['sub_title'] = 'Wybierz zaklęcia';
			$char_id = $this -> universal_model -> get_values('char_skills', array('char_id' => $_SESSION['p_id']), 'char_id');
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/spells_form', $data);
				$this -> load -> view('templates/footer');
			} else {
				if ($char_id == NULL) {
					$arr = $this -> verifity_data();
					$this -> spell_model -> multi_insert('char_spells', $arr);
					redirect('free_stat/rise_stat');
				} else {
					$this -> universal_model -> delete('char_spells', array('char_id' => $_SESSION['p_id']));
					$arr = $this -> verifity_data();
					$this -> spell_model -> multi_insert('char_spells', $arr);
					redirect('free_stat/rise_stat');
				}
			}
		}
	}
}
