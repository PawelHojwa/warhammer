<?php
class Add_spells extends CI_Controller {
	public function __construct() {
		parent:: __construct();
		$this -> load -> model('universal_model');
		$this -> load -> library('session');
		$this -> load -> model('spell_model');
		$this -> load -> library('form_validation');
		$this -> load -> helper('html');
		$this -> load -> helper('form');
		$this -> load -> helper('url');
		$this -> load -> model('char_skills_model');
	}
	
	public function get_player_profession($id) {
		$arr = $this -> char_skills_model -> get_character_skills($id);
		return $arr;
	}
	
	public function get_spells() {
		$arr = $this -> spell_model -> spells();
		return $arr;
	}
	
	public function add () {
		if (!isset($_SESSION['user'])) {
			redirect('login/view_form');
		} else {
			$player_id = $_SESSION['p_id'];
			$data = array();
			$spells = $this -> get_spells();
			$spells_id = array();
			$spell_name = array();
			foreach ($spells as $spell) {
				$spells_id[] = $spell['spell_name_id'];
				$spell_name[] = $spell['cast_name'];
			}
			$data['spells'] = array_combine($spells_id, $spell_name);
			$profession_name = $this -> get_player_profession($player_id);
			$data['title'] = "Dodawanie czarów";
			$data['char_id'] = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'id');
			$data['profession_name'] = $profession_name['profName'];
			$data['amount'] = 0;
			$exp = $this -> universal_model -> get_values('characters', array('id' => $player_id), 'exp');
			if (floor($exp / 100) == 0) {
				redirect('login/logout');
			} else {
				$data['amount'] = floor($exp / 100);
			}
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/add_spells', $data);
				$this -> load -> view('templates/footer');
			} else {
				$diff_exp = $this -> input -> post('exp');
				$arr = $this -> verify_spell($player_id);
				$this -> spell_model -> multi_insert('char_spells', $arr);
				$this -> universal_model -> update('characters', array('exp' => ($exp - $diff_exp)), array('id' => $player_id));
				redirect('add_incrase/show_options');
			}
		}
		/*echo "<pre>";
		var_dump($data);
		echo "</pre>";*/
	}
	
	public function character_spells() {
		if (isset($_REQUEST['char_id']) === TRUE && $_REQUEST['char_id'] !== FALSE) {
			$spells = $this -> spell_model -> get_spells($_REQUEST['char_id']);
			$character_spells = array();
			//if (!empty($spells) && is_array($spells)) {
				foreach ($spells as $spell) {
					$character_spells[] = $spell['id'];
				}
			//}
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($character_spells));
		} else {
			echo "Błąd";
		}
	}
	
	public function verify_spell($char_id, $id = "") {
		$spells = $this -> input -> post('spell');
		$arr = array(
			'id' => $id,
			'char_id' => $char_id,
			'spell' => $spells
		);
		return $arr;
	}
}