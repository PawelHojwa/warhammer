<?php
class Current_schematic_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function get_current_schematic($id = 1) {
		$this -> db -> select('*');
		$this -> db -> from('current_schematic');
		$this -> db -> where('char_id', $id);
		$query = $this -> db -> get();
		$target = array();
		if ($query !== FALSE && $query -> num_rows() > 0) {
			foreach ($query -> result_array() as $item) {
				$target['sz'] =  $item['sz'];
				$target['ww'] =  $item['ww'];
				$target['us'] =  $item['us'];
				$target['s'] =  $item['s'];
				$target['wt'] =  $item['wt'];
				$target['zw'] =  $item['zw'];
				$target['i'] =  $item['i'];
				$target['a'] =  $item['a'];
				$target['zr'] =  $item['zr'];
				$target['cp'] =  $item['cp'];
				$target['intel'] =  $item['intel'];
				$target['op'] =  $item['op'];
				$target['sw'] =  $item['sw'];
				$target['ogd'] =  $item['ogd'];
			}
			return $target;
		} else {
			return "Błąd zapytania";
		}
	}
}