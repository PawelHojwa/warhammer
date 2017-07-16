<?php
class Item_model extends CI_Model {
	public function __contruct() {
		$this -> load -> database();
	}
	
	public function get_inv($tab_name, $where = array())
	{
		$this -> db -> select('*');
		$this -> db -> from($tab_name);
		$this -> db -> join('items', $tab_name.'.name = items.id', 'left');
		$this -> db -> where($where);
		$query = $this -> db -> get();
		$arr = array();
		if ($query -> num_rows() > 0) {
			foreach ($query -> result_array() as $rows) {
				$arr[] = $rows;
			}
			return $arr;
		} else {
			return "Błąd zapytania!!";
		}
	}
}