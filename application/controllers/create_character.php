<?php

class Create_character extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();	
		$this->load->helper('form');
		$this->load->helper('url_helper');
		$this->load->library('form_validation');
		$this->load->model('form_model');
	}
	
	public function character_data($id = "")
	{
		$data = array(
			'id' => $id,
			'name' => $this->input->post('name'),
			'race' => $this->dropdown->post('race'),
			'gender' => $this->dropdown->post('gender'),
			'class' => $this->dropdown->post('class'),
			'nature' => $this->dropdown->post('nature'),
			'age' => $this->input->post('age'),
			'height' => $this->input->post('height'),
			'weight' => $this->input->post('weight'),
			'hair' => $this->input->post('hair'),
			'eyes' => $this->input->post('eyes'),
			'description' => $this->input->post('description'),
			'sz' => $this->input->post('sz'),
			'ww' => $this->input->post('ww'),
			'us' => $this->input->post('us'),
			's' => $this->input->post('s'),
			'wt' => $this->input->post('wt'),
			'zw' => $this->input->post('zw'),
			'i' => $this->input->post('i'),
			'a' => $this->input->post('a'),
			'zr' => $this->input->post('zr'),
			'cp' => $this->input->post('cp'),
			'intel' => $this->input->post('int'),
			'op' => $this->input->post('op'),
			'sw' => $this->input->post('sw'),
			'ogd' => $this->input->post('ogd'),
		);
		
		return $data;
	}

	public function create_character()
	{
		$data['title'] = "Tworzenie postaci";
		$race = $this->form_model->arr_conv('rasa', 'raceName');
		$gender = $this->form_model->arr_conv('gender', 'genderName');
		$classes = $this->form_model->arr_conv('classes', 'className');
		$nature = $this->form_model->arr_conv('charakter', 'natureName');
		$sz = "";
		if (isset($_POST['race']) === TRUE && empty($_POST['race']) === FALSE)
		{
			$sz = $this->form_model->stats($_POST['race'], 'sz');
			if ($sz != "")
			{
				$sz = "Succes";
				echo $sz;
			}
			else
				echo $str = "Błąd";
		}
		
		echo "<pre>";
		var_dump($sz);
		echo "</pre>";
		
		echo "<pre>";
		var_dump($_POST['race']);
		echo "</pre>";
		
		$data['race'] = $race;
		$data['gender'] = $gender;
		$data['classes'] = $classes;
		$data['nature'] = $nature;
		//statystyki
		
		$data['sz'] = $sz;/*
		$data['ww'] = $ww;
		$data['us'] = $us;
		$data['s'] = $s;
		$data['wt'] = $wt;
		$data['zw'] = $zw;
		$data['i'] = $i;
		$data['a'] = $a;
		$data['zr'] = $zr;
		$data['cp'] = $cp;
		$data['intel'] = $int;
		$data['op'] = $op;
		$data['sw'] = $sw;
		$data['ogd'] = $ogd;
		*/
		$this->form_validation->set_rules('name', 'Imie',
			'trim|required|alpha|max_length[40]',
			array('required' => "Pole '{field}' jest wymagane",
				'alpha' => "'{field}' musi składać się z liter",
				"max_length" => "'{field}' - wymagane {param} liter")
		);
		$this->form_validation->set_rules('age', 'Wiek', 
			'trim|required|numeric|min_length[2]|max_length[3]',
			array('required' => "Pole '{field}' jest wymagane",
				'numeric' => "'{field}' musi być liczbą",
				'min_length' => "'{field}' musi mieć min. {param} cyfry",
				'max_length' => "'{field}' może mieć max. {param} cyfr")
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
			'trim|required|alpha|max_length[20]',
			array('required' => "Pole '{field}' jest wymagane",
				'alpha' => "'{field}' musi składać się z liter",
				'max_length' => "'field' - wymagane {param} liter")
		);
		$this->form_validation->set_rules('eyes', 'Oczy',
			'trim|required|alpha|max_length[15]',
			array('required' => "Pole '{field}' jest wymagane",
				'alpha' => "'{field}' musi składać się z liter",
				'max_length' => "'{field}' - wymagane {param} znaków")
		);
		$this->form_validation->set_rules('description', 'Opis',
			'trim|required|alpha|max_length[256]',
			array('required' => "Pole '{field}' jest wymagane",
				'alpha' => "'{field}' musi składać się z liter",
				'max_length' => "'{field}' - wymagane {param} znaków")
		);
		
		if ($this->form_validation->run() === FALSE)
		{
			$this->load->view('templates/header', $data);
			$this->load->view('form/create_character', $data);
			$this->load->view('templates/footer');
		}
		else
		{
			$this->character_model->character();
			$this->load->view('templates/header', $data);
			$this->load->view('characters/character');
			$this->load->view('templates/footer');
		}
	}
}