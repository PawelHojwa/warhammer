<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Formable
{
	public function datas()
	{
		$CI =& get_instance();
		$CI->load->model('form_model');
		$race = $CI->form_model->arr_conv('rasa', 'raceName', 1);
		$gender = $CI->form_model->arr_conv('gender', 'genderName', 1);
		$classes = $CI->form_model->arr_conv('classes', 'className', 1);
		$nature = $CI->form_model->arr_conv('charakter', 'natureName', 1);
		$data['title'] = 'Tworzenie postaci';
		$data['user'] = $_SESSION['user'];
		$data['id'] = $_SESSION['userID'];
		$data['race'] = $race;
		$data['gender'] = $gender;
		$data['classes'] = $classes;
		$data['nature'] = $nature;
		
		return $data;
	}
};