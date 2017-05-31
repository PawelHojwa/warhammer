<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Formable
{
	public function datas()
	{
		$CI =& get_instance();
		$CI->load->model('form_model');
		$data['title'] = "Tworzenie postaci";
		$race = $CI->form_model->arr_conv('rasa', 'raceName');
		$gender = $CI->form_model->arr_conv('gender', 'genderName');
		$classes = $CI->form_model->arr_conv('classes', 'className');
		$nature = $CI->form_model->arr_conv('charakter', 'natureName');
		$data['race'] = $race;
		$data['gender'] = $gender;
		$data['classes'] = $classes;
		$data['nature'] = $nature;
		
		return $data;
	}
};