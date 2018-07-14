<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Skills extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('form');
		$this -> load -> helper('html');
		$this -> load -> helper('url');
		$this -> load -> library('table');
		$this -> load -> model('admin_model');
	}
	
	public function get_skill() {
		$arr = $this -> admin_model -> get_skills();
		$this -> table -> set_heading('Nazwa', 'Opis');
		foreach ($arr as $row) {
			$hide = ['data' => $row -> skillid, 'class' => 'hide'];
			$this -> table -> add_row(
				$hide,
				$row -> skillName,
				anchor('show/skill_description?id=' . $row -> skillid, 'Pokaż', ['class' => 'desc'])
			);
		}
		echo $this -> table -> generate();
	}
	
	public function create_data() {
		$arr = [
			'title' => 'Umiejętności',
		];
		return $arr;
	}
	
	public function show() {
		$data = $this -> create_data();
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('show/skill_show', $data);
		$this -> load -> view('templates/footer');
	}
}