<?php

class Form_model extends CI_Model {
	public function __construct() {
		$this -> load -> database();
	}

	public function get_user($tab_name, $values = array()) {
		$this -> db -> where($values);
		$query = $this -> db -> get($tab_name);
		if ($query !== FALSE && $query -> num_rows() > 0) {
			return $query -> result_array();
		}
	}

	public function get_values($tab_name, $value = array(), $column = "") {
		$query = $this -> db -> get_where($tab_name, $value);
		foreach ($query->result_array() as $row) {
			return $row[$column];
		}
	}

	public function arr_conv($tab_name, $column, $i = 0) {
		$target = array();
		$query = $this -> db -> get($tab_name);
		foreach ($query->result_array() as $row) {
			$target[$i] = $row[$column];
			$i++;
		}
		return $target;
	}
	
	public function get_professions($tab_name, $column, $id, $i = 0) {
		$target = array();
		$this -> db -> where('classID', $id);
		$query = $this -> db -> get($tab_name);
		if ($query -> num_rows() > 0) {
			foreach ($query -> result_array() as $row) {
				$target[$i] = $row[$column];
				$i++;
			}
		}
		return $target;
	}

	public function get_data($tab_name) {
		$query = $this -> db -> get($tab_name);
		return $query -> result_array();
	}

	public function stats($tab_name, $src, $val = "", $col = "") {
		$sql = "SELECT * FROM " . $tab_name . " WHERE " . $src . " = " . $val;
		$result = $this -> db -> query($sql);
		if ($result -> num_rows() > 0) {
			foreach ($result->result_array() as $row)
				if (is_array($col)) {
					$result = [];
					foreach ($col as $col_row) {
						$result[$col_row] = $row[$col_row];
					}
					return $result;
				} else {
					return $row[$col];
				}
		}
	}

	public function insert($tab_name, $data = array()) {
		$this -> db -> insert($tab_name, $data);
	}

	public function update($table_name, $data = array(), $id = 1) {
		$this -> db -> update($table_name, $data, $id);
	}

	public function multi_insert($tab_name, $column ,$arr) {
		foreach ($arr[$column] as $skill) {
			$record = array('id' => $arr['id'], 'char_id' => $arr['char_id'], 'profId' => $arr['profId'], 'skillid' => $skill);
			$this -> db -> insert($tab_name, $record);
		}
	}
	
	public function multi($tab_name, $column, $arr) {
		foreach ($arr[$column] as $skill) {
			$record = array('id' => $arr['id'], 'char_id' => $arr['char_id'], 'inv' => $skill);
			$this -> db -> insert($tab_name, $record);
		}
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

	public function get_skill($id) {
		$query = $this -> db -> get_where('p_profesje', ['profID' => $id]);
		return $query -> result_array();
	}

	public function get_basic_info($id) {
		$this -> db -> select('*');
		$this -> db -> from('rasa');
		$this -> db -> from('charakter');
		$this -> db -> from('classes');
		$this -> db -> from('gender');
		$this -> db -> join('characters', 'characters.raceID = rasa.raceID AND characters.natureID = charakter.natureID AND characters.classID = classes.classID
			AND characters.genderID = gender.genderID');
		$this -> db -> where(array('id' => $id));
		$query = $this -> db -> get();
		$arr = array();
		foreach ($query->result_array() as $row)
			$row;
		return $row;
	}

	public function get_character_skills($id = 1) {
		$this -> db -> select('*');
		$this -> db -> from('umiejetnosci');
		$this -> db -> from('profesje');
		$this -> db -> join('char_skills', 'umiejetnosci.skillid = char_skills.skillid AND profesje.profID = char_skills.profId', 'right');
		$this -> db -> where(['char_id' => $id]);
		$query = $this -> db -> get();
		$arr = array();
		foreach ($query->result_array() as $key => $value) {
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
