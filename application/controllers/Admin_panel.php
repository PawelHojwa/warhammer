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
		$this -> load -> model('char_skills_model');
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
	
	public function check_val($str) {
		if ($str > 0) {
			return "+" . $str;
		} else {
			return "";
		}
	}
	
	public function get_profession() {
		if (isset($_POST['profession']) === TRUE && $_POST['profession'] !== FALSE) {
			$professions = $this -> admin_model -> get_professions($_POST['profession']);
			$title = "";
			if ($_POST['profession'] == 0) {
				$title = "Profesje podstawowe";
			} else {
				$title = "Profesje zaawansowane";
			}
			echo "<table>";
			echo "<caption>" . $title . "</caption>";
			echo "<tr>";
			echo "<th>Profesja</th><th>Sz</th><th>WW</th><th>US</th><th>S</th><th>Wt</th><th>Żw</th><th>I</th><th>A</th><th>Zr</th><th>CP</th><th>Int</th><th>Op</th><th>SW</th><th>Ogd</th><th></th>";
			echo "</tr>";
			foreach ($professions as $profession) {
				echo "<tr>";
				echo "<td>" . $profession -> profession_name . "</td>";
				echo "<td>" . $this -> check_val($profession -> sz) . "</td>";
				echo "<td>" . $this -> check_val($profession -> ww) . "</td>";
				echo "<td>" . $this -> check_val($profession -> us) . "</td>";
				echo "<td>" . $this -> check_val($profession -> s) . "</td>";
				echo "<td>" . $this -> check_val($profession -> wt) . "</td>";
				echo "<td>" . $this -> check_val($profession -> zw) . "</td>";
				echo "<td>" . $this -> check_val($profession -> ini) . "</td>";
				echo "<td>" . $this -> check_val($profession -> a) . "</td>";
				echo "<td>" . $this -> check_val($profession -> zr) . "</td>";
				echo "<td>" . $this -> check_val($profession -> cp) . "</td>";
				echo "<td>" . $this -> check_val($profession -> intel) . "</td>";
				echo "<td>" . $this -> check_val($profession -> op) . "</td>";
				echo "<td>" . $this -> check_val($profession -> sw) . "</td>";
				echo "<td>" . $this -> check_val($profession -> ogd) . "</td>";
				echo "<td><a href='delete/del_prof?id='" . $profession -> id . "'>Usuń</a></td>";
				echo "</tr>";
 			}
			echo "</table>";
		} else {
			echo "Błąd! Nie znaleziono profesji...!!";
		}
	}

	public function valid_profession_name($id = "") {
		$profession_type = $this -> input -> post('profession_type');
		$class_id = 0;
		$advance = 0;
		if ($profession_type == 1) {
			$class_id = $this -> input -> post('class_type');
		} else {
			$advance = 1;
		}
		$arr = array(
			'id' => $id,
			'profession_name' => $this -> input -> post('profession_name'),
			'class_id' => $class_id,
			'advancement' => $advance
		);
		return $arr;
	}

	public function valid_skills($prof_id, $id = '') {
		$skills = $this -> input -> post('skill');
		$arr = array(
			'id' => $id,
			'profession_id' => $prof_id,
			'skill_id' => $skills,
			'chance' => 0
		);
		return $arr;
	}
	
	public function valid_item($prof_id, $id = '') {
		$items = $this -> input -> post('item');
		$arr = array(
			'id' => $id,
			'profession_id' => $prof_id,
			'inventory_id' => $items,
			'quality' => 1,
			'options' => 0 
		);
		return $arr;
	}

	public function valid_statistics($prof_id) {
		$arr = array(
			'id' => $prof_id,
			'sz' => $this -> input -> post('sz'),
			'ww' => $this -> input -> post('ww'),
			'us' => $this -> input -> post('us'),
			's' => $this -> input -> post('s'),
			'wt' => $this -> input -> post('wt'),
			'zw' => $this -> input -> post('zw'),
			'ini' => $this -> input -> post('ini'),
			'a' => $this -> input -> post('sz'),
			'zr' => $this -> input -> post('zr'),
			'cp' => $this -> input -> post('cp'),
			'intel' => $this -> input -> post('intel'),
			'op' => $this -> input -> post('op'),
			'sw' => $this -> input -> post('sw'),
			'ogd' => $this -> input -> post('ogd')
		); 
		return $arr;
	}
	
	public function add_profession() {
		$skill_id = $this -> char_skills_model -> get_skills('skillid');
		$skill_name = $this -> char_skills_model -> get_skills('skillName');
		$class_id = $this -> admin_model -> get_classes('classID');	
		$class_name = $this -> admin_model -> get_classes('className');
		$data['classes'] = array_combine($class_id, $class_name);
		$data['items'] = $this -> admin_model -> get_items();
		$data['subtitle'] = 'Dodawanie/usuwanie profesji';
		$data['skills'] = array_combine($skill_id, $skill_name);
		$this -> form_validation -> set_rules('profession_name', 'Nazwa profesji', 'required', array('required' => '{field} jest wymagana'));
		$this -> form_validation -> set_rules('profession_type', 'Rodzaj profesji', 'required', array('required' => '{field} jest wymagany'));
		//$this -> form_validation -> set_rules('skills[]', 'Umiejętność', 'required', array('required' => 'Proszę wygrać co najmniej jedną {field}'));
		//$this -> form_validation -> set_rules('items[]', 'Ekwipunek', 'required', array('required' => 'Proszę wybarć co najmniej jeden przedmito {field}u'));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('admin/add_profession', $data);
		} else {
			$profession_name = $this -> valid_profession_name();
			$this -> universal_model -> insert('professions', $profession_name);
			$id = $this -> admin_model -> get_profession_id();
			$profession_id = $id -> id;
			$profession_skill = $this -> valid_skills($profession_id);
			$profession_items = $this -> valid_item($profession_id);
			$profession_statistics = $this -> valid_statistics($profession_id);
			$this -> admin_model -> profession_skill_insert($profession_skill);
			$this -> admin_model -> profession_items_insert($profession_items);
			$this -> universal_model -> insert('professions_statistics', $profession_statistics);
			redirect('admin_panel/admin');
		}
	}

	public function valid_race($id = '') {
		$arr = array(
			'raceID' => $id,
			'raceName' => $this -> input -> post('race_name'),
			'sz' => $this -> input -> post('sz'),
			'ww' => $this -> input -> post('ww'),
			'us' => $this -> input -> post('us'),
			's' => $this -> input -> post('s'),
			'wt' => $this -> input -> post('wt'),
			'zw' => $this -> input -> post('zw'),
			'i' => $this -> input -> post('ini'),
			'a' => $this -> input -> post('a'),
			'zr' => $this -> input -> post('cp'),
			'cp' => $this -> input -> post('cp'),
			'intel' => $this -> input -> post('intel'),
			'op' => $this -> input -> post('op'),
			'sw' => $this -> input -> post('sw'),
			'ogd' => $this -> input -> post('ogd'),
		);
		return $arr;
	}
	
	public function valid_race_skill($r_id, $id ='') {
		$skills = $this -> input -> post('skill');	
		$arr = array(
			'id' => $id,
			'race_id' => $r_id,
			'skill_id' => $skills,
			'options' => 0
		);
		return $arr;
	}

	public function add_race() {
		$races = $this -> admin_model -> get_race();
		$skill_id = $this -> char_skills_model -> get_skills('skillid');
		$skill_name = $this -> char_skills_model -> get_skills('skillName');
		$data['race'] = $races;
		$data['subtitle'] = 'Dodawanie/usuwanie rasy';
		$data['skills'] = array_combine($skill_id, $skill_name);
		$this -> form_validation -> set_rules('race_name', 'Nazwa rasy', 'required', array('required' => '{field} jest wymagana'));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('admin/add_races', $data);
		} else {
			$race_name = $this -> valid_race();
			$this -> universal_model -> insert('rasa', $race_name);
			$id = $this -> admin_model -> get_race_id();
			$race_id = $id -> raceID;
			$race_skill = $this -> valid_race_skill($race_id);
			$this -> admin_model -> race_skill_insert($race_skill);
			redirect('admin_panel/admin');
			
		}
	}
}