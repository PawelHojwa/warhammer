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
	
	public function get_character_names() {
		$arr = array();
		return $arr = $this -> admin_model -> get_names();
	}
	
	public function get_skills() {
		$arr = $this -> admin_model -> get_skills();
		$lp = 0;
		echo "<table>";
		echo "<tr>";
		echo "<th>Lp.</th><th>Umiejętność</th><th></th>";
		foreach ($arr as $row) {
			echo "<tr>";
			echo "<td>" . ++$lp . "</td>";
			echo "<td>" . $row -> skillName . "</td>";
			echo "<td>" . anchor('delete/del_skill?=' . $row -> skillID, 'Usuń') . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	}
	
	public function check_data($data_name, $tab_name, $col_name) {
		$name = $this -> input -> post($data_name);
		$data = $this -> universal_model -> get_values($tab_name, array($col_name => $name), $col_name);
		return $data;
	} 
	
	public function skills_data($id = '') {
		$arr = array(
			'skillid' => $id,
			'skillName' => $this -> input -> post('skill_name')
		);
		return $arr;
	}
	
	public function show_list() {
		$data = array(
			'title' => 'Panel administratora',
			'char_names' => 'Postacie',
			'add_skill' => 'Dodaj umiejętność',
			'add_spell' => 'Dodaj czar',
			'add_profession' => 'Dodaj profesje',
			'add_race' => 'Dodaj rase',
			'add_class' => 'Dodaj klase',
			'add_monster' => 'Dodaj potwora'
		);
		$data['chars'] = $this -> get_character_names();
		$data['subtitle'] = 'Wszystkie postacie';
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('admin/admin_menu', $data);
		$this -> load -> view('admin/show_list', $data);
		$this -> load -> view('templates/footer');
	}
	
	public function add_skill() {
		$data = array(
			'title' => 'Panel administratora',
			'char_names' => 'Postacie',
			'add_skill' => 'Dodaj umiejętność',
			'add_spell' => 'Dodaj czar',
			'add_profession' => 'Dodaj profesje',
			'add_race' => 'Dodaj rase',
			'add_class' => 'Dodaj klase',
			'add_monster' => 'Dodaj potwora'
		);
		$data['subtitle'] = "Dodaj/usuń umiejętność";
		$this -> form_validation -> set_rules('skill_name', 'Nazwa umiejętności', 'required', array('required' => '{field} jest wymagana'));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_skills', $data);
			$this -> load -> view('templates/footer');
		} else {
			$skill_name = $this -> check_data('skill_name', 'umiejetnosci', 'skillName');
			$add = "";
			if (empty($skill_name)) {
				$skill_data = $this -> skills_data();
				$this -> universal_model -> insert('umiejetnosci', $skill_data);
				$last_skill = $this -> universal_model -> last_index('umiejetnosci', 'skillName');
				$add = "Wprowadzono <b>" . $last_skill . "</b>";
			} else {
				$add = $skill_name . " już istnieje!";
			}
			$data['added'] = $add;
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_skills', $data);
			$this -> load -> view('templates/footer');
		}
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
	
	public function get_spells() {
		if (isset($_POST['spell']) === TRUE && $_POST['spell'] !== FALSE) {
			$spell_type = $_POST['spell'];
			$spell_lvl = $_POST['lvl'];
			$spell = array('spell_type' => $spell_type, 'spell_lvl' => $spell_lvl);
			$spells = $this -> admin_model -> get_spells($spell);
			if ($spell_type > 1 && $spell_lvl < 1) {
				echo "Wybierz poziom czaru";
			} else {
				echo "<table>";
				echo "<tr>";
				echo "<th>Nazwa czaru</th><th>Typ</th><th>Poziom czaru</th><th>Koszt PM</th><th>Czas trwania</th><th>Zasięg</th><th>Składniki</th><th>Efekt</th>";
				echo "</tr>";
				foreach ($spells as $spell) {
					echo "<tr>";
					echo "<td>" . $spell -> cast_name . "</td>";
					echo "<td>" . $spell -> type . "</td>";
					echo "<td class='text-center'>" . $spell -> spell_lvl . "</td>";
					echo "<td class='text-center'>" . $spell -> spell_cost_pm . "</td>";
					echo "<td>" . $spell -> spell_duration . "</td>";
					echo "<td>" . $spell -> spell_range . "</td>";
					echo "<td>" . $spell -> spell_components  . "</td>";
					echo "<td>" . $spell -> spell_effect . "</td>";
					echo "<tr>";
				 }
				echo "</table>";
			}
		}
	}
	
	public function add_spell() {
		$data = array(
			'title' => 'Panel administratora',
			'char_names' => 'Postacie',
			'add_skill' => 'Dodaj umiejętność',
			'add_spell' => 'Dodaj czar',
			'add_profession' => 'Dodaj profesje',
			'add_race' => 'Dodaj rase',
			'add_class' => 'Dodaj klase',
			'add_monster' => 'Dodaj potwora'
		);
		$data['subtitle'] = "Dodaj/usuń czar";
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
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_spells', $data);
			$this -> load -> view('templates/footer');
		} else {
			$spell = $this -> check_data('spell_name', 'casts_names', 'cast_name');
			$add = "";
			if (empty($spell)) {
				$spell_name = $this -> sp_name();
				$this -> universal_model -> insert('casts_names', $spell_name);
				$spell__id = $this -> universal_model -> last_index('casts_names', 'id');
				$this -> universal_model -> insert('spells', $spell_id);
				$last_spell = $this -> universal_model -> last_index('casts_names', 'cast_name');
				$add = "Wprowadzono <b>" . $last_spell . "</b>";
			} else {
				$add = $spell . " już istnieje!";
			}
			$data['added'] = $add;
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_spells', $data);
			$this -> load -> view('templates/footer');
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
		$data = array(
			'title' => 'Panel administratora',
			'char_names' => 'Postacie',
			'add_skill' => 'Dodaj umiejętność',
			'add_spell' => 'Dodaj czar',
			'add_profession' => 'Dodaj profesje',
			'add_race' => 'Dodaj rase',
			'add_class' => 'Dodaj klase',
			'add_monster' => 'Dodaj potwora'
		);
		$skill_id = $this -> char_skills_model -> get_skills('skillid');
		$skill_name = $this -> char_skills_model -> get_skills('skillName');
		$class_id = $this -> admin_model -> get_classes('classID');	
		$class_name = $this -> admin_model -> get_classes('className');
		$data['classes'] = array_combine($class_id, $class_name);
		$data['items'] = $this -> admin_model -> get_items();
		$data['subtitle'] = 'Dodaj/usun profesję';
		$data['skills'] = array_combine($skill_id, $skill_name);
		$this -> form_validation -> set_rules('profession_name', 'Nazwa profesji', 'required', array('required' => '{field} jest wymagana'));
		$this -> form_validation -> set_rules('profession_type', 'Rodzaj profesji', 'required', array('required' => '{field} jest wymagany'));
		//$this -> form_validation -> set_rules('skills[]', 'Umiejętność', 'required', array('required' => 'Proszę wygrać co najmniej jedną {field}'));
		//$this -> form_validation -> set_rules('items[]', 'Ekwipunek', 'required', array('required' => 'Proszę wybarć co najmniej jeden przedmito {field}u'));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_profession', $data);
			$this -> load -> view('templates/footer');
		} else {
			$profession = $this -> check_data('profession_name', 'professions', 'profession_name');
			$add = "";
			if (empty($profession)) {
				$profession_name = $this -> valid_profession_name();
				$this -> universal_model -> insert('professions', $profession_name);
				$profession_id = $this -> universal_model -> last_index('profesje', 'id');
				$profession_skill = $this -> valid_skills($profession_id);
				$profession_items = $this -> valid_item($profession_id);
				$profession_statistics = $this -> valid_statistics($profession_id);
				$this -> admin_model -> profession_skill_insert($profession_skill);
				$this -> admin_model -> profession_items_insert($profession_items);
				$this -> universal_model -> insert('professions_statistics', $profession_statistics);
				$last_profession = $this -> universal_model -> last_index('professions', 'profession_name');
				$add = "Wprowadzono <b>" . $last_profession . "</b>";
			} else {
				$add = $profession . " już istnieje!";
			}
			$data['added'] = $add;
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_profession', $data);
			$this -> load -> view('templates/footer');
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

	public function get_race() {
		$races = $this -> admin_model -> get_race();
		echo "<table class='race_table'>";
		echo "<tr>";
		echo "<th>Rasa</th><th>Sz</th><th>WW</th><th>US</th><th>S</th><th>Wt</th><th>Żw</th><th>I</th><th>A</th><th>Zr</th><th>CP</th><th>Int<th>Op</th><th>SW</th><th>Ogd</th><th></th>";
		echo "</tr>";
		foreach ($races as $row) {
			echo "<tr>";	
			echo "<td>" . $row -> raceName . "</td>";
			echo "<td>" . $row -> sz . "</td>";
			echo "<td>" . $row -> ww . "</td>";
			echo "<td>" . $row -> us . "</td>";
			echo "<td>" . $row -> s . "</td>";
			echo "<td>" . $row -> wt . "</td>";
			echo "<td>" . $row -> zw . "</td>";
			echo "<td>" . $row -> i . "</td>";
			echo "<td>" . $row -> a . "</td>";
			echo "<td>" . $row -> zr . "</td>";
			echo "<td>" . $row -> cp . "</td>";
			echo "<td>" . $row -> intel . "</td>";
			echo "<td>" . $row -> op . "</td>";
			echo "<td>" . $row -> sw . "</td>";
			echo "<td>" . $row -> ogd . "</td>";
			echo "<td>" . anchor('delete/del_race$id= ' . $row -> raceID,  'Usuń') . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	}

	public function add_race() {
		$data = array(
			'title' => 'Panel administratora',
			'char_names' => 'Postacie',
			'add_skill' => 'Dodaj umiejętność',
			'add_spell' => 'Dodaj czar',
			'add_profession' => 'Dodaj profesje',
			'add_race' => 'Dodaj rase',
			'add_class' => 'Dodaj klase',
			'add_monster' => 'Dodaj potwora'
		);
		$skill_id = $this -> char_skills_model -> get_skills('skillid');
		$skill_name = $this -> char_skills_model -> get_skills('skillName');
		$data['subtitle'] = 'Dodaj/usuń rasy';
		$data['skills'] = array_combine($skill_id, $skill_name);
		$this -> form_validation -> set_rules('race_name', 'Nazwa rasy', 'required', array('required' => '{field} jest wymagana'));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_races', $data);
			$this -> load -> view('templates/footer');
		} else {
			$race = $this -> check_data('race_name', 'rasa', 'raceName');
			$add = "";
			if (empty($race)) {
				$race_name = $this -> valid_race();
				$this -> universal_model -> insert('rasa', $race_name);
				$race_id = $this -> universal_model -> last_index('rasa', 'raceID');
				$race_skill = $this -> valid_race_skill($race_id);
				$this -> admin_model -> race_skill_insert($race_skill);
				$last_race = $this -> universal_model -> last_index('rasa', 'raceName');
				$add = "Wprowadzono <b>" . $last_race . "</b>";
			} else {
				$add = $race . " już istnieje!";
			}
			$data['added'] = $add;
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_races', $data);
			$this -> load -> view('templates/footer');
		}
	}
	
	public function get_classes() {
		$classes = $this -> admin_model -> get_classess();
		echo "<table class='class-table'>";
		echo "<tr>";
		echo "<th>Nazwa klasy</th><th></th>";
		foreach ($classes as $row) {
			echo "<tr>";
			echo "<td>" . $row -> className . "</td>";
			echo "<td>" . anchor('delete/del_class?=' . $row -> classId, "Usuń") . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	}
	
	public function add_class() {
		$data = array(
			'title' => 'Panel administratora',
			'char_names' => 'Postacie',
			'add_skill' => 'Dodaj umiejętność',
			'add_spell' => 'Dodaj czar',
			'add_profession' => 'Dodaj profesje',
			'add_race' => 'Dodaj rase',
			'add_class' => 'Dodaj klase',
			'add_monster' => 'Dodaj potwora'
		);
		$items = $this -> admin_model -> get_items();
		$data['items'] = $items;
		$data['subtitle'] = 'Dodaj/usuń klase';
		$this -> form_validation -> set_rules('class_name', 'Nazwa klasy', 'required', array('required' => '{field} jest wymagana'));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_class', $data);
			$this -> load -> view('templates/footer');
		} else {
			$class = $this -> check_data('class_name', 'classes' ,'className');
			if (empty($class)) {
				$class_name = $this -> valid_class();
				$this -> universal_model -> insert('classes', $class_name);
				$class_id = $this -> universal_model -> last_index('classes', 'classID');
				$class_items = $this -> valid_class_items($class_id);
				$this -> admin_model -> class_items_multi_insert($class_items);
				$last_class = $this -> universal_model -> last_index('classes', 'className');
				$add = "Wprowadzono <b>" . $last_class . "</b>";
			} else {
				$add = $class . " już istnieje!";
			}
			$data['added'] = $add;
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_class', $data);
			$this -> load -> view('templates/footer');
		}
	}
	
	public function valid_class($id = "") {
		$arr = array(
			'classID' => $id,
			'className' => $this -> input -> post('class_name')
		);
		return $arr;
	}
	
	public function valid_class_items($c_id, $id = '') {
		$items = $this -> input -> post('item');
		$arr = array(
			'id' => $id,
			'inventory_id' => $items,
			'classID' => $c_id,
			'amount' => 1,
			'options' => 0
		);
		return $arr;
	}
	
	public function get_monsters() {
		if (isset($_POST['monster']) === TRUE && $_POST['monster'] !== FALSE) {
			$monsters = $this -> admin_model -> get_monster($_POST['monster']);
			echo "<table>";
			echo "<tr>";
			echo "<th>Nazwa potwora</th><th>Sz</th><th>WW</th><th>US</th><th>S</th><th>Wt</th><th>Żw</th><th>I</th><th>A</th><th>Zr</th><th>CP</th><th>Int</th><th>Op</th><th>SW</th><th>Ogd</th>";
			echo "</tr>";
			foreach ($monsters as $monster) {
				echo "<tr>";
				echo "<td>" . $monster -> monsterName . "</td>";
				echo "<td>" . $monster -> sz . "</td>";
				echo "<td>" . $monster -> ww . "</td>";
				echo "<td>" . $monster -> us . "</td>";
				echo "<td>" . $monster -> s . "</td>";
				echo "<td>" . $monster -> wt . "</td>";
				echo "<td>" . $monster -> zw . "</td>";
				echo "<td>" . $monster -> i . "</td>";
				echo "<td>" . $monster -> a . "</td>";
				echo "<td>" . $monster -> zr . "</td>";
				echo "<td>" . $monster -> cp . "</td>";
				echo "<td>" . $monster -> intel . "</td>";
				echo "<td>" . $monster -> op . "</td>";
				echo "<td>" . $monster -> sw . "</td>";
				echo "<td>" . $monster -> ogd . "</td>";
				echo "<td>" . anchor('delete/del_monster?=' . $monster -> monsterID, 'Usuń') . "</td>";
				echo "</tr>";
			}
			echo "</table>";
		} else {
			echo "Błąd!";
		}
	}
	
	public function valid_monster($id = "") {
		$arr = array(
			'monsterID' => $id,
			'monsterName' => $this -> input -> post('monster_name'),
			'categoryID' => $this -> input -> post('category'),
			'sz' => $this -> input -> post('sz'),
			'ww' => $this -> input -> post('ww'),
			'us' => $this -> input -> post('us'),
			's' => $this -> input -> post('s'),
			'wt' => $this -> input -> post('wt'),
			'zw' => $this -> input -> post('zw'),
			'i' => $this -> input -> post('i'),
			'a' => $this -> input -> post('a'),
			'zr' => $this -> input -> post('zr'),
			'cp' => $this -> input -> post('cp'),
			'intel' => $this -> input -> post('intel'),
			'op' => $this -> input -> post('op'),
			'sw' => $this -> input -> post('sw'),
			'ogd' => $this -> input -> post('ogd'),
		);
		return $arr;
	}
	
	public function add_monster() {
		$data = array(
			'title' => 'Panel administratora',
			'char_names' => 'Postacie',
			'add_skill' => 'Dodaj umiejętność',
			'add_spell' => 'Dodaj czar',
			'add_profession' => 'Dodaj profesje',
			'add_race' => 'Dodaj rase',
			'add_class' => 'Dodaj klase',
			'add_monster' => 'Dodaj potwora'
		);
		$data['subtitle'] = "Dodaj/usuń potwora";
		$category = $this -> universal_model -> get_data('kategoria_potwora');
		$category_name = $category_id = array();
		foreach ($category as $row) {
			$category_id[] = $row['categoryID'];
			$category_name[] = $row['monsterCategory'];
		}
		$data['category'] = array_combine($category_id, $category_name);
		$this -> form_validation -> set_rules('monster_name', 'Nazwa potwora', 'required', array('required' => '{field} jest wymagana'));
		if ($this -> form_validation -> run() === FALSE) {
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_monsters', $data);
			$this -> load -> view('templates/footer');
		} else {
			$monster = $this -> check_data('monster_name', 'monsters', 'monsterName');	
			$add = "";
			if (empty($monster)) {
				$monster_data = $this -> valid_monster();
				$this -> universal_model -> insert('monsters', $monster_data);
				$last_monster = $this -> universal_model -> last_index('monsters', 'monsterName');
				$add = "Wprowadzono <b>" . $last_monster . "</b>";
			} else {
				$add = $monster . " już istnieje!";
			}
			$data['added'] = $add;
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/add_monsters', $data);
			$this -> load -> view('templates/footer');
		}
	}
}