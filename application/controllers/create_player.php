<?php

class Create_player extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> model('universal_model');
		$this -> load -> model('race_model');
		$this -> load -> model('race_age_model');
		$this -> load -> model('profession_model');
		$this -> load -> helper('form');
		$this -> load -> helper('url_helper');
		$this -> load -> library('form_validation');
		$this -> load -> library('session');
		$this -> load -> library('formable');
		$this -> load -> library('char_skill');
		$this -> load -> helper('html');
	}

	public function get_char_id($arr) {
		return $this -> universal_model -> get_user('characters', $arr);
	}

	public function character_data($id = "") {
		$data = array('id' => $id, 'userID' => $_SESSION['userID'], 'name' => $this -> input -> post('name'), 'raceID' => $this -> input -> post('race'), 'genderID' => $this -> input -> post('gender'), 'classID' => $this -> input -> post('classes'), 'profession_id' => $this -> input -> post('profession'),'natureID' => $this -> input -> post('nature'), 'age' => $this -> input -> post('age'), 'amount' => 0, 'height' => $this -> input -> post('height'), 'weight' => $this -> input -> post('weight'), 'hair' => $this -> input -> post('hair'), 'eyes' => $this -> input -> post('eyes'), 'description' => $this -> input -> post('description'), 'sz' => $this -> input -> post('rsz'), 'ww' => $this -> input -> post('rww'), 'us' => $this -> input -> post('rus'), 's' => $this -> input -> post('rs'), 'wt' => $this -> input -> post('rwt'), 'zw' => $this -> input -> post('rzw'), 'i' => $this -> input -> post('ri'), 'a' => $this -> input -> post('ra'), 'zr' => $this -> input -> post('rzr'), 'cp' => $this -> input -> post('rcp'), 'intel' => $this -> input -> post('rint'), 'op' => $this -> input -> post('rop'), 'sw' => $this -> input -> post('rsw'), 'ogd' => $this -> input -> post('rogd'), 'add_zw' => mt_rand(1,4), 'dp' => $this -> input -> post('pp'), 'exp' => 0, 'family' => $this -> input -> post('family'), 'origin' => $this -> input -> post('origin'));
		return $data;
	}

	public function get_user_characters($id) {
		return $this -> universal_model -> get_values('characters', array('userID' => $id), 'name');
	}

	public function get_stat() {
		if (isset($_REQUEST['race']) === TRUE && empty($_REQUEST['race']) === FALSE) {
			$stats = $this -> race_model -> stats('rasa', 'raceID', $_REQUEST['race'], ['sz', 'ww', 'us', 's', 'wt', 'zw', 'i', 'a', 'zr', 'cp', 'intel', 'op', 'sw', 'ogd']);
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($stats));
		}
	}

	public function check_class() {
		if (isset($_POST['classes']) === TRUE && empty($_POST['classes']) === FALSE) {
			$wor = $this -> race_model -> stats('classes', 'classID', $_POST['classes'], 'className');
			$race = $this -> race_model -> stats('rasa', 'raceID', $_POST['race'], 'raceName');
			if ($wor == true && $race == true) {
				echo $wor;
			} else
				echo "Błąd";
		}
	}
	
	public function get_profession() {
		if (isset($_POST['classes']) === TRUE && empty($_POST['classes']) === FALSE) {
			$prof_name = $this -> profession_model -> get_professions('professions', 'profession_name', $_POST['classes']);
			$prof_id = $this -> profession_model -> get_professions('professions', 'id', $_POST['classes']);
			$professions = array_combine($prof_id, $prof_name);
			if (!empty($professions) && is_array($professions)) {
				echo "<select name='profession'>";
				foreach($professions as $key => $value) {
					echo "<option value='" . $key . "'>" . $value . "</option>" ;
				}
				echo "</select>";
			} else {
				echo "Błąd";
			}
		}
	}
	
	public function get_race_age() {
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE) {
			$age = $this -> race_age_model -> race_age($_POST['race']);
			$min = $age -> min_age;
			$max = $age -> max_age;
			echo "<select name='age'>";
			for ($i = $min; $i <= $max; $i++) {
				echo "<option value= $i > $i </option>";
			}
			echo "</select>";
		} else {
			echo "Błąd!";
		}
	}
	
	public function destiny_points() {
		if (isset($_REQUEST['race']) === TRUE && $_REQUEST['race'] !== FALSE) {
			if ($_REQUEST['race'] == 1) {
				echo mt_rand(1,3);
			} else if ($_REQUEST['race'] == 2) {
				$pp = mt_rand(1,3) - 1;
				if ($pp == 0) {
					echo 1;
				} else {
					echo $pp;
				}
			} else if ($_REQUEST['race'] == 3) {
				echo mt_rand(1,3);
			} else {
				echo mt_rand(1,4);
			}
		} else {
			echo "Błąd zapytania";
		}
	}

	public function valid_class() {
		$class = $_POST['classes'];
		$race = $_POST['race'];
		$ww = ($_POST['rww'] + $_POST['ww']);
		$us = ($_POST['rus'] + $_POST['us']);
		$i = ($_POST['ri'] + $_POST['i']);
		$int = ($_POST['rint'] + $_POST['int']);
		$sw = ($_POST['rsw'] + $_POST['rsw']);
		if ($class == 1 && $ww < 30) {
			return false;
		} else if ($class == 2 && $us < 30) {
			return false;
		} else if ($class == 3 && $i < 30 && $race != 2) {
			return false;
		} else if ($class == 3 && $i < 65 && $race == 2) {
			return false;
		} else if ($class == 4 && $sw < 30 && $int < 30) {
			return false;
		} else {
			return true;
		}
	}
	
	public function curr_schema($char_id, $id = "") {
		$arr = array(
			'id' => $id,
			'char_id' => $char_id,
			'sz' => $this -> input -> post('rsz'),
			'ww' => $this -> input -> post('rww'),
			'us' => $this -> input -> post('rus'),
			's' => $this -> input -> post('rs'),
			'wt' => $this -> input -> post('rwt'),
			'zw' => $this -> input -> post('rzw'),
			'i' => $this -> input -> post('ri'),
			'a' => $this -> input -> post('ra'),
			'zr' => $this -> input -> post('rzr'),
			'cp' => $this -> input -> post('rcp'),
			'intel' => $this -> input -> post('rint'),
			'op' => $this -> input -> post('rop'),
			'sw' => $this -> input -> post('rsw'),
			'ogd' => $this -> input -> post('rogd')
		);
		return $arr;
	}

	public function get_race_add_skill($race_id) {
		return $this -> universal_model -> get_user('race_add_skill', array('raceID' => $race_id));
	}

	public function get_race() {
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE) {
			$race = $this -> race_model -> stats('rasa', 'raceID', $_POST['race'], 'raceID');
			echo $race;
		}
	}
	
	public function verify_career($id, $p_id = "") {
		$career = array(
			'id' => $p_id,
			'char_id' => $id,
			'profession_id'	=> $this -> input -> post('profession')
		);
		return $career;
	}

	public function create() {
		$user_id = $_SESSION['userID'];
		$this -> session -> unset_userdata('p_id');
		$this -> form_validation -> set_rules('name', 'Imie', 'trim|required|max_length[40]', array('required' => "Pole '{field}' jest wymagane", "max_length" => "'{field}' - wymagane {param} liter"));
		$this -> form_validation -> set_rules('age', 'Wiek', 'trim|required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('height', 'Wzrost', 'trim|required|numeric|min_length[3]|max_length[3]', array('required' => "Pole '{field}' jest wymagane", 'numeric' => "'{field}' musi być liczbą", 'min_length' => "'{field}' musi mieć {param} cyfry", 'max_length' => "'{field}' musi mieć {param} cyfry"));
		$this -> form_validation -> set_rules('weight', 'Waga', 'trim|required|numeric|min_length[2]|max_length[3]', array('required' => "Pole '{field}' jest wymagane", 'numeric' => "'{field}' musi być liczbą", 'min_length' => "'{field}' musi mieć min. {param} cyfry", 'max_length' => "'{field}' może mieć max. {param} cyfr"));
		$this -> form_validation -> set_rules('hair', 'Włosy', 'trim|required|max_length[20]', array('required' => "Pole '{field}' jest wymagane", 'max_length' => "'field' - wymagane {param} liter"));
		$this -> form_validation -> set_rules('eyes', 'Oczy', 'trim|required|max_length[15]', array('required' => "Pole '{field}' jest wymagane", 'max_length' => "'{field}' - wymagane {param} znaków"));
		$this -> form_validation -> set_rules('description', 'Opis', 'trim|required|max_length[255]', array('required' => "Pole '{field}' jest wymagane", 'max_length' => "'{field}' - wymagane {param} znaków"));
		$this -> form_validation -> set_rules('rsz', 'Szybkość', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rww', 'Walka Wręcz', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rus', 'Um. Strzeleckie', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rs', 'Siła', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rwt', 'Wytrzymałość', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rzw', 'Żywotność', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('ri', 'Inicjatywa', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('ra', 'Atak', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rzr', 'Zręczność', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rcp', 'Cechy Przywódcze', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rint', 'Inteligencja', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rop', 'Opanowanie', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rsw', 'Siła Woli', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$this -> form_validation -> set_rules('rogd', 'Ogłada', 'required', array('required' => "Pole '{field}' jest wymagane"));
		$data = $this -> formable -> datas();
		$data['name'] = $this -> session -> user;
		$names = array('userID' => $user_id);
		if (empty($names)) {
			$data['name_list'] = "Brak postaci";
		} else {
			$data['name_list'] = $this -> universal_model -> get_user('characters', $names);
		}
		$data['char_names'] = $this -> get_user_characters($user_id);
		if ($this -> form_validation -> run() === FALSE) {
			$data['char_names'] = $this -> get_user_characters($user_id);
			$this -> load -> view('templates/header', $data);
			if ($this -> session -> has_userdata('userID')) {
				$this -> load -> view('form/success', $data);
			} else {
				$this -> load -> view('form/login');
			}
			$this -> load -> view('form/create_character', $data);
			$this -> load -> view('templates/footer');
		} else {
			$val = array('name' => $_POST['name'], 'userID' => $_SESSION['userID']);
			$char_id = $this -> universal_model -> get_values('characters', array('name' => $_POST['name']), 'id');
			$p_id = $this -> get_char_id($val);
			$_SESSION['p_id'] = $p_id[0]['id'];
			if ($this -> valid_class()) {
				$as = mt_rand(1,4);
				$age = $this -> input -> post('age');
				$race = $this -> input -> post('race');
				$race_age = $this -> get_race_add_skill($race);
				$amount = $this -> char_skill -> check_age($race_age, $age, $as);
				$data_char = $this -> character_data();
				$data_char['amount'] = $amount;
				if (!empty($p_id)) {
					$data_char['id'] = $_SESSION['p_id'];
					$curr_schema = $this -> curr_schema($char_id);
					$curr_schema['id'] = $this -> universal_model -> get_values('current_schematic', array('char_id' => $_SESSION['p_id']), 'id');
					$career = $this -> verify_career($char_id);
					$this -> universal_model -> update('characters', $data_char, array('name' => $_POST['name']));
					$this -> universal_model -> update('current_schematic', $curr_schema, array('char_id' => $char_id));
					$this -> universal_model -> update('career', $career);
					$this -> session -> set_userdata(array('amount' => $amount));
					if ($_POST['race'] == 1) {
						redirect('player_skills/skill');
					} else {
						redirect('race_skills/choose_skills');
					}
				} else {
					$val = array('name' => $_POST['name'], 'userID' => $_SESSION['userID']);
					$this -> universal_model -> insert('characters', $data_char);
					$data_char = $this -> get_char_id($val);
					$player_id;
					foreach ($data_char as $item) {
						$player_id = $item['id'];
					}
					$this -> session -> set_userdata(['p_id' => $player_id]);
					var_dump($player_id);
					$curr_schema = $this -> curr_schema($player_id);
					$career = $this -> verify_career($player_id);
					$this -> universal_model -> insert('career', $career);
					$this -> universal_model -> insert('current_schematic', $curr_schema);
					if ($_POST['race'] == 1) {
						redirect('player_skills/skill');
					} else {
						redirect('race_skills/choose_skills');
					}
				}
			} else {
				$this -> load -> view('templates/header', $data);
				if ($this -> session -> has_userdata('userID')) {
					$this -> load -> view('form/success', $data);
				} else {
					$this -> load -> view('form/login');
				}
				$this -> load -> view('form/create_character', $data);
				$this -> load -> view('templates/footer');
			}
		}
	}
}
