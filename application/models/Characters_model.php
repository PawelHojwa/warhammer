<?php
class Characters_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function get_basic_info($id) {
		$this -> db -> select('*');
		$this -> db -> from('rasa');
		$this -> db -> from('charakter');
		$this -> db -> from('classes');
		$this -> db -> from('gender');
		$this -> db -> from('professions');
		$this -> db -> join('characters', 'characters.raceID = rasa.raceID AND characters.natureID = charakter.natureID AND 
			characters.classID = classes.classID AND characters.profession_id = professions.id AND characters.genderID = gender.genderID');
		$this -> db -> where(array('characters.id' => $id));
		$query = $this -> db -> get();
		$err = "";
		if ($query !== FALSE && $query -> num_rows() > 0) {
			foreach ($query -> result_array() as $row) {
				return $row;
			}
		} else {
			$err = "Błąd!";
			return $err;
		}
	}
}