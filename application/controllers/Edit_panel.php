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
		$this -> load -> model('characters_model');
		$this -> load -> model('universal_model');
		$this -> load -> model('race_age_model');
		$this -> load -> model('race_model');
		$this -> load -> model('p_player_model');
		$this -> load -> model('char_skills_model');
		$this -> load -> model('item_model');
		$this -> load -> model('char_inventory_model');
		$this -> load -> model('spell_model');
	}
	
	public function success($page) {
		redirect('edit_panel/' . $page );
	}
	
	public function get_character_data($id) {
		$arr = $this ->  characters_model -> get_basic_info($id);
		return $arr;
	}
	
	public function verify_basic_info($id, $am) {
		$arr = array(
			'userID' => $id,
			'name' => $this -> input -> post('name'),
			'raceID' => $this -> input -> post('race'),
			'genderID' => $this -> input -> post('gender'),
			'classID' => $this -> input -> post('class'),
			'natureID' => $this -> input -> post('nature'),
			'age' => $this -> input -> post('age'),
			'amount' => $am,
			'height' => $this -> input -> post('height'),
			'weight' => $this -> input -> post('weight'),
			'hair' => $this -> input -> post('hair'),
			'eyes' => $this -> input -> post('eyes'),
			'description' => $this -> input -> post('description'),
			'sz' => ($this -> input -> post('sz') + $this -> input -> post('rsz')),
			'ww' => ($this -> input -> post('ww') + $this -> input -> post('rww')),
			'us' => ($this -> input -> post('us') + $this -> input -> post('rus')),
			's' => ($this -> input -> post('s') + $this -> input -> post('rs')),
			'wt' => ($this -> input -> post('wt') + $this -> input -> post('rwt')),
			'zw' => ($this -> input -> post('zw') + $this -> input -> post('rzw')),
			'i' => ($this -> input -> post('i') + $this -> input -> post('ri')),
			'a' => ($this -> input -> post('a') + $this -> input -> post('ra')),
			'zr' => ($this -> input -> post('zr') + $this -> input -> post('rzr')),
			'cp' => ($this -> input -> post('cp') + $this -> input -> post('rcp')),
			'intel' => ($this -> input -> post('int') + $this -> input -> post('rint')),
			'op' => ($this -> input -> post('op') + $this -> input -> post('rop')),
			'sw' => ($this -> input -> post('sw') + $this -> input -> post('rsw')),
			'ogd' => ($this -> input -> post('ogd') + $this -> input -> post('rogd')),
			'family' => $this -> input -> post('family'),
			'origin' => $this -> input -> post('origin')
		);
		return $arr;
	}

	public function verify_current_schematics() {
		$arr = array(
			'sz' => ($this -> input -> post('sz') + $this -> input -> post('rsz')),
			'ww' => ($this -> input -> post('ww') + $this -> input -> post('rww')),
			'us' => ($this -> input -> post('us') + $this -> input -> post('rus')),
			's' => ($this -> input -> post('s') + $this -> input -> post('rs')),
			'wt' => ($this -> input -> post('wt') + $this -> input -> post('rwt')),
			'zw' => ($this -> input -> post('zw') + $this -> input -> post('rzw')),
			'i' => ($this -> input -> post('i') + $this -> input -> post('ri')),
			'a' => ($this -> input -> post('a') + $this -> input -> post('ra')),
			'zr' => ($this -> input -> post('zr') + $this -> input -> post('rzr')),
			'cp' => ($this -> input -> post('cp') + $this -> input -> post('rcp')),
			'intel' => ($this -> input -> post('int') + $this -> input -> post('rint')),
			'op' => ($this -> input -> post('op') + $this -> input -> post('rop')),
			'sw' => ($this -> input -> post('sw') + $this -> input -> post('rsw')),
			'ogd' => ($this -> input -> post('ogd') + $this -> input -> post('rogd'))
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
	
	public function edit_character() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			$this -> success('show_list');
		} else {
			if ($this -> session -> has_userdata('p_id') === FALSE) {
				$this -> session -> set_userdata('p_id', $_GET['id']);
				$id = $this -> session -> p_id;
			} else {
				$id = $this -> session -> p_id;
			}
			
			
			$data = $this -> get_character_data($id);
			$data['title'] = "Edycja postaci";
			$char = $this -> formable -> datas();
			$race_stats = $this -> universal_model -> get_user('rasa', array('raceID' => $data['raceID']));
			$data['race'] = $char['race'];
			$data['gender'] = $char['gender'];
			$data['classes'] = $char['classes'];
			$data['nature'] = $char['nature'];
			$sz = $data['sz'] - $race_stats[0]['sz'];
			$ww = $data['ww'] - $race_stats[0]['ww'];
			$us = $data['us'] - $race_stats[0]['us'];
			$s = $data['s'] - $race_stats[0]['s'];
			$wt = $data['wt'] - $race_stats[0]['wt'];
			$zw = $data['zw'] - $race_stats[0]['zw'];
			$i = $data['i'] - $race_stats[0]['i'];
			$a = $data['a'] - $race_stats[0]['a'];
			$zr = $data['zr'] - $race_stats[0]['zr'];
			$cp = $data['cp'] - $race_stats[0]['cp'];
			$int = $data['intel'] - $race_stats[0]['intel'];
			$op = $data['op'] - $race_stats[0]['op'];
			$sw = $data['sw'] - $race_stats[0]['sw'];
			$ogd = $data['ogd'] - $race_stats[0]['ogd'];
			$data['sz'] = $sz;
			$data['ww'] = $ww;
			$data['us'] = $us;
			$data['s'] = $s;
			$data['wt'] = $wt;
			$data['zw'] = $zw;
			$data['i'] = $i;
			$data['a'] = $a;
			$data['zr'] = $zr;
			$data['cp'] = $cp;
			$data['intel'] = $int;
			$data['op'] = $op;
			$data['sw'] = $sw;
			$data['ogd'] = $ogd;
			$user_id = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'userID');
			$age = $this -> input -> post('age');
			$race = $this -> input -> post('race');
			$race_age = $this -> get_race_add_skill($race);
			$as = mt_rand(1, 4);
			$amount = $this -> char_skill -> check_age($race_age, $age, $as);
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
				$character_info = $this -> verify_basic_info($user_id, $amount);
				$current = $this -> verify_current_schematics();
				$this -> universal_model -> update('characters', $character_info, array('id' => $_SESSION['p_id']));
				$this -> universal_model -> update('current_schematic', $current, array('char_id' => $_SESSION['p_id']));
				$this -> success('edit_race_skills');
			}
		}
	}

	

	public function verify_skills($char_id, $arr2, $id = "") {
		$skill = $this -> input -> post('skills[]');
		$char_skill = array();
		if (empty($skill) === FALSE && is_array($skill)) {
			$char_skill = array_merge($skill, $arr2);
		} else {
			$char_skill = $arr2;
		}
		$arr = array(
			'id' => $id,
			'char_id' => $char_id,
			'profId' => $this -> input -> post('profession'),
			'skill_id' => $char_skill 
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
			$data['amount'] = $this -> universal_model -> get_values('characters', array('id' => $_SESSION['p_id']), 'amount');
			$this -> form_validation -> set_rules('profession', 'Profesja', 'required', array('required' => '{field} jest wymagana'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/character_skills', $data);
				$this -> load -> view('templates/footer');
			} else {
				$char_skills = $this -> get_race_skills($data['id']);
				$prof_skills = $this -> get_skill($_POST['profession']);
				$arr_skill = array_merge($char_skills, $prof_skills);
				$arr = array();
				foreach ($arr_skill as $row) {
					$arr[] = $row['skill_id'];
				}
				$skills = $this -> verify_skills($_SESSION['p_id'], $arr);
				$this -> universal_model -> delete('char_skills', array('char_id' => $_SESSION['p_id']));
				$this -> char_skills_model -> multi_insert('char_skills', 'skill_id', $skills);
				$this -> success('edit_inventory');
			}
		}
	}

	public function verify_race_skills($arr2, $id = '') {
		$arr3 = array();
		$arr3[] = $this -> input -> post('skill');
		$data = array();
		if (!empty($arr3) && is_array($arr3)) {
			$data = array_merge($arr3, $arr2);
		} else {
			$data = $arr2;
		}
		
		$arr = array(
			'id' => $id,
			'char_id' => $this -> session -> p_id,
			'profId' => 1,
			'skill_id' => $data
		);
		return $arr;
	}
	
	public function edit_race_skills() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			$id = $this -> session -> p_id;
			$race = $this -> universal_model -> get_values('characters', array('id' => $id), 'raceID');
			$this -> universal_model -> delete('char_skills', array('char_id' => $id));
			$data['skills'] = $this -> char_skills_model -> race_skills($race);
			$amount = $this -> universal_model -> get_values('characters', array('id' => $id), 'amount');
			$data['amount'] = $amount;
			$data['title'] = "Edycja rasowych umiejętności";
			$data['subtitle'] = "Wybierz umiejętność:";
			$this -> form_validation -> set_rules('skill', 'Umiejętność', 'required', array('required' => 'Proszę wybrać {field}'));
			if ($amount == 1) {
				$skill = $data['skills'][0] -> skill_id;
				$this -> universal_model -> insert('char_skills',array('id' => '', 'char_id' => $id, 'profId' => 1, 'skill_id' => $skill));
				$this -> universal_model -> change('characters', array('amount' => 0), array('id' => $id));
				redirect('edit_panel/edit_skills');
			}
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/race_skills', $data);
				$this -> load -> view('templates/footer');
			} else {
				if ($amount > 1){
					$race_skill = array();
					foreach ($data['skills'] as $row) {
						if ($row -> options == 0)
						$race_skill[] = $row -> skillid;
					}
					$skills = $this -> verify_race_skills($race_skill);
					$this -> char_skills_model -> multi_insert('char_skills', 'skill_id', $skills);
					$amount -= 2;
					$this -> universal_model -> change('characters', array('amount' => $amount), array('id' => $id));
					$this -> success('edit_skills');
				}
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
			$profession_id = $this -> universal_model -> get_values('char_skills', array('char_id' => $id), 'profId');
			$basic_inv = $this -> basic_inventory($class_id);
			$prof_inv = $this -> profession_inventory($profession_id);
			$inv = array();
			$i = 0;
			foreach ($prof_inv as $item) {
				if (!empty($basic_inv) && is_array($basic_inv)) {
					if ($item['inventory_id'] != $basic_inv[$i]['inventory_id']) {
						array_push($inv, $prof_inv[$i]);
					}
					$i++;
				}
			}
			$inventory = array_merge($basic_inv, $inv);
			$full_inv = array();
			foreach ($inventory as $item) {
				if ($item['options'] == 0) {
					$full_inv[] = $item['inventory_id']; 
				}
			}
			$data['inventory'] = $inventory;
			$data['title'] = "Edycja ekwipunku";
			$data['subtitle'] = "Wybierz ekwipunek";
			
			$this -> form_validation -> set_rules('inv[]', 'Ekwipunek', 'required', array('required' => '{field} jest wymagany'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/edit_inventory');
				$this -> load -> view('templates/footer');
			} else {
				$player_inventory = $this -> verify_inventory($full_inv);
				$this -> universal_model -> delete('char_inv', array('char_id' => $id));
				$this -> char_inventory_model -> multi('char_inv', 'inv', $player_inventory);
				if ($profession_id == 69) {
					redirect('edit/edit_spell');
				} else {
					redirect('admin_panel/show_list');
				}
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

	public function edit_spell() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('form/view_form');
		} else {
			$id = $this -> session -> p_id;
			$data['spells'] = $this -> spell_model -> spells();
			$data['title'] = "Edycja czarów";
			$data['subtitle'] = "Wybierz czary";
			$this -> form_validation -> set_rules('spell[]', 'Czar', 'required', array('required' => '{field} jest wymagany'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('edit/edit_spells', $data);
				$this -> load -> view('templates/footer');
			} else {
				$spells = $this -> verify_spells();
				$this -> universal_model -> delete('char_spells', array('char_id' => $id));
				$this -> spell_model -> multi_insert('char_spells', $spells);
				redirect('edut_panel/first_stat');
			}
		}
	}
}