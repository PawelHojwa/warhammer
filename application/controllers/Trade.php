<?php

class Trade extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> model('universal_model');
		$this -> load -> model('trade_model');
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> helper('form');
	}

	public function get_list($tab_name) {
		return $this -> universal_model -> get_data($tab_name);
	}

	public function price_list() {
		$data['trade_list'] = $this -> trade_list();
		$data['title'] = 'Cennik';
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('trade/list', $data);
		$this -> load -> view('templates/footer');
	}

	public function trade_list() {
		return $arr = $this -> universal_model -> arr_conv('things_types', 'name', 1);
	}
	
	public function quality($price, $times, $to_pens) {
		$zk = $sz = $p = 0;
		$total = "";
		$price *= $to_pens;
		$price *= $times;
		$zk = floor($price / 240);
		$sz = floor($price % 240 / 12);
		$p = floor($price % 12);
		if ($sz == 0 && $p == 0) {
			$total = $zk . " zk";
		} else if ($p == 0) {
			$total = $zk . " zk " . $sz . "/-"; 
		} else if ($zk == 0 && $p == 0) {
			$total = $sz . "/-";
		} else if ($zk == 0) {
			$total = $sz . "/" . $p;
		} else if ($zk == 0 && $sz == 0) {
			$total = $p . "p";
		} else {
			$total = $zk . " zk " . $sz . "/" . $p;
		}
		return $total;
	}
	
	public function compute_price($price, $times = 1) {
		$pr = array();
		$zk_pattern = "/zk$/";
		$sz_pattern = "/\//";
		$p_pattern = "/p/";
		$k_pattern = "/K/i";
		$p = array();
		if (preg_match($zk_pattern, $price)) {
			$pr = explode(" ", $price);
			foreach ($pr as $a) {
				if (is_numeric($a)) {
					return $this -> quality($a, $times, 240);
				}
			}
		}	else if (preg_match($sz_pattern, $price)) {
			$p = explode("/", $price);	
			foreach ($p as $a) {
				if (is_numeric($a)) {
					return $this -> quality($a, $times, 12);
				}
			}
		} else if (preg_match($p_pattern, $price)){
			foreach ($p as $a) {
				if (is_numeric($a)) {
					return $this -> quality($a, $times, 1);
				}
			}
		} 
	}

	public function get_trade_list() {
		if (isset($_REQUEST['trade']) === TRUE && $_REQUEST['trade'] !== FALSE) {
			$t_list = $this -> trade_model -> get_trade_table($_REQUEST['trade']);
			if ($_REQUEST['trade'] > 1 && $_REQUEST['trade'] < 7) {
				echo "<table class='table'>";
				echo "<tr>";
				echo "<th style='border-top: 1px solid black;'>Nazwa</th>
	            <th style='border-top: 1px solid black;'>Cena</th>
	            <th style='border-top: 1px solid black;'>Obciążenie</th>
	            <th style='border-top: 1px solid black;'>Dostępność</th>";
				echo "<tr>";
				foreach ($t_list as $item) {
					echo "<tr>";
					echo "<td>" . $item['item'] . "</td>";
					echo "<td style='text-align: center;'>" . $this -> compute_price($item['price'], $_REQUEST['radio']) . "</td>";
					echo "<td style='text-align: center;'>" . $item['weight'] . "</td>";
					echo "<td style='text-align: center;'>" . $item['avail'] . "</td>";
					echo "</tr>";
				}
				echo "</table>";
			} else {
					echo "<table class='table'>";
					echo "<tr>";
					echo "<th style='border-top: 1px solid black;'>Nazwa</th>
		            <th style='border-top: 1px solid black;'>Cena</th>
		            <th style='border-top: 1px solid black;'>Obciążenie</th>
		            <th style='border-top: 1px solid black;'>Dostępność</th>";
					echo "<tr>";
					foreach ($t_list as $item) {
						echo "<tr>";
						echo "<td>" . $item['item'] . "</td>";
						echo "<td style='text-align: center;'>" . $item['price'] . "</td>";
						echo "<td style='text-align: center;'>" . $item['weight'] . "</td>";
						echo "<td style='text-align: center;'>" . $item['avail'] . "</td>";
						echo "</tr>";
					}
					echo "</table>";
			}
		} else {
			echo "Gdzie jest błąd?";
		}
	}

}
