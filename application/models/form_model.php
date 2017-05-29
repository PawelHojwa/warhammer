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
	
	public function get_stats($tab_name = "", $val = array(), $col)
	{
		//if (isset($_POST['race']) === true)
		//{
			$query = $this->db->get_where($tab_name, $val);
			$row = $query->row_array();
			return $row[$col];
		//}
	}
	
	public function stats($val = "", $col = "")
	{
		
			$sql = "SELECT * FROM rasa WHERE raceID = ". $val;
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