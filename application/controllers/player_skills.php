<?php
class Player_skills extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('form_model');
		$this->load->helper('form');
		$this->load->helper('url_helper');
		$this->load->library('form_validation');
	}
	
	public function get_player_name()
	{
		return $this->form_model->last_index('characters', 'name');
	}
	
	public function check_age($r, $a, $s)
	{
		if ($r == 1)
		{
			if (($a >= 21 && $a <= 30) || ($a >=41 && $a <= 50))
				return $s += 1;
			else if ($a >= 31 && $a <= 41)
				return $s += 2;
			else if ($a >= 61 && $a <= 70)
				return $s -= 1;
			else if ($a >= 71 && $a <= 80)
				return $s -= 2;
			else
				return $s; 
		}
		else if ($r == 2)
		{
			if (($a >= 41 && $a <= 90) || ($a >= 201 && $a <= 210))
				return $s += 1;
			else if (($a >= 91 && $a <=140) || ($a >= 191 && $a <= 200))
				return $s +=2;
			else if ($a >= 141 && $a <= 190)
				return $s += 3;
			else
				return $s;
		}
		else if ($r == 3)
		{
			if ($a >= 31 && $a <= 70)
				return $s += 1;
			else if ($a >= 101 && $a <= 120)
				return $s -= 1;
			else if ($a >= 121 && $a <= 140)
				return $s -= 2;
			else
				return $s;
		}
		else
		{
			if (($a >= 41 && $a <= 70) || ($a >= 101 && $a <= 130))
				return $s += 1;
			else if ($a >= 71 && $a <= 100)
				return $s += 2;
			else if ($a >= 171 && $a <= 190)
				return $s -= 1;
			else if ($a >= 191 && $a <= 200)
				return $s -= 2;
			else
				return $s;
		}
	}

	public function profession()
	{
		return $this->form_model->arr_conv('profesje', 'professionName', 1);
	}
	
	public function skills($column)
	{
		return $this->form_model->arr_conv('umiejetnosci', $column, 1);
	}
	
	public function skill()
	{
		$name = $this->get_player_name();
		$as = $this->form_model->get_values('characters', array('name' <= $name), 'nskill');
		$age = $this->form_model->get_values('characters', array('name' <= $name), 'age');
		$race = $this->form_model->get_values('characters', array('name' <= $name), 'raceID');
		$data['age'] = $age;
		$am_skill = $this->check_age($race, $age, $as);
		$data['am_skill'] = $am_skill;
		if ($this->form_validation->run() === false)
		{
			$data['player_name'] = $this->get_player_name();
			$data['title'] = "Wybór umiejętności";
			$data['skills'] = $this->skills('skillName');
			$data['skills_id'] = $this->skills('skillid');
			$data['profession'] = $this->profession();
			$this->load->view('templates/header', $data);
			$this->load->view('form/skills', $data);
			$this->load->view('templates/footer');
		}
		else
		{
			$data['title'] = "sukces";
			$this->load->view('form/success');
		}
	}

	public function get_skill($id)
	{
		return $this->form_model->get_skill($id);
	}
	
	public function get_profession()
	{
		if (isset($_POST['prof']) === TRUE && empty($_POST) === FALSE)
		{
			$skill = $this->get_skill($_POST['prof']);
			foreach ($skill as $element)
			{
				//echo $element;
				//foreach ($element as $el)
					//echo $el . ", ";
			}
				
			//else
			//	echo 'false';
			
		}
		else
			echo "Błąd";
	}
}