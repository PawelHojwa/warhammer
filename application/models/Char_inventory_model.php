<?php
class Char_inventory_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function multi($tab_name, $column, $arr) {
		foreach ($arr[$column] as $skill) {
			$record = array('id' => $arr['id'], 'char_id' => $arr['char_id'], 'inv' => $skill);
			$this -> db -> insert($tab_name, $record);
		}
	}
}