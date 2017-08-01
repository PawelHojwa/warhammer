<?php
class P_player_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function get_skill($tab_name, $key, $id) {
		$query = $this -> db -> get_where($tab_name, [$key => $id]);
		return $query -> result_array();
	}
}