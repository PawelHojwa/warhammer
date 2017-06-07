<?php

class Create_player extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();	
		$this->load->helper('html');
		$this->load->helper('form');
		$this->load->helper('url_helper');
		$this->load->library('form_validation');
		$this->load->library('session');	
		$this->load->library('formable');
		$this->load->model('form_model');
	}
	
	public function character_data($id = "")
	{
		$data = array(
			'id' => $id,
			'userID' =>$_SESSION['userID'],
			'name' => $this->input->post('name'),
			'raceID' => $this->input->post('race'),
			'genderID' => $this->input->post('gender'),
			'classID' => $this->input->post('classes'),
			'natureID' => $this->input->post('nature'),
			'age' => $this->input->post('age'),
			'height' => $this->input->post('height'),
			'weight' => $this->input->post('weight'),
			'hair' => $this->input->post('hair'),
			'eyes' => $this->input->post('eyes'),
			'description' => $this->input->post('description'),
			'sz' => (($this->input->post('sz')) + ($this->input->post('rsz'))),
			'ww' => (($this->input->post('ww')) + ($this->input->post('rww'))),
			'us' => (($this->input->post('us')) + ($this->input->post('rus'))),
			's' => (($this->input->post('s')) + ($this->input->post('rs'))),
			'wt' => (($this->input->post('wt')) + ($this->input->post('rwt'))),
			'zw' => (($this->input->post('zw')) + ($this->input->post('rzw'))),
			'i' => (($this->input->post('i')) + ($this->input->post('ri'))),
			'a' => (($this->input->post('a')) + ($this->input->post('ra'))),
			'zr' => (($this->input->post('zr')) + ($this->input->post('rzr'))),
			'cp' => (($this->input->post('cp')) + ($this->input->post('rcp'))),
			'intel' => (($this->input->post('int')) + ($this->input->post('rint'))),
			'op' => (($this->input->post('op')) + ($this->input->post('rop'))),
			'sw' => (($this->input->post('sw')) + ($this->input->post('rse'))),
			'ogd' => (($this->input->post('ogd')) + ($this->input->post('rogd'))),
		);
		
		return $data;
	}

	public function get_user_characters($id)
	{
		return $this->form_model->get_values('characters', array('userID' => $id), 'name');
	}
	
	

	public function create()
	{
		
		if (!isset($_SESSION['user']))
		{
			$data['title'] = "Logowanie";
			$data['sub_title'] = "Formularz logowania";
			$data['error'] = "";
			$this->load->view('templates/header', $data);
			$this->load->view('form/login', $data);
			$this->load->view('templates/footer');
		}
		else
		{
			$user_id = $_SESSION['userID'];
			$this->form_validation->set_rules('name', 'Imie',
				'trim|required|max_length[40]',
				array('required' => "Pole '{field}' jest wymagane",
					"max_length" => "'{field}' - wymagane {param} liter")
			);
			$this->form_validation->set_rules('age', 'Wiek', 
				'trim|required|numeric',
				array('required' => "Pole '{field}' jest wymagane",
					'numeric' => "'{field}' musi być liczbą")
			);
			$this->form_validation->set_rules('height', 'Wzrost',
				'trim|required|numeric|min_length[3]|max_length[3]',
				array('required' => "Pole '{field}' jest wymagane",
					'numeric' => "'{field}' musi być liczbą",
					'min_length'=>"'{Field}' musi mieć {param} cyfry",
					'max_length' => "'{field}' musi mieć {param} cyfry")
			);
			$this->form_validation->set_rules('weight', 'Waga', 
				'trim|required|numeric|min_length[2]|max_length[3]',
				array('required' => "Pole '{field}' jest wymagane",
					'numeric' => "'{field}' musi być liczbą",
					'min_length' => "'{field}' musi mieć min. {param} cyfry",
					'max_length' => "'{field}' może mieć max. {param} cyfr")
			);
			$this->form_validation->set_rules('hair', 'Włosy',
				'trim|required|max_length[20]',
				array('required' => "Pole '{field}' jest wymagane",
					'max_length' => "'field' - wymagane {param} liter")
			);
			$this->form_validation->set_rules('eyes', 'Oczy',
				'trim|required|max_length[15]',
				array('required' => "Pole '{field}' jest wymagane",
					'max_length' => "'{field}' - wymagane {param} znaków")
			);
			$this->form_validation->set_rules('description', 'Opis',
				'trim|required|max_length[255]',
				array('required' => "Pole '{field}' jest wymagane",
					'max_length' => "'{field}' - wymagane {param} znaków")
			);
			$data = $this->formable->datas();
			if ($this->form_validation->run() === FALSE)
			{
				$data['char_names'] = $this->get_user_characters($user_id);
				$this->load->view('templates/header', $data);
				$this->load->view('form/create_character', $data);
				$this->load->view('templates/footer');
			}
			else
			{
				$data_char = $this->character_data();
				$this->form_model->insert('characters', $data_char);
				$data['title'] = "Sukces";
				$this->load->view('templates/header', $data);
				$this->load->view('form/create_character');
				$this->load->view('templates/footer');
			}
		}
	}
	public function get_sz() //1
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$sz = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'sz');
			if ($sz == true)
			{
				echo $sz;
			}
			else
				echo "Błąd";
		}
	}

	public function get_ww() //2
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$ww = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'ww');
			if ($ww == true)
			{
				echo $ww;
			}
			else
				echo "Błąd";
		}
	}
	
	public function get_us() //3
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$us = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'us');
			if ($us == true)
			{
				echo $us;
			}
			else
				echo "Błąd";
		}
	}
	
	public function get_s() //4
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$s = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 's');
			echo $s;
		}
	}
	
	public function get_wt() //5
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$wt = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'wt');
			echo $wt;
		}
	}
	
	public function get_zw() //6
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$zw = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'zw');
			if ($zw == true)
			{
				echo $zw;
			}
			else
				echo "Błąd";
		}
	}
	
	public function get_i() //7
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$i = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'i');
			if ($i == true)
			{
				echo $i;
			}
			else
				echo "Błąd";
		}
	}
	
	public function get_a() //8
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$a = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'a');
			if ($a == true)
			{
				echo $a;
			}
			else
				echo "Błąd";
		}
	}
	
	public function get_zr() //9
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$zr = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'zr');
			if ($zr == true)
			{
				echo $zr;
			}
			else
				echo "Błąd";
		}
	}
	
	public function get_cp() //10
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$cp = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'cp');
			if ($cp == true)
			{
				echo $cp;
			}
			else
				echo "Błąd";
		}
	}
	
	public function get_int() //11
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$int = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'intel');
			if ($int == true)
			{
				echo $int;
			}
			else
				echo "Błąd";
		}
	}
	
	public function get_op() //12
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$op = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'op');
			if ($op == true)
			{
				echo $op;
			}
			else
				echo "Błąd";
		}
	}
	
	public function get_sw() //13
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$sw = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'sw');
			if ($sw == true)
			{
				echo $sw;
			}
			else
				echo "Błąd";
		}
	}
	
public function get_ogd() //14
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$ogd = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'ogd');
			if ($ogd == true)
			{
				echo $ogd;
			}
			else
				echo "Błąd";
		}
	}
	
	public function check_class()
	{
		if (isset($_POST['classes']) === TRUE && empty($_POST['classes']) === FALSE)
		{
			$wor = $this->form_model->stats('classes', 'classID', $_POST['classes'], 'className');
			$race = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'raceName');
			if ($wor == true && $race == true)	
			{
				echo $wor; 
			}
			else
				echo "Błąd";
		}
	}
	
	public function get_race()
	{
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$race = $this->form_model->stats('rasa', 'raceID', $_POST['race'], 'raceID');
			echo $race;
		}
	}
}