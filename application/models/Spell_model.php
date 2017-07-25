<?php
class Spell_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function spells() {
		$this -> db -> select('*');
		$this -> db -> from('casts_names');
		$this -> db -> from('casts_type');
		$this -> db -> join('spells', 'spells.spell_type = casts_type.id AND spells.spell_name_id = casts_names.id');
		$this -> db -> where('spell_type', 1);
		$query = $this -> db ->get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> result_array();
		} else {
			echo "Błąd zapytania!";
		}
	}  
	
	public function multi_insert($tab_name, $arr) {
		foreach($arr['spell'] as $item) {
			$record = array('id' => $arr['id'], 'char_id' => $arr['char_id'], 'spell' => $item);
			$this -> db -> insert($tab_name, $record);
		}
	}
	
	public function get_spells($id = 1) {
		$this -> db -> select('*');
		$this -> db -> from('casts_names');
		$this -> db -> from('char_spells');
		$this -> db -> join('spells', 'spells.spell_name_id = char_spells.spell AND spells.spell_name_id = casts_names.id');
		$this -> db -> where('char_id', $id);
		$query  = $this -> db -> get();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> result_array();
		} else {
			return "Błąd zapytania!";
		}
	}
}