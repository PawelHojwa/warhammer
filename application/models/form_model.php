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
		$i = 1;
		$target = array();
		$query = $this->db->get($tab_name);
		foreach ($query->result_array() as $row)
		{
			$target[$i] = $row[$column];
			$i++;
		}
		return $target;	
	}
	
	public function stats($tab_name, $src,  $val = "", $col = "")
	{
			$sql = "SELECT * FROM " . $tab_name . " WHERE " . $src . " = ". $val;
			$result = $this->db->query($sql);
			
			if ($result->num_rows() > 0)
			{
				foreach ($result->result_array() as $row)
					return $row[$col];
			} 	
	}
	
	public function insert($tab_name, $data = array())
	{
		return $this->db->insert($tab_name, $data);
	}
}