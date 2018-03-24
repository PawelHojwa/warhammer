<?php
class Edit_panel extends CI_Controller {
	public function __construct() {
		parent:: __construct();
		$this -> load -> helper('html');
		$this -> load -> helper('form');
		$this -> load -> helper('url');
		$this -> load -> library('session');
		$this -> load -> library('formable');
		$this -> load -> library('char_skill');
		$this -> load -> library('form_validation');
		$this -> load -> model('admin_model');
		$this -> load -> model('characters_model');
		$this -> load -> model('universal_model');
		$this -> load -> model('race_age_model');
		$this -> load -> model('race_model');
		$this -> load -> model('p_player_model');
		$this -> load -> model('profession_model');
		$this -> load -> model('char_skills_model');
		$this -> load -> model('item_model');
		$this -> load -> model('char_inventory_model');
		$this -> load -> model('spell_model');
		$this -> load -> model('current_schematic_model');
	}
	
	public function success($page) {
		redirect('edit_panel/' . $page );
	}
	
	public function edit() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			if ($this -> session -> has_userdata('p_id') === FALSE) {
				$this -> session -> set_userdata('p_id', $_GET['id']);
				$id = $this -> session -> p_id;
			} else {
				$id = $this -> session -> p_id;
			}
			$char_name = $this -> universal_model -> get_values('characters', array('id' => $id), 'name');
			$prof_id = $this -> universal_model -> get_values('characters', array('id' => $id), 'profession_id');
			$data = array(
				'title' => 'Panel edycji',
				'id' => $id,
				'name' => $char_name,
				'profession_id' => $prof_id,
				'basic' => 'Informacje podstawowe',
				'skills' => 'Umiejętności',
				'stats' => 'Statystyki',
				'inventory' => 'Ekwipunek',
				'spells' => 'Zaklęcia',
				'menu' => '<- Powrót do panelu'
			);
			$this -> load -> view('templates/header', $data);
			$this -> load -> view('edit/edit_menu', $data);
			$this -> load -> view('templates/footer');
		}
	}
	
	public function get_character_data($id) {
		$arr = $this ->  characters_model -> get_basic_info($id);
		return $arr;
	}
	
	public function verify_basic_info($id) {
		$arr = array(
			'userID' => $id,
			'name' => $this -> input -> post('name'),
			'raceID' => $this -> input -> post('race'),
			'genderID' => $this -> input -> post('gender'),
			'classID' => $this -> input -> post('class'),
			'profession_id' => $this -> input -> post('profession'),
			'natureID' => $this -> input -> post('nature'),
			'age' => $this -> input -> post('age'),
			'amount' => 0,
			'height' => $this -> input -> post('height'),
			'weight' => $this -> input -> post('weight'),
			'hair' => $this -> input -> post('hair'),
			'eyes' => $this -> input -> post('eyes'),
			'description' => $this -> input -> post('description'),
			'family' => $this -> input -> post('family'),
			'origin' => $this -> input -> post('origin')
		);
		return $arr;
	}
	
	public function get_age() {
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE) {
			$age = $this -> race_age_model -> race_age($_POST['race']);
			$min = $age -> min_age;
			$max = $age -> max_age;
			$c_age = $this -> universal_model -> get_values('characters', array('id' => $_POST['p_id']), 'age');
			for ($i = $min; $i <= $max; $i++) {
					if ($i == $c_age) {
						echo "<option value=$i selected> $i </option>";
						continue;
					}
					echo "<option value= $i > $i </option>";
			}
		} else {
			echo "Błąd!!";
		}
	}
	
	public function get_stat() {
		if (isset($_REQUEST['race']) === TRUE && empty($_REQUEST['race']) === FALSE) {
			$stats = $this -> race_model -> stats('rasa', 'raceID', $_REQUEST['race'], ['sz', 'ww', 'us', 's', 'wt', 'zw', 'i', 'a', 'zr', 'cp', 'intel', 'op', 'sw', 'ogd']);
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($stats));
		}
	}
	
	public function get_race_add_skill($race_id) {
		return $this -> universal_model -> get_user('race_add_skill', array('raceID' => $race_id));
	}
	
	public function get_profession() {
		if (isset($_POST['classes']) === TRUE && empty($_POST['classes']) === FALSE) {
			$prof_name = $this -> profession_model -> get_professions('professions', 'profession_name', $_POST['classes']);
			$prof_id = $this -> profession_model -> get_professions('professions', 'id', $_POST['classes']);
			$char_prof_id = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'profession_id');
			$professions = array_combine($prof_id, $prof_name);
			if (!empty($professions) && is_array($professions)) {
				foreach($professions as $key => $value) {
					if ($key == $char_prof_id) {
						echo "<option value='" . $key . "'selected>" . $value . "</option>" ;
						continue;
					}
					echo "<option value='" . $key . "'>" . $value . "</option>" ;
				}
			} else {
				echo "Nie ma profesji dla tej klasy!";
			}
		}
	}
	
	public function edit_character() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			$this -> success('show_list');
		} else {
			$id = $this -> session -> p_id;
			$data = $this -> get_character_data($id);
			$data['title'] = "Edycja postaci";
			$char = $this -> formable -> datas();
			$data['race'] = $char['race'];
			$data['gender'] = $char['gender'];
			$data['classes'] = $char['classes'];
			$data['profession'] = $char['profession'];
			$data['nature'] = $char['nature'];
			$user_id = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'userID');
			$this -> form_validation -> set_rules('name', 'Imie', 'required', array('required' => '{field} jest wymagane'));
			$this -> form_validation -> set_rules('race', 'Rasa', 'required|trim', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('gender', 'Płeć', 'required|trim', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('class'. 'Klasa', 'required|trim', array('requierd' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('nature', 'Charakter', 'required|trim', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('age', 'Wiek', 'required|trim', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('height', 'Wzrost', 'required|trim', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('weight', 'Waga', 'required|trim', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('hair', 'Włosy', 'required|trim', array('required' => '{field} są wymagane'));
			$this -> form_validation -> set_rules('eyes', 'Oczy', 'required|trim', array('required' => '{field} są wymagane'));
			$this -> form_validation -> set_rules('description', 'Opis', 'required|trim', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('origin', 'Pochodzenie', 'required|trim', array('required' => '{field} jest wymagane'));
			$this -> form_validation -> set_rules('family', 'Rodzina', 'required|trim', array('required' => '{field} jest wymagana'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/basic_info', $data);
				$this -> load -> view('templates/footer');
			} else {
				$character_info = $this -> verify_basic_info($user_id);
				$this -> universal_model -> update('characters', $character_info, array('id' => $_SESSION['p_id']));
				$this -> success('edit');
			}
		}
	}

	public function verify_basic_stats() {
		$arr = array(
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
			'intel' => $this -> input -> post('int'),
			'op' => $this -> input -> post('op'),
			'sw' => $this -> input -> post('sw'),
			'ogd' => $this -> input -> post('ogd')
		);
		return $arr;	
	}

	public function edit_stats() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			$id = $this -> session -> p_id;
			$data = $this -> get_character_data($id);
			$data['title'] = "Edycja statystyk";
			$this -> form_validation -> set_rules('rsz', 'Szybkość', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rww', 'Walka Wręcz', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rus', 'Umiejętności Strzeleckie', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rs', 'siła', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rwt', 'Wytrzymałość', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rzw', 'Żywotność', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('ri', 'Inicjatywa', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('ra', 'Atak', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rzr', 'Zręczność', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rcp', 'Cechy Przywódcze', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rint', 'Inteligencja', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rop', 'Opanowanie', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rsw', 'Siła Woli', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('rogd', 'Ogłada', 'required|trim', array('reqiured' => '{field} jest wymagana'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/edit_stats', $data);
				$this -> load -> view('templates/footer');
			} else {
				$stats = $this -> verify_basic_stats();
				$this -> universal_model -> update('characters', $stats, array('id' => $_SESSION['p_id']));
				$this -> success('edit');
			}
		}
	}

	public function verify_skills($char_id, $p_id, $id = "") {
		$skill = $this -> input -> post('skills[]');
		$arr = array(
			'id' => $id,
			'char_id' => $char_id,
			'profId' => $p_id,
			'skill_id' => $skill
		);
		return $arr;
	}
	
	public function get_skill($id) {
		return $this -> p_player_model -> get_skill('professions_skills', 'profession_id', $id);
	}
	
	public function get_race_skills($id) {
		return $this -> p_player_model -> get_skill('char_skills', 'char_id', $id);
	}
	
	public function get_prof() {
		if (isset($_POST['prof'])) {
			$arr = array();
			$p_skills = array();
			$prof_skills = $this -> get_skill($_POST['prof']);
			$race_skills = $this -> get_race_skills($_POST['id']);
			$skills = array();
			if (!empty($race_skills) && is_array($race_skills)) {
				foreach ($race_skills as $skill) {
					$skills[] = $skill['skill_id'];
				}
			}
			foreach ($prof_skills as $skill) {
				if ($skill['chance'] == 0) {
					$p_skills[] = $skill['skill_id'];
				}
				if ($skill['chance'] == 1) {
					if (mt_rand(1,100) <= 5) {
						$p_skills[] = $skill['skill_id'];
					}
				}
				if ($skill['chance'] == 2) {
					if (mt_rand(1,100) <= 10) {
						$p_skills[] = $skill['skill_id'];
					}
				}
				if ($skill['chance'] == 3) {
					if (mt_rand(1,100) <= 20) {
						$p_skills[] = $skill['skill_id'];
					}
				}
				if ($skill['chance'] == 4) {
					if (mt_rand(1,100) <= 25) {
						$p_skills[] = $skill['skill_id'];
					}
				}
				if ($skill['chance'] == 5) {
					if (mt_rand(1,100) <= 50) {
						$p_skills[] = $skill['skill_id'];
					}
				}
				if ($skill['chance'] == 6) {
					if (mt_rand(1,100) <= 75) {
						$p_skills[] = $skill['skill_id'];
					}
				}
			}
			$arr = array_merge($p_skills, $skills);
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($arr));
		} else {
			echo "Błąd";
		}
	}

	public function edit_skills() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			$data = $this -> char_skill -> char_data($_SESSION['p_id']);
			$data['id'] = $this -> session -> p_id;
			$data['title'] = "Edycja umiejętności";
			$prof_id = $this -> universal_model -> get_values('characters', array('id' => $this -> session -> p_id), 'profession_id');
			$data['prof_id'] = $prof_id;
			$data['profession_name'] = $this -> universal_model -> get_values('professions', array('id' => $prof_id), 'profession_name');
			$char_skills = $this -> get_race_skills($data['id']);
			$prof_skills = $this -> get_skill($prof_id);
			$arr_skill = array_merge($char_skills, $prof_skills);
			$arr = array();
			foreach ($arr_skill as $row) {
				$arr[] = $row['skill_id'];
			}
			$this -> form_validation -> set_rules('skills[]', 'Umiejętność', 'required', array('required' => '{field} jest wymagana'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/character_skills', $data);
				$this -> load -> view('templates/footer');
			} else {
				$skills = $this -> verify_skills($_SESSION['p_id'], $prof_id);
				$this -> universal_model -> delete('char_skills', array('char_id' => $_SESSION['p_id']));
				$this -> char_skills_model -> multi_insert('char_skills', 'skill_id', $skills);
				$this -> success('edit');
			}
		}
	}
	
	public function basic_inventory($id) {
		return $this -> item_model -> get_inv('basic_inv', array('classID' => $id));
	}
	
	public function profession_inventory($id) {
		return $this -> item_model -> get_inv('professions_inventory', array('profession_id' => $id));
	}
	
	public function verify_inventory($inv, $id = "") {
		$arr = array();
		$arr = $this -> input -> post('inv[]');
		$inventory = array_merge($inv, $arr);
		$data = array(
			'id' => $id,
			'char_id' => $this -> session -> p_id,
			'inv' => $inventory
		);
		return $data;
	}

	public function edit_inventory() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			$id = $this -> session -> p_id;
			$class_id = $this -> universal_model -> get_values('characters', array('id' => $id), 'classID');
			$profession_id = $this -> universal_model -> get_values('characters', array('id' => $id), 'profession_id');
			$basic_inv = $this -> basic_inventory($class_id);
			$prof_inv = $this -> profession_inventory($profession_id);
			$inventory = array();
			if (!empty($prof_inv) && is_array($prof_inv)) {
				$shared = array_uintersect($prof_inv, $basic_inv, function($x, $y) {return strcasecmp($x['inventory_id'], $y['inventory_id']);});
				$summary = array_merge($basic_inv, $prof_inv);
				$uniqe = array_udiff($summary, $shared, function($x, $y) {return strcasecmp($x['inventory_id'], $y['inventory_id']);});
				$inventory = array_merge($shared, $uniqe);
			} else {
				$inventory = $basic_inv;
			}
			
			$full_inv = array();
			foreach ($inventory as $item) {
				if ($item['options'] == 0) {
					$full_inv[] = $item['inventory_id']; 
				}
			}
			$data['inventory'] = $inventory;
			$data['title'] = "Edycja ekwipunku";
			$data['subtitle'] = "Wybierz ekwipunek";
			$data['class_name'] = $this -> universal_model -> get_values('classes', array('classID' => $class_id), 'className');
			$data['profession_name'] = $this -> universal_model -> get_values('professions', array('id' => $profession_id), 'profession_name');
			$this -> form_validation -> set_rules('inv[]', 'Ekwipunek', 'required', array('required' => '{field} jest wymagany'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/edit_inventory');
				$this -> load -> view('templates/footer');
			} else {
				$player_inventory = $this -> verify_inventory($full_inv);
				$this -> universal_model -> delete('char_inv', array('char_id' => $id));
				$this -> char_inventory_model -> multi('char_inv', 'inv', $player_inventory);
				$this -> success('edit');
			}
		}
	}

	public function verify_spells($id = "") {
		$spells = $this -> input -> post('spell[]');
		$data = array(
			'id' => $id,
			'char_id' => $this -> session -> p_id,
			'spell' => $spells
		);
		return $data;
	}

	public function get_spell() {
		if (isset($_POST['id']) === TRUE && $_POST['id'] !== FALSE) {
			$spells = $this -> spell_model -> get_character_spells($_POST['id']);
			$spell = array();
			if (!empty($spells) && is_array($spells)) {
				foreach ($spells as $row) {
					$spell[] = $row -> spell;
				}
			}
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($spell));
		} else {
			echo "Błąd";
		}
	}

	public function edit_spell() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			$id = $this -> session -> p_id;
			$data['spells'] = $this -> spell_model -> spells();
			$data['title'] = "Edycja czarów";
			$data['subtitle'] = "Wybierz czary";
			$data['id'] = $id;
			$this -> form_validation -> set_rules('spell[]', 'Czar', 'required', array('required' => '{field} jest wymagany'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/edit_spells', $data);
				$this -> load -> view('templates/footer');
			} else {
				$spells = $this -> verify_spells();
				$this -> universal_model -> delete('char_spells', array('char_id' => $id));
				$this -> spell_model -> multi_insert('char_spells', $spells);
				$this -> success('edit');
			}
		}
	}
	
	public function verify_stats($id = "") {
		$data = array(
			'id' => $id,
			'char_id' => $this -> session -> p_id,
			'sz' => $this -> input -> post('csz'),
			'ww' => $this -> input -> post('cww'),
			'us' => $this -> input -> post('cus'),
			's' => $this -> input -> post('cs'),
			'wt' => $this -> input -> post('cwt'),
			'zw' => $this -> input -> post('czw'),
			'i' => $this -> input -> post('ci'),
			'a' => $this -> input -> post('ca'),
			'zr' => $this -> input -> post('czr'),
			'cp' => $this -> input -> post('ccp'),
			'intel' => $this -> input -> post('cint'),
			'op' => $this -> input -> post('cop'),
			'sw' => $this -> input -> post('csw'),
			'ogd' => $this -> input -> post('cogd'),
		);
		return $data;
	}
	
	public function first_stat() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			$id = $this -> session -> p_id;
			$data = $this -> current_schematic_model -> get_current_schematic($id);
			$data['title'] = "Edycja pierwszego rozwinięcia";
			$data['name'] = $this -> universal_model -> get_values('characters', array('id' => $id), 'name');
			$stats = $this -> characters_model -> get_basic_info($id);
			$prof_id = $this -> universal_model -> get_values('characters', array('id' => $id), 'profession_id');
			$data['profession_name'] = $this -> universal_model -> get_values('professions', array('id' => $prof_id), 'profession_name');
			$prof_stats = $this -> profession_model -> get_profession_statistics($prof_id);
			$data['psz'] = $prof_stats[0] -> sz;
			$data['pww'] = $prof_stats[0] -> ww;
			$data['pus'] = $prof_stats[0] -> us;
			$data['ps'] = $prof_stats[0] -> s;
			$data['pwt'] = $prof_stats[0] -> wt;
			$data['pzw'] = $prof_stats[0] -> zw;
			$data['pi'] = $prof_stats[0] -> ini;
			$data['pa'] = $prof_stats[0] -> a;
			$data['pzr'] = $prof_stats[0] -> zr;
			$data['pcp'] = $prof_stats[0] -> cp;
			$data['pint'] = $prof_stats[0] -> intel;
			$data['pop'] = $prof_stats[0] -> op;
			$data['psw'] = $prof_stats[0] -> sw;
			$data['pogd'] = $prof_stats[0] -> ogd;
			$data['bsz'] = $stats['sz'];
			$data['bww'] = $stats['ww'];
			$data['bus'] = $stats['us'];
			$data['bs'] = $stats['s'];
			$data['bwt'] = $stats['wt'];
			$data['bzw'] = $stats['zw'];
			$data['bi'] = $stats['i'];
			$data['ba'] = $stats['a'];
			$data['bzr'] = $stats['zr'];
			$data['bcp'] = $stats['cp'];
			$data['bint'] = $stats['intel'];
			$data['bop'] = $stats['op'];
			$data['bsw'] = $stats['sw'];
			$data['bogd'] = $stats['ogd'];
			$this -> form_validation -> set_rules('csz', 'Szybkość', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('cww', 'Walka wręcz', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('cus', 'Umiejętnośći strzeleckie', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('cs', 'Siła', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('cwt', 'Wytrzymałość', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('czw', 'Żywotność', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('ci', 'Inicjatywa', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('ca', 'Atak', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('czr', 'Zręczność', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('ccp', 'Cechy przywdódcze', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('cint', 'Inteligencja', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('cop', 'Opanowanie', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('csw', 'Siła woli', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('cogd', 'Ogłada', 'required', array('required' => '{field} jest wymagana'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/first_stat', $data);
				$this -> load -> view('templates/footer');
			} else {
				$stats = $this -> verify_stats();
				$this -> universal_model -> update('current_schematic', $stats, array('char_id' => $id));
				redirect('admin_panel/show_list');
			}
		}
	}

	public function get_inventory_class() {
		if (isset($_POST['class_id']) !== FALSE && $_POST['class_id'] !== TRUE) {
			$inventory = $this -> universal_model -> get_user('basic_inv', array('classID' => $_POST['class_id']));
			$arr = array();
			foreach ($inventory as $row) {
				$arr[] = $row['inventory_id'];
			}
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($arr));
		} else {
			echo "Błąd!!";
		}
	}
	
	public function verify_class_name() {
		$arr = array(
			'className' => $this -> input -> post('class_name')
		);
		return $arr;
	}
	
	public function verify_class_inventory($class_id, $id = "") {
		$inventory = $this -> input -> post('inv[]');
		$arr = array(
			'id' => $id,
			'inventory_id' => $inventory,
			'classID' => $class_id,
			'amount' => 1,
			'options' => 0
		);
		return $arr;
	}

	public function edit_class() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			if ($this -> session -> has_userdata('class') === FALSE) {
				$this -> session -> set_userdata('class', $_GET['id']);
				$id = $this -> session -> class; 
			} else {
				$id = $this -> session -> class;
			}
			$data['class_name'] = $this -> universal_model -> get_values('classes', array('classID' => $id), 'className');
			$data['class_id'] = $id;
			$data['inventory'] = $this -> admin_model -> get_items();
			$data['title'] = "Edycja klasy";
			$this -> form_validation -> set_rules('class_name', 'Nazwa klasy', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('inv[]', 'Ekwipunek', 'required', array('required' => '{field} jest wymagany'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/edit_class', $data);
				$this -> load -> view('templates/footer');
			} else {
				$c_name = $this -> verify_class_name();
				$this -> universal_model -> update('classes', $c_name, array('classID' => $id));
				$this -> universal_model -> delete('basic_inv', array('classID' => $id));
				$class_inventory = $this -> verify_class_inventory($data['class_id']);
				$this -> admin_model -> class_items_multi_insert($class_inventory);
				redirect('admin_panel/add_class');
			}
		} 
	}

	public function get_skill_info($id) {
		$arr = $this -> universal_model -> get_user('umiejetnosci', array('skillid' => $id));
		$skill = array();
		foreach ($arr as $ar) {
			$skill = $ar;
		} 
		return $skill;
	}

	public function edit_skill_info() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			if ($this -> session -> has_userdata('skill') === FALSE) {
				$this -> session -> set_userdata('skill', $_GET['id']);
				$id = $this -> session -> skill;
			} else {
				$id = $this -> session -> skill;
			}
			$data = $this -> get_skill_info($id);
			$data['title'] = "Edycja umiejętności";
			$this -> form_validation -> set_rules('skill_name', 'Nazwa umiejętności', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('description', 'Opis umiejętności', 'required', array('required' => '{field} jest wymagany'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/edit_skill', $data);
				$this -> load -> view('templates/footer');
			} else {
				$skills = $this -> verify_skill();
				$this -> universal_model -> update('umiejetnosci', $skills, array('skillid' => $id));
				redirect('admin_panel/add_skill');
			}
		}
	}

	public function verify_skill() {
		$arr = array(
			'skillName' => $this -> input -> post('skill_name'),
			'skill_description' => $this -> input -> post('description')
		);
		return $arr;
	}
	
	public function get_race_info($id) {
		$arr = $this -> universal_model -> get_user('rasa', array('raceID' => $id));
		$race = array();
		foreach ($arr as $ar) {
			$race = $ar;
		}
		return $race;
	}
	
	public function get_race_skill() {
		if (isset($_POST['race_id']) === TRUE && $_POST['race_id'] !== FALSE) {
			$race = $this -> char_skills_model -> race_skills($_POST['race_id']);
			$arr = array();
			foreach ($race as $row) {
				$arr[] = $row -> skill_id;
			}
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($arr));
		} else {
			echo "błąd";
		}
	}
	
	public function get_race_age_info($id) {
		$arr = $this -> race_age_model -> race_age($id);
		return $arr;
	}
	
	public function get_skills() {
		$skill_id = $this -> char_skills_model -> get_skills('skillid');
		$skill_name = $this -> char_skills_model -> get_skills('skillName');
		$skills = array_combine($skill_id, $skill_name);
		return $skills;
	}
	
	public function get_race_add_skills_info($id) {
		$arr = $this -> race_model -> get_race_add_skills($id);
		return $arr;
	}
	
	public function verify_race_info() {
		$arr = array(
			'raceName' => $this -> input -> post('race_name'),
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
	
	public function verify_race_age() {
		$arr = array(
			'min_age' => $this -> input -> post('min_age'),
			'max_age' => $this -> input -> post('max_age')
		);
		return $arr;
	}
	
	public function verify_race_add_skills($r_id, $id = "") {
		$min_age = $this -> input -> post('min');
		$max_age = $this -> input -> post('max');
		$add_skill = $this -> input -> post('amount');
		$type = $this -> input -> post('type');
		$arr = array(
			'id' => $id,
			'raceID' => $r_id,
			'min_age' => $min_age,
			'max_age' => $max_age,
			'add_skill' => $add_skill,
			'action' => $type
		);
		return $arr;
	}
	
	public function verify_race_skills($r_id, $id = "") {
		$skills = $this -> input -> post('skills');
		$arr = array(
			'id' => $id,
			'race_id' => $r_id,
			'skill_id' => $skills,
			'options' => 0
		);
		return $arr;
	}
	
	public function edit_race_info() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			if ($this -> session -> has_userdata('race') === FALSE) {
				$this -> session -> set_userdata('race', $_GET['id']);
				$id = $this -> session -> race;
			} else {
				$id = $this -> session -> race;
			}
			$race_stats = $this -> get_race_info($id);
			$race_age = $this -> get_race_age_info($id);
			$race_add_skills = $this -> get_race_add_skills_info($id);
			$data = $race_stats;
			$skills = $this -> get_skills();
			$data['add_skills'] = $race_add_skills;
			$data['r_min_age'] = $race_age -> min_age;
			$data['r_max_age'] = $race_age -> max_age;
			$data['skills'] = $skills;
			$data['title'] = "Edycja rasy";
			$this -> form_validation -> set_rules('race_name', 'Nazwa rasy', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('sz', 'Szybkość', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('ww', 'Walka Wręcz', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('us', 'Umiejętności Sztrzeleckie', 'required', array('require' => '{field} są wymagane'));
			$this -> form_validation -> set_rules('s', 'Siła', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('wt', 'Wytrzymałość', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('zw', 'Żywotność', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('i', 'Inicjatywa', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('a', 'Atak', 'required', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('zr', 'Zręczność', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('cp', 'Cechy Przywódcze', 'required', array('required' => '{field} są wymagane'));
			$this -> form_validation -> set_rules('intel', 'Inteligencja', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('op', 'Opanowanie', 'required', array('required' => '{field} jest wymagane'));
			$this -> form_validation -> set_rules('sw', 'Siła Woli', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('ogd', 'Ogłada', 'required', array('required' => '{field} jest wymgana'));
			$this -> form_validation -> set_rules('min_age', 'Wiek minimalny', 'required', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('max_age', 'Wiek maksymalny', 'required', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('min[]', 'Minimalny próg', 'required', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('max[]', 'Maksymalny próg', 'required', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('amount[]', 'Ilość', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('type[]', 'Typ', 'required', array('required' => '{field} jest wymagany'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/edit_race_info', $data);
				$this -> load -> view('templates/footer');
			} else {
				$r_info = $this -> verify_race_info();
				$r_age = $this -> verify_race_age();
				$r_add_skill = $this -> verify_race_add_skills($id);
				$r_skill = $this -> verify_race_skills($id);
				$this -> universal_model -> update('rasa', $r_info, array('raceID' => $id));
				$this -> universal_model -> update('race_age', $r_age, array('raceID' => $id));
				$this -> universal_model -> delete('race_add_skill', array('raceID' => $id));
				$this -> admin_model -> add_race_skill_insert($r_add_skill);
				if (!empty($race_add_skill) && is_array($race_add_skilld)) {
					$this -> universal_model -> delete('race_skills',array('race_id' => $id));
					$this -> admin_model -> race_skill_insert($r_skill);
				} else {
					$this -> universal_model -> delete('race_skills', array('race_id' => $id));
				}
				redirect('admin_panel/add_race');
			}
		}
	}
	
	public function get_profession_info($id) {
		$arr = $this -> universal_model -> get_user('professions', array('id' => $id));
		$p_inf = array();
		foreach ($arr as $ar) {
			$p_inf = $ar;
		}
		return $p_inf;
	}
	
	
	public function get_class_names() {
		$arr = $this -> universal_model -> get_data('classes');
		return $arr;
	}
	
	public function get_profession_skills() {
		if (isset($_POST['prof_id']) === TRUE && $_POST['prof_id'] !== FALSE) {
			$prof_skills = $this -> char_skills_model -> get_profession_skills($_POST['prof_id']);
			$arr = array();
			foreach ($prof_skills as $row) {
				$arr[] = $row -> skillid;
			}
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($arr));
		} else {
			echo "Błąd gdzieś jest";
		}
	}
	
	public function get_profession_stats($id) {
		$arr = $this -> profession_model -> get_profession_statistics($id);
		return $arr;
	}
	
	public function get_profession_inventory() {
		if (isset($_POST['prof_id']) === TRUE && $_POST['prof_id'] !== FALSE) {
			$prof_inv = $this -> item_model -> get_inv('professions_inventory', array('profession_id' => $_POST['prof_id']));
			$arr = array();
			foreach ($prof_inv as $row) {
				$arr[] = $row['inventory_id'];
			}
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($arr));
		} else {
			echo "Błąd ekwipunku";
		}
	}
	
	public function verify_profession_info() {
		$advance = $this -> input -> post('type');
		if ($advance == 1) {
			$class_id = $this -> input -> post('class_id');
		} else {
			$class_id = 0;
		}
		$arr = array(
			'profession_name' => $this -> input -> post('profession_name'),
			'class_id' => $class_id,
			'advancement' => $advance
		); 
		return $arr;
	}
	
	public function verify_profession_stats() {
		$arr = array(
			'sz' => $this -> input -> post('sz'),
			'ww' => $this -> input -> post('ww'),
			'us' => $this -> input -> post('us'),
			's' => $this -> input -> post('s'),
			'wt' => $this -> input -> post('wt'),
			'zw' => $this -> input -> post('zr'),
			'ini' => $this -> input -> post('ini'),
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
	
	public function verify_profession_skills($p_id, $id = "") {
		$skills = $this -> input -> post('skills');
		$arr = array(
			'id' => $id,
			'profession_id' => $p_id,
			'skill_id' => $skills,
			'chance' => 0
		);
		return $arr;
	}
	
	public function verify_profession_inv($p_id, $id = "") {
		$inv = $this -> input -> post('inv');
		$arr = array(
			'id' => $id,
			'profession_id' => $p_id,
			'inventory_id' => $inv,
			'quality' => 1,
			'options' => 0
		);
		return $arr;
	}
	
	public function edit_profession_info() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			if ($this -> session -> has_userdata('prof') === FALSE) {
				$this -> session -> set_userdata('prof', $_GET['id']);
				$id = $this -> session -> prof;
			} else {
				$id = $this -> session -> prof; 
			}
			$class = $this -> get_class_names();
			$class_id = array();
			$class_names = array();
			foreach ($class as $k) {
					$class_id[] = $k['classID'];
					$class_names[] = $k['className'];
			}
			$classes = array_combine($class_id, $class_names);
			$type = $this -> universal_model -> get_values('professions', array('id' => $id), 'advancement');
			$items = $this -> admin_model -> get_items();
			$prof_stats = $this -> get_profession_stats($id);
			$prof_info = $this -> get_profession_info($id);
			$data = $prof_info;
			$data['type'] = $type; 
			$data['class_id'] = $this -> universal_model -> get_values('professions', array('id' => $id), 'class_id');
			$data['classes'] = $classes;
			$data['stats'] = $prof_stats;
			$data['skills'] = $this -> get_skills();
			$data['inventory'] = $items;
			$data['title'] = "Edycja profesji";
			$this -> form_validation -> set_rules('profession_name', 'Nazwa profesji', 'required', array('required' => '{field} jest wymagana'));		
			$this -> form_validation -> set_rules('type', 'Rodzaj profesji', 'required', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('sz', 'Szybkość', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('ww', 'Walka Wręcz', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('us', 'Umiejętności Strzeleckie', 'required', array('required' => '{field} są wymagane'));
			$this -> form_validation -> set_rules('s', 'Siła', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('wt', 'Wytrzymałość', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('zw', 'Żywotność', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('ini', 'Inicjatywa', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('a', 'Atak', 'required', array('required' => '{field} jest wymagany'));
			$this -> form_validation -> set_rules('zr', 'Zręczność', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('cp', 'Cechy Przywódcze', 'required', array('required' => '{field} są wymagane'));
			$this -> form_validation -> set_rules('intel', 'Inteligencja', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('op', 'Opanowanie', 'required', array('required' => '{field} jest wymagane'));
			$this -> form_validation -> set_rules('sw', 'Siła Woli', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('ogd', 'Ogłada', 'required', array('required' => '{field} jest wymagana'));
			$this -> form_validation -> set_rules('skills[]', 'Umiejętności', 'required', array('required' => '{field} są wymagane'));
			$this -> form_validation -> set_rules('inv[]', 'Ekwipunek', 'required', array('requried' => '{field} jest wymagany'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/edit_profession', $data);
				$this -> load -> view('templates/footer');
			} else {
				$p_info = $this -> verify_profession_info();
				$p_stats = $this -> verify_profession_stats();
				$p_skills = $this -> verify_profession_skills($id);
				$p_inv = $this -> verify_profession_inv($id);
				$this -> universal_model -> update('professions', $p_info, array('id' => $id));
				$this -> universal_model -> update('professions_statistics', $p_stats, array('id' => $id));
				$this -> universal_model -> delete('professions_skills', array('id' => $id));
				$this -> admin_model -> profession_skill_insert($p_skills);
				$this -> universal_model -> delete('professions_inventory', array('id' => $id));
				$this -> admin_model -> profession_items_insert($p_inv);
				redirect('admin_panel/add_profession'); 
			}
		}
	}
}