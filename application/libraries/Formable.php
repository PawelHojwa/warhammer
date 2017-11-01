<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Formable {
	public function datas() {
		$CI = &get_instance();
		$CI -> load -> model('universal_model');
		$races = $CI -> universal_model -> get_data('rasa');
		$race_id = $race_name = array();
		foreach ($races as $row) {
			$race_id[] = $row['raceID'];
			$race_name[] = $row['raceName'];
		}
		$race = array_combine($race_id, $race_name);
		$genders = $CI -> universal_model -> get_data('gender');
		$gender_id = $gender_name = array();
		foreach ($genders as $row) {
			$gender_id[] = $row['genderID'];
			$gender_name[] = $row['genderName']; 
		}
		$gender = array_combine($gender_id, $gender_name);
		$classess = $CI -> universal_model -> get_data('classes');
		$class_id = $class_name = array();
		foreach ($classess as $row) {
			$class_id[] = $row['classID'];
			$class_name[] = $row['className']; 
		}
		$classes = array_combine($class_id, $class_name);
		$natures = $CI -> universal_model -> get_data('charakter');
		$nature_id = $nature_name = array();
		foreach ($natures as $row) {
			$nature_id[] = $row['natureID'];
			$nature_name[] = $row['natureName'];
		}
		$nature = array_combine($nature_id, $nature_name); 	
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
