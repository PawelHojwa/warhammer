<?php
class P_player_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}
	
	public function get_skill($id) {
		$query = $this -> db -> get_where('professions_skills', ['profession_id' => $id]);
		return $query -> result_array();
	}
}