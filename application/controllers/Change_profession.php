<?php
class Change_profession extends CI_Controller {
	public function __construct() {
		parent:: __construct();
		$this -> load -> helper('url');
		$this -> load -> helper('html');
		$this -> load -> helper('form');
		$this -> load -> library('session');
		$this -> load -> library('form_validation');
		$this -> load -> model('universal_model');
		$this -> load -> model('profession_model');
		$this -> load -> model('exit_profession_model');
	}
	
	public function get_exit_profession($id) {
		return $this -> exit_profession_model -> exit_professions($id);
	}
	
	public function get_professions_id($id = 0) {
		return $this -> profession_model -> get_professions('professions', 'id',$id);
	}
	
	public function get_professions_name($id = 1) {
		return $this -> profession_model -> get_professions('professions', 'profession_name', $id);
	}
	
	public function next_profession() {
		if ($_POST['classes'] !== FALSE && isset($_POST['classes']) === TRUE) {
			$professions = array();
			if ($_POST['classes'] == 'c') {
				$exit_id =  $exit_name = $result = array();
				$next_prof = $this -> get_exit_profession($_POST['c_prof']);
				foreach ($next_prof as $next) {
					$exit_id[] = $next['exit_profession'];
				}
				foreach ($exit_id as $row) {
					$result[] = $this -> universal_model -> get_user('professions', array('id' => $row));
				}
				foreach ($result as $rows) {
					foreach ($rows as $row) {
						$exit_name[] = $row['profession_name'];
					}
				}
				$professions = array_combine($exit_id, $exit_name);
			} else {
				$prof_id = $this -> get_professions_id($_POST['classes']);
				$prof_name = $this -> get_professions_name($_POST['classes']);
				$professions = array_combine($prof_id, $prof_name);
			}
			if (empty($professions)) {
				echo "Brak profesji wyjściowych.";
			} else {
				echo "<select name='profession'>";
				foreach ($professions as $id => $name) {
					echo "<option value='" . $id . "'>" . $name . "</option>"; 
				}
				echo "</select>";
			}
		} else {
			echo "Brak profesji!";
		}
	}
	
	public function verify_prof() {
		return $prof = array('profession_id' => $this -> input -> post('profession'));
	}
	
	public function change() {
		if ($this -> session -> has_userdata('user') === FALSE) {
			redirect('login/view_form');
		} else {
			$id = $this -> session -> p_id;
			$c_id = $this -> universal_model -> get_data('classes');
			$classes_id = $classes_name = array();
			foreach ($c_id as $row) {
				$classes_id[] = $row['classID'];
				$classes_name[] = $row['className'];
			}
			$classes = array_combine($classes_id, $classes_name);
			$class_id = $this -> universal_model -> get_values('characters', array('id' => $id), 'classID');
			$class_name = $this -> universal_model -> get_values('classes', array('classID' => $class_id), 'className');
			$character_name = $this -> universal_model -> get_values('characters', array('id' => $id), 'name');
			$prof_id = $this -> universal_model -> get_values('characters', array('id' => $id), 'profession_id');
			$prof_name = $this -> universal_model -> get_values('professions', array('id' => $prof_id), 'profession_name');
			$data['character_name'] = $character_name;
			$data['class_id'] = $class_id;
			$data['class_name'] = $class_name;
			$data['classes'] = $classes;
			$data['profession_id'] = $prof_id;
			$data['profession'] = $prof_name;
			$data['title'] = "Zmiana profesji";
			$this -> form_validation -> set_rules('profession', 'Profesja', 'required', array('required' => '{field} jest wymagana'));
			if ($this -> form_validation -> run() === FALSE) {
				$this -> load -> view('templates/header', $data);
				$this -> load -> view('form/character_change', $data);
				$this -> load -> view('templates/footer');
			} else {
				$prof = $this -> verify_prof();
				$this -> universal_model -> update('characters',$prof, array('id' => $id));
				redirect('show_char/page_1');
			}
		}
	}
}