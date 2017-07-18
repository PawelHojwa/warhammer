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
	
	public function get_char_inventory($id = 1) {
		$this -> db -> select('*');
		$this -> db -> from('char_inv');
		$this -> db -> from('trades');
		$this -> db -> join('items', 'items.id = char_inv.inv AND items.id = trades.name');
		$this -> db -> where('char_id', $id);
		$query = $this -> db -> get();
		if ($query -> num_rows() > 0) {
			$arr = array();
			foreach ($query -> result_array() as $row) {
				$arr[] = $row;
			}
			return $arr;
		} else {
			return "";
		}
	}
	
	public function get_weapon($tab_name, $type, $id = 1) {
		$this -> db -> select('*');
		$this -> db -> from('char_inv');
		$this -> db -> from($tab_name);
		$this -> db -> join('items', 'items.id = char_inv.inv AND items.' . $type . ' = ' . $tab_name . '.weapon_id');
		$this -> db -> where(array('char_id' => $id));
		$query = $this -> db -> get();
		if ($query -> num_rows() > 0) {
			$arr = array();
			foreach ($query -> result_array() as $row) {
				$arr[] = $row;
			}
			return $arr;
		} else {
			return "";
		}
	}
	
	public function get_armour($id) {
		$this -> db -> select('*');
		$this -> db -> from('char_inv');
		$this -> db -> from('armour');
		$this -> db -> join('items', 'items.id = char_inv.inv AND armour.armour_id = char_inv.inv');
		$this -> db -> where(array('char_id' => $id));
		$query = $this -> db -> get();
		if ($query -> num_rows() > 0) {
			$arr = array();
			foreach ($query -> result_array() as $row) {
				$arr[] = $row;
			}
			return $arr;
		} else {
			return "";
		}
	}
}