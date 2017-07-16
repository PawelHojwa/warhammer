<?php

class Speed extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> model('speed_model');
		$this -> load -> model('universal_model');
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> helper('form');
	}
	
	public function speed_values() {
		return $arr = $this -> universal_model -> arr_conv('speed', 'speed', 1, 20);
	}
	
	public function speed_tables() {
		$data['speed'] = $this -> speed_values();
		$data['title'] = 'Prędkość';
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('speed/speed', $data);
		$this -> load -> view('templates/footer');
	}
	
	public function choice_speed() {
		if (isset($_REQUEST['choice']) === TRUE && $_REQUEST['choice'] !== FALSE) {
			$speed = $this -> speed_model -> get_speed($_REQUEST['choice']);
			echo "<table id='speed' style='margin-top: 10px;'>";
			echo "<tr>";
			echo "<th>Tempo ruchu</th>";
			echo "<th class='speed'>m/10s</th>";
			echo "<th class='speed'>m/min</th>";
			echo "<th class='speed'>km/h</th>";
			echo "</tr>";
			echo "<tr>";
			echo "<th>Ostrożnie</th>";
			foreach ($speed as $val) {
				echo "<td>" . $val['carefully'] . "</td>";
			}
			echo "</tr>";
			echo "<tr>";
			echo "<th>Normalnie</th>";
			foreach ($speed as $val) {
				echo "<td>" . $val['normal'] . "</td>";
			}
			echo "</tr>";
			echo "<tr>";
			echo "<th>Trucht</th>";
			foreach ($speed as $val) {
				echo "<td>" . $val['run'] * 0.75 . "</td>";
			}
			echo "</tr>";
			echo "<tr>";
			echo "<th>Biegiem</th>";
			foreach ($speed as $val) {
				echo "<td>" . $val['run'] . "</td>";
			}
			echo "</tr>";
			echo "</table>";
		} else {
			echo "Błąd";
		}
	}
}