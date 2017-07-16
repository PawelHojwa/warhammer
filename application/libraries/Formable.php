<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Formable {
	public function datas() {
		$CI = &get_instance();
		$CI -> load -> model('universal_model');
		$race = $CI -> universal_model -> arr_conv('rasa', 'raceName', 1);
		$gender = $CI -> universal_model -> arr_conv('gender', 'genderName', 1);
		$classes = $CI -> universal_model -> arr_conv('classes', 'className', 1);
		$nature = $CI -> universal_model -> arr_conv('charakter', 'natureName', 1);
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
