<?php
class Monsters extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> model('monster_model');
		$this -> load -> model('universal_model');
		$this -> load -> helper('form');	
		$this -> load -> library('session');
	}
	
	public function get_monsters() {
		if (isset($_REQUEST['cat']) === TRUE && $_REQUEST['cat'] !== FALSE) {
			$monsters = $this -> monster_model -> monsters($_REQUEST['cat']);
			echo "<table class='table'>";
			echo "<tr>";
			echo "<th style='border-top: 1px solid black;'>Nazwa</th>";
			echo "<th style='border-top: 1px solid black;'>Sz</th>";
			echo "<th style='border-top: 1px solid black;'>WW</th>";
			echo "<th style='border-top: 1px solid black;'>US</th>";
			echo "<th style='border-top: 1px solid black;'>S</th>";
			echo "<th style='border-top: 1px solid black;'>Wt</th>";
			echo "<th style='border-top: 1px solid black;'>Żw</th>";
			echo "<th style='border-top: 1px solid black;'>I</th>";
			echo "<th style='border-top: 1px solid black;'>A</th>";
			echo "<th style='border-top: 1px solid black;'>Zr</th>";
			echo "<th style='border-top: 1px solid black;'>CP</th>";
			echo "<th style='border-top: 1px solid black;'>Int</th>";
			echo "<th style='border-top: 1px solid black;'>Op</th>";
			echo "<th style='border-top: 1px solid black;'>SW</th>";
			echo "<th style='border-top: 1px solid black;'>Ogd</th>";
			echo "</tr>";
			foreach ($monsters as $monster) {
				echo "<tr>";
				echo "<td	class='text-center'>" . $monster['monsterName'] . "</td>";
				echo "<td class='text-center'>" . $monster['sz'] . "</td>";
				echo "<td class='text-center'>" . $monster['ww'] . "</td>";
				echo "<td class='text-center'>" . $monster['us'] . "</td>";
				echo "<td class='text-center'>" . $monster['s'] . "</td>";
				echo "<td class='text-center'>" . $monster['wt'] . "</td>";
				echo "<td class='text-center'>" . $monster['zw'] . "</td>";
				echo "<td class='text-center'>" . $monster['i'] . "</td>";
				echo "<td class='text-center'>" . $monster['a'] . "</td>";
				echo "<td class='text-center'>" . $monster['zr'] . "</td>";
				echo "<td class='text-center'>" . $monster['cp'] . "</td>";
				echo "<td class='text-center'>" . $monster['intel'] . "</td>";
				echo "<td class='text-center'>" . $monster['op'] . "</td>";
				echo "<td class='text-center'>" . $monster['sw'] . "</td>";
				echo "<td class='text-center'>" . $monster['ogd'] . "</td>";
				echo "</tr>";
			}
			echo "</table>";
		} else {
			echo "Błąd zapytania.";
		}
	}

	public function show_monsters () {
		$monsters = $this -> universal_model -> get_data('kategoria_potwora');
		$category_name = array();
		$category_id = array();
		foreach ($monsters as $monster) {
			$category_name[] = $monster['monsterCategory'];
			$category_id[] = $monster['categoryID'];
		}
		$data['monster'] = array_combine($category_id, $category_name);
		$data['title'] = "Bestiariusz";
		$data['name'] = $this -> session -> user;
		$this -> load -> view('templates/header', $data);
		if ($this -> session -> has_userdata('userID')) {
				$this -> load -> view('form/success', $data);
			} else {
				$this -> load -> view('form/login');
			}
		$this -> load -> view('monsters/show_monsters');
		$this -> load -> view('templates/footer');
	}
	
	public function search_monster() {
		if (isset($_REQUEST['monster']) === TRUE && $_REQUEST['monster'] !== FALSE) {
			$monsters = $this -> monster_model -> search($_REQUEST['monster']);
			if (!empty($monsters) && is_array($monsters)) {
				echo "<table class='table'>";
				echo "<tr>";
				echo "<th style='border-top: 1px solid black;'>Nazwa</th>";
				echo "<th style='border-top: 1px solid black;'>Sz</th>";
				echo "<th style='border-top: 1px solid black;'>WW</th>";
				echo "<th style='border-top: 1px solid black;'>US</th>";
				echo "<th style='border-top: 1px solid black;'>S</th>";
				echo "<th style='border-top: 1px solid black;'>Wt</th>";
				echo "<th style='border-top: 1px solid black;'>Żw</th>";
				echo "<th style='border-top: 1px solid black;'>I</th>";
				echo "<th style='border-top: 1px solid black;'>A</th>";
				echo "<th style='border-top: 1px solid black;'>Zr</th>";
				echo "<th style='border-top: 1px solid black;'>CP</th>";
				echo "<th style='border-top: 1px solid black;'>Int</th>";
				echo "<th style='border-top: 1px solid black;'>Op</th>";
				echo "<th style='border-top: 1px solid black;'>SW</th>";
				echo "<th style='border-top: 1px solid black;'>Ogd</th>";
				echo "</tr>";
				foreach ($monsters as $monster) {
					echo "<tr>";
					echo "<td	class='text-center'>" . $monster['monsterName'] . "</td>";
					echo "<td class='text-center'>" . $monster['sz'] . "</td>";
					echo "<td class='text-center'>" . $monster['ww'] . "</td>";
					echo "<td class='text-center'>" . $monster['us'] . "</td>";
					echo "<td class='text-center'>" . $monster['s'] . "</td>";
					echo "<td class='text-center'>" . $monster['wt'] . "</td>";
					echo "<td class='text-center'>" . $monster['zw'] . "</td>";
					echo "<td class='text-center'>" . $monster['i'] . "</td>";
					echo "<td class='text-center'>" . $monster['a'] . "</td>";
					echo "<td class='text-center'>" . $monster['zr'] . "</td>";
					echo "<td class='text-center'>" . $monster['cp'] . "</td>";
					echo "<td class='text-center'>" . $monster['intel'] . "</td>";
					echo "<td class='text-center'>" . $monster['op'] . "</td>";
					echo "<td class='text-center'>" . $monster['sw'] . "</td>";
					echo "<td class='text-center'>" . $monster['ogd'] . "</td>";
					echo "</tr>";
				}
				echo "</table>";
			} else {
				echo "Nie ma takiego potwora, sróbuj ponownie!!";
			}
		} else {
			echo "Błąd";
		}
	}
}