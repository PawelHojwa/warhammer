<?php

class Form_model extends CI_Model
{
	public function __construct()
	{
		$this->load->database();
	}
	
	public function get_user($tab_name, $values = array())
	{
		$query = $this->db->get_where($tab_name, $values);
		return $query->result_array();
	}
	
	public function get_values($tab_name, $values = array(), $column = "")
	{
		$query = $this->db->get_where($tab_name, $values);
		foreach ($query->result_array() as $row)
			return $row[$column];
	}
	
	public function arr_conv($tab_name, $column, $i = 0)
	{
		$target = array();
		$query = $this->db->get($tab_name);
		foreach ($query->result_array() as $row)
		{
			$target[$i] = $row[$column];
			$i++;
		}
		return $target;	
	}
	
	public function get_data($tab_name)
	{
		$query = $this->db->get($tab_name);
		return $query->result_array();
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
	
	public function change($tab_name, $arr, $val = array())
	{
		$this->db->set($arr);
		$this->db->where($val);
		$this->db->update($tab_name, $arr, $val);
	}
	
	public function last_index($tab_name, $col)
	{
		$query = $this->db->get($tab_name);
		$row = $query->last_row();
		return $row->$col;
	}
	
	public function get_skill($id)
	{
		$query = "SELECT skillName FROM umiejetnosci, p_profesje WHERE umiejetnosci.skillid = p_profesje.skillid AND p_profesje.profID = " . $id;
		$result = $this->db->query($query);
		return $result->result_array();
	}
}