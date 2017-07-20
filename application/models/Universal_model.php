<?php 

class Universal_model extends CI_Model{
	public function __construct(){
		$this -> load -> database();
	}
	
	public function get_user($tab_name, $values = array()) {
		$this -> db -> select('*');
		$this -> db -> where($values);
		$query = $this -> db -> get($tab_name);
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> result_array();
		}
	}
	
	public function get_values($tab_name, $value = array(), $column = "") {
		$query = $this -> db -> get_where($tab_name, $value);
		$val = "";
		if ($query !== FALSE && $query -> num_rows() > 0) {
			foreach ($query->result_array() as $row) {
				$val =  $row[$column];
			}
			return $val;
		}
	}

	public function arr_conv($tab_name, $column, $i = 0, $limit = 0) {
		$target = array();
		$query = $this -> db -> get($tab_name, $limit);
		foreach ($query->result_array() as $row) {
			$target[$i] = $row[$column];
			$i++;
		}
		return $target;
	}
	
	public function get_data($tab_name) {
		$query = $this -> db -> get($tab_name);
		if ($query -> num_rows() > 0) {
			return $query -> result_array();
		}
	}
	
	public function insert($tab_name, $data = array()) {
		$this -> db -> insert($tab_name, $data);
	}
	
	public function delete($tab_name, $arr) {
		return $this -> db -> delete($tab_name, $arr);
	}

	public function change($tab_name, $arr, $val = array()) {
		$this -> db -> set($arr);
		$this -> db -> where($val);
		$this -> db -> update($tab_name, $arr, $val);
	}
	
	public function last_index($tab_name, $col) {
		$query = $this -> db -> get($tab_name);
		$row = $query -> last_row();
		return $row -> $col;
	}
	
	public function update($table_name, $data = array(), $id = 1) {
		$this -> db -> update($table_name, $data, $id);
	}
}