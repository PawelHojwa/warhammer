<?php

class Form_model extends CI_Model
{
	public function __construct()
	{
		$this->load->database();
	}
	
	public function get_values($tab_name, $values = array())
	{
		$query = $this->db->get_where($tab_name, $values);
		return $query->result_array();
	}
	
	public function arr_conv($tab_name, $column)
	{
		$target = array();
		$query = $this->db->get($tab_name);
		foreach ($query->result_array() as $row)
			$target[] = $row[$column];
		return $target;	
	}
	
	public function insert($tab_name, $data = array())
	{
		return $this->db->insert($tab_name, $data);
	}
}