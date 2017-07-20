<?php

class Create_player extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> model('universal_model');
		$this -> load -> model('race_model');
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
		$data = array('id' => $id, 'userID' => $_SESSION['userID'], 'name' => $this -> input -> post('name'), 'raceID' => $this -> input -> post('race'), 'genderID' => $this -> input -> post('gender'), 'classID' => $this -> input -> post('classes'), 'natureID' => $this -> input -> post('nature'), 'age' => $this -> input -> post('p_age'), 'nskill' => rand(1, 4), 'height' => $this -> input -> post('height'), 'weight' => $this -> input -> post('weight'), 'hair' => $this -> input -> post('hair'), 'eyes' => $this -> input -> post('eyes'), 'description' => $this -> input -> post('description'), 'sz' => (($this -> input -> post('sz')) + ($this -> input -> post('rsz'))), 'ww' => (($this -> input -> post('ww')) + ($this -> input -> post('rww'))), 'us' => (($this -> input -> post('us')) + ($this -> input -> post('rus'))), 's' => (($this -> input -> post('s')) + ($this -> input -> post('rs'))), 'wt' => (($this -> input -> post('wt')) + ($this -> input -> post('rwt'))), 'zw' => (($this -> input -> post('zw')) + ($this -> input -> post('rzw'))), 'i' => (($this -> input -> post('i')) + ($this -> input -> post('ri'))), 'a' => (($this -> input -> post('a')) + ($this -> input -> post('ra'))), 'zr' => (($this -> input -> post('zr')) + ($this -> input -> post('rzr'))), 'cp' => (($this -> input -> post('cp')) + ($this -> input -> post('rcp'))), 'intel' => (($this -> input -> post('int')) + ($this -> input -> post('rint'))), 'op' => (($this -> input -> post('op')) + ($this -> input -> post('rop'))), 'sw' => (($this -> input -> post('sw')) + ($this -> input -> post('rse'))), 'ogd' => (($this -> input -> post('ogd')) + ($this -> input -> post('rogd'))), );
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
		} else if ($class == 4 && ($sw < 30 || $int < 30)) {
			return false;
		} else {
			return true;
		}
	}

	public function get_race() {
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE) {
			$race = $this -> race_model -> stats('rasa', 'raceID', $_POST['race'], 'raceID');
			echo $race;
		}
	}

	public function create() {
		if (!isset($_SESSION['user'])) {
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			redirect('login/form_login');
		} else {
			$user_id = $_SESSION['userID'];
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
				$this -> load -> view('form/create_character', $data);
				$this -> load -> view('templates/footer');
			} else {
				$val = array('name' => $_POST['name'], 'userID' => $_SESSION['userID']);
				$p_id = $this -> get_char_id($val);
				$_SESSION['p_id'] = $p_id[0]['id'];
				$n_skill = $p_id[0]['nskill'];
				if ($this -> valid_class()) {
					$data_char = $this -> character_data();
					if (!empty($p_id)) {
						$data_char['id'] = $_SESSION['p_id'];
						$data_char['nskill'] = $n_skill;
						$this -> universal_model -> update('characters', $data_char, array('name' => $_POST['name']));
					} else {
						$val = array('name' => $_POST['name'], 'userID' => $_SESSION['userID']);
						$this -> universal_model -> insert('characters', $data_char);
						$data_char = $this -> get_char_id($val);
						$player_id;
						foreach ($data_char as $item) {
							$player_id = $item['id'];
						}
						$this -> session -> set_userdata(['p_id' => $player_id]);
						redirect('player_skills/skill');
					}
						
					 /*$this -> load -> view('templates/header', $data);
					 $this -> load -> view('form/create_character', $data);
					 $this -> load -> view('templates/footer');
					 echo "<pre>";
						var_dump($_SESSION['p_id']);
						echo "</pre>";*/
					//redirect('player_skills/skill');
				} else {
					$this -> load -> view('templates/header', $data);
					$this -> load -> view('form/create_character', $data);
					$this -> load -> view('templates/footer');
				}
			}
		}
	}

}
