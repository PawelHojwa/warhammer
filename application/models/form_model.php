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
					if (is_array($col)) {
						$result = [];
						foreach($col as $col_row) {
							$result[$col_row] = $row[$col_row];
						}
						return $result;
					} else {
						return $row[$col];
					}
			} 	
	}
	
	public function insert($tab_name, $data = array())
	{
		return $this->db->insert($tab_name, $data);
	}
	
	public function multi_insert($tab_name, $data)
	{
		foreach ($data['skillid'] as $skill)
		{
			$record = array(
				'id' => $data['id'],
				'char_id' => $data['char_id'],
				'profId' => $data['profId'],
				'skillid' => $skill
			);
			$this->db->insert($tab_name, $record);
		}
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
		$query = $this->db->get_where('p_profesje', ['profID' => $id]);
		return $query->result_array();
	}
	
	public function get_basic_info()
	{
		$this->db->select('*');
		$this->db->from('rasa');
		$this->db->from('charakter');
		$this->db->from('classes');
		$this->db->from('gender');
		$this->db->join('characters',
			'characters.raceID = rasa.raceID AND characters.natureID = charakter.natureID AND characters.classID = classes.classID
			AND characters.genderID = gender.genderID');
		$query = $this->db->get();
		$arr = array();
		foreach ($query->result_array() as $row)
			$row;
		return $row;
	}
	
	public function get_character_skills()
	{
		$this->db->select('*');
		$this->db->from('umiejetnosci');
		$this->db->from('profesje');
		$this->db->join('char_skills', 'umiejetnosci.skillid = char_skills.skillid AND profesje.profID = char_skills.profId', 'right');
		$this->db->where(['char_id' => 1]);
		$query = $this->db->get();
		$arr = array();
		foreach ($query->result_array() as $key => $value)
		{
			$arr['profName'] = $value['professionName'];
			$arr['skillid'][$key] = $value['skillName'];
			$arr['sz'] = $value['sz'];
			$arr['ww'] = $value['ww'];
			$arr['us'] = $value['us'];
			$arr['s'] = $value['s'];
			$arr['wt'] = $value['wt'];
			$arr['zw'] = $value['zw'];
			$arr['i'] = $value['i'];
			$arr['a'] = $value['a'];
			$arr['zr'] = $value['zr'];
			$arr['cp'] = $value['cp'];
			$arr['int'] = $value['intel'];
			$arr['op'] = $value['op'];
			$arr['sw'] = $value['sw'];
			$arr['ogd'] = $value['ogd'];
		}
		return $arr;
	}
}