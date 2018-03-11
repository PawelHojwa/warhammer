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
		$this -> load -> model('trade_model');
	}
	
	public function admin_menu() {
		$arr = array(
				'title' => 'Panel administratora',
				'char_names' => 'Postacie',
				'add_skill' => 'Dodaj umiejętność',
				'add_spell' => 'Dodaj czar',
				'add_profession' => 'Dodaj profesje',
				'add_race' => 'Dodaj rase',
				'add_class' => 'Dodaj klase',
				'add_monster' => 'Dodaj potwora',
				'add_item' => 'Dodaj przedmiot'
			);
		return $arr;
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
		echo "<th>Lp.</th><th>Umiejętność</th>";
		foreach ($arr as $row) {
			echo "<tr>";
			echo "<td>" . ++$lp . "</td>";
			echo "<td>" . $row -> skillName . "</td>";
			echo "<td>" . anchor('edit_panel/edit_skill_info?id=' . $row -> skillid, 'Edytuj') . "</td>";
			echo "<td>" . anchor('delete/del_skill?id=' . $row -> skillid, 'Usuń') . "</td>";
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
			'skillName' => $this -> input -> post('skill_name'),
			'skill_description' => $this -> input -> post('description')
		);
		return $arr;
	}
	
	public function show_list() {
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/login', $data);
			$this -> load -> view('templates/footer');
		} else {
			$data = $this -> admin_menu();
			$this -> session -> unset_userdata('p_id');
			$data['chars'] = $this -> get_character_names();
			$data['subtitle'] = 'Wszystkie postacie';
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('admin/admin_menu', $data);
			$this -> load -> view('admin/show_list', $data);
			$this -> load -> view('templates/footer');
		}
	}
	
	public function add_skill() {
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/login', $data);
			$this -> load -> view('templates/footer');
		} else {
			$data = $this -> admin_menu();
			$data['subtitle'] = "Dodaj/usuń umiejętność";
			$data['added'] = "";
			$this -> form_validation -> set_rules('skill_name', 'Nazwa umiejętności', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('description', 'Opis umiejętności', 'required', array('required' => '{field} jest wymagany'));
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
					echo "<td>" . anchor('delete/del_spell?id=' . $spell -> id, 'Usuń') . "</td>";
					echo "<tr>";
				 }
				echo "</table>";
			}
		}
	}
	
	public function get_items() {
		if(isset($_POST['item']) === TRUE && $_POST['item'] !== FALSE) {
			$arr = $this -> trade_model -> get_trade_table($_POST['item']);
			if (!empty($arr) && is_array($arr)) {
				echo "<table>";
				echo "<tr>";
				echo "<th>Nazwa przedmiotu</th><th>Cena</th><th>Waga</th><th>Dostępność</th>";
				echo "</tr>";
				foreach($arr as $row) {
					echo "<tr>";
					echo "<td>" . $row['item'] . "</td>";
					echo "<td>" . $row['price'] . "</td>";
					echo "<td>" . $row['weight'] . "</td>";
					echo "<td>" . $row['availability'] . "</td>";
					echo "<td>" . anchor('delete/del_item?id=' . $row['name'], 'Usuń') . "</td>";
					echo "</tr>";
				}
				echo "</table>";
			}
		} else {
			echo "Błąd!";
		}
	}

	public function valid_weapon_hand() {
		$hand = $this -> input -> post('weapon_hand');
		return $hand;
	}
	
	public function valid_weapon_type() {
		$type = $this -> input -> post('weapon_type');
		return $type;
	}
	
	public function valid_items_name($id = "") {
		$type = $this -> input -> post ('type');
		$meele = 0;
		$ranged = 0;
		$group = "";
		if ($type == 1 || $type ==  2 || $type == 7 || $type == 8 || $type == 9 || $type == 10 || $type == 11 || $type == 12) {
			$group = 4;
		} else if ($type == 3) {
			$group = 5; 
		} else if ($type == 4) {
			$group = $this -> valid_weapon_hand();
			$meele = $this -> valid_weapon_type();
		} else if ($type == 5 || $type == 6) {
			$group = 3;
			$ranged = $this -> valid_weapon_type();
		} else if ($type == 14 || $type == 15) {
			$group = 6;
		} else {
			$group = NULL;
		}
		$arr = array(
			'id' => $id,
			'item' => $this -> input -> post('item_name'),
			'items_group_id' => $group,
			'meele' => $meele,
			'ranged' => $ranged
		);
		return $arr;
	}
	
	public function valid_price() {
		$zk = $this -> input -> post('zk');
		$sz = $this -> input -> post('sz');
		$p = $this -> input -> post('p');
		if ($zk == "") {
			$zk = 0;
		}
		if ($sz == "") {
			$sz = 0;
		}
		if ($p == "") {
			$p = 0;
		}
		$price = "";
		if ($sz == 0 && $p == 0) {
			$price = $zk . " zk";
		} else if ($zk == 0 && $p == 0) {
			$price = $sz . "/-";
		} else if ($zk == 0 && $sz == 0) {
			$price = $p . "p";
		} else if ($zk == 0) {
			$price = $sz . "/" . $p;
		}
		return $price;
	}
	
	public function valid_items($item_id, $id = "") {
		$price = $this -> valid_price();
		$arr = array(
			'id' => $id,
			'name' => $item_id,
			'type' => $this -> input -> post('type'),
			'price' => $price,
			'weight' => $this -> input -> post('weight'),
			'availability' => $this -> input -> post('availability')
		);
		return $arr;
	}
	
	public function valid_armour_placement($id_item, $id = "") {
		$placement = $this -> input -> post('armour_placement');
		$arr = array(
			'id' => $id,
			'armour_id' => $id_item,
			'pp' => $this -> input -> post('pp'),
			'placement' => $placement
		);
		return $arr;
	}
	
	public function add_items() {
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/login', $data);
			$this -> load -> view('templates/footer');
		} else {
			$data = $this -> admin_menu();
			$data['subtitle'] = "Dodaj/usuń przedmiot";
			$availability = $this -> universal_model -> get_data('availability');
			$armour_placement = $this -> universal_model -> get_data('armour_placement');
			$data['group_id'] = $this -> universal_model -> get_data('items_group');
			$type = $this -> universal_model -> get_data('things_types');
			$weapon_type = $this -> universal_model -> get_data('weapon_type_name');
			$type_id =  $type_name = $availability_id = $availability_name = array();
			$data['weapon_type'] = $weapon_type;
			$data['armour_placement'] = $armour_placement;
			foreach ($type as $row) {
				$type_id[] = $row['id'];
				$type_name[] = $row['name'];
			}
			$data['item_type'] = array_combine($type_id, $type_name);
			foreach ($availability as $row) {
				$availability_id[] = $row['lp'];
				$availability_name[] = $row['avail'];
			}
			$data['availability'] = array_combine($availability_id, $availability_name);
			$data['added'] = "";
			$this -> form_validation -> set_rules('item_name', 'Nazwa przedmiotu', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('type', 'Kategoria przedmiotu', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('weight', 'Waga', 'required', array('required' => '{field} jest wymagana'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('admin/admin_menu', $data);
				$this -> load -> view('admin/add_item', $data);
				$this -> load -> view('templates/footer');
			} else {
				$name = $this -> check_data('item_name', 'items', 'item');
				$add = "";
				if (empty($name)) {
					$item_name = $this -> valid_items_name();
					$this -> universal_model -> insert('items', $item_name);
					$last_id = $this -> universal_model -> last_index('items', 'id');
					$last_item = $this -> universal_model -> last_index('items', 'item');
					$trade_item = $this -> valid_items($last_id);
					$this -> universal_model -> insert('trades', $trade_item);
					if ($trade_item['type'] == 3) {
						$armour = $this -> valid_armour_placement($last_id);
						if (!empty($armour) && is_array($armour)) {
							$this -> admin_model -> armour_multi_insert($armour);
						}
					}
					$add = "Wprowadzono <b>" . $last_item . "</b>";
				} else {
					$add = $name . " już istnieje!";
				}
				$data['added'] = $add;
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('admin/admin_menu', $data);
				$this -> load -> view('admin/add_item', $data);
				$this -> load -> view('templates/footer');
			}
		}
	}
	
	public function add_spell() {
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/login', $data);
			$this -> load -> view('templates/footer');
		} else {
			$data = $this -> admin_menu();
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
			$data['added'] = "";
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
					$spell_id = $this -> universal_model -> last_index('casts_names', 'id');
					$spell_info = $this -> spell($spell_id);
					$this -> universal_model -> insert('spells', $spell_info);
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
				echo "<td>" . anchor('delete/del_prof?id=' .  $profession -> id, 'Usuń') . "</td>";
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
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/login', $data);
			$this -> load -> view('templates/footer');
		} else {
			$data = $this -> admin_menu();
			$skill_id = $this -> char_skills_model -> get_skills('skillid');
			$skill_name = $this -> char_skills_model -> get_skills('skillName');
			$class_id = $this -> admin_model -> get_classes('classID');	
			$class_name = $this -> admin_model -> get_classes('className');
			$data['classes'] = array_combine($class_id, $class_name);
			$data['items'] = $this -> admin_model -> get_items();
			$data['subtitle'] = 'Dodaj/usun profesję';
			$data['skills'] = array_combine($skill_id, $skill_name);
			$data['added'] = "";
			$this -> form_validation -> set_rules('profession_name', 'Nazwa profesji', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('profession_type', 'Rodzaj profesji', 'required', array('required' => '{field} jest wymagany'));
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
					$profession_id = $this -> universal_model -> last_index('professions', 'id');
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
			echo "<td>" . anchor('edit_panel/edit_race_info?id=' . $row -> raceID, 'Edytuj') . "</td>";
			echo "<td>" . anchor('delete/del_race?id=' . $row -> raceID,  'Usuń') . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	}

	public function valid_race_age($race_id, $id = "") {
		$arr = array(
			'id' => $id,
			'raceID' => $race_id,
			'min_age' => $this -> input -> post('min_age'),
			'max_age' => $this -> input -> post('max_age')
		);
		return $arr;
	}
	
	public function valid_add_race_skill($race_id, $id ="") {
		$min = $this -> input -> post('min');
		$max = $this -> input -> post('max');
		$add = $this -> input -> post('add_skill');
		$action = $this -> input -> post('action');
		$arr = array(
			'id' => $id,
			'raceID' => $race_id,
			'min_age' => $min,
			'max_age' => $max,
			'add_skill' => $add,
			'action' => $action
		);
		return $arr;
	}

	public function add_race() {
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/login', $data);
			$this -> load -> view('templates/footer');
		} else {
			$data = $this -> admin_menu();
			$skill_id = $this -> char_skills_model -> get_skills('skillid');
			$skill_name = $this -> char_skills_model -> get_skills('skillName');
			$data['subtitle'] = 'Dodaj/usuń rasy';
			$data['skills'] = array_combine($skill_id, $skill_name);
			$data['added'] = "";
			$this -> form_validation -> set_rules('race_name', 'Nazwa rasy', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('min_age', 'Minimalny wiek', 'required|numeric', array('required' => '{field} jest wymagany', 'numeric' => '{field} musi być liczą'));
			$this -> form_validation -> set_rules('max_age', 'Maksymalny wiek', 'required|numeric', array('required' => '{field} jest wymagany', 'numeric' => '{field} musi być liczbą'));
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
					$race_age = $this -> valid_race_age($race_id);
					$this -> universal_model -> insert('race_age', $race_age);
					$race_skill = $this -> valid_race_skill($race_id);
					$this -> admin_model -> race_skill_insert($race_skill);
					$race_add_skill = $this -> valid_add_race_skill($race_id);
					$this -> admin_model -> add_race_skill_insert($race_add_skill);
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
	}
	
	public function get_classes() {
		$classes = $this -> admin_model -> get_classess();
		echo "<table class='class-table'>";
		echo "<tr>";
		echo "<th>Nazwa klasy</th>";
		foreach ($classes as $row) {
			echo "<tr>";
			echo "<td>" . $row -> className . "</td>";
			echo "<td>" . anchor('delete/del_class?id=' . $row -> classID, "Usuń") . "</td>";
			echo "<td>" . anchor('edit_panel/edit_class?id=' .$row -> classID, 'Edytuj') . "</td>";
			echo "</tr>";
		}
		echo "</table>";
	}
	
	public function add_class() {
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/login', $data);
			$this -> load -> view('templates/footer');
		} else {
			$data = $this -> admin_menu();
			$items = $this -> admin_model -> get_items();
			$data['items'] = $items;
			$data['subtitle'] = 'Dodaj/usuń klase';
			$data['added'] = "";
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
				echo "<td>" . anchor('delete/del_monster?id=' . $monster -> monsterID, 'Usuń') . "</td>";
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
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('form/login', $data);
			$this -> load -> view('templates/footer');
		} else {
			$data = $this -> admin_menu();
			$data['subtitle'] = "Dodaj/usuń potwora";
			$category = $this -> universal_model -> get_data('kategoria_potwora');
			$category_name = $category_id = array();
			foreach ($category as $row) {
				$category_id[] = $row['categoryID'];
				$category_name[] = $row['monsterCategory'];
			}
			$data['category'] = array_combine($category_id, $category_name);
			$data['added'] = "";
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
}