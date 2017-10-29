<?php
class Delete extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> library('session');
		$this -> load -> model('universal_model');
		$this -> load -> helper('html');
		$this -> load -> helper('url');
	}
	
	public function success($page) {
		redirect('admin_panel/' . $page);
	}
	
	public function del_char() {
		$this -> universal_model -> delete('characters', array('id' => $_GET['id']));
		$this -> universal_model -> delete('char_inv', array('char_id' => $_GET['id']));
		$this -> universal_model -> delete('char_skills', array('char_id' => $_GET['id']));
		$this -> universal_model -> delete('char_spells', array('char_id' => $_GET['id']));
		$this -> success('show_list');
	}
}