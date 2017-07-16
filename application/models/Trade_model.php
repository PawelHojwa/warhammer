<?php
class Trade_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function get_trade_table($type = 1) {
		$this -> db -> select('*');
		$this -> db -> from('availability');
		$this -> db -> from('items');
		$this -> db -> join('trades', 'trades.availability = availability.lp AND items.id = trades.name', 'left');
		$this -> db -> where('type', $type);
		$query = $this -> db -> get();
		$arr = array();
		if ($query -> num_rows() > 0) {
			foreach ($query -> result_array() as $rows) {
				$arr[] = $rows;
			}
			return $arr;
		} else {
			return "Błąd";
		}
	}
}