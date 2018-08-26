<?php

class Trade extends CI_Controller {
	public function __construct() {
		parent::__construct();
		$this -> load -> model('universal_model');
		$this -> load -> model('trade_model');
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> helper('form');
		$this -> load -> library('session');
	}

	public function get_list($tab_name) {
		return $this -> universal_model -> get_data($tab_name);
	}

	public function price_list() {
		$data['trade_list'] = $this -> trade_list();
		$data['title'] = 'Cennik';
		$data['name'] = $this -> session -> user;
		$this -> load -> view('templates/header', $data);
		if ($this -> session -> has_userdata('userID')) {
			$this -> load -> view('form/success', $data);
		} else {
			$this -> load -> view('form/login');
		}
		$this -> load -> view('trade/list', $data);
		$this -> load -> view('templates/footer');
	}

	public function trade_list() {
		return $arr = $this -> universal_model -> arr_conv('things_types', 'name', 1);
	}
	
	public function convert($price, $times, $conv) {
		$zk = $sz = $p = 0;
		$price *= $conv;
		$price *= $times;
		$zk = floor($price / 240);
		$sz = floor(($price % 240) / 12);
		$p = floor($price % 12);
		if ($sz == 0 && $p == 0) {
			return $zk . " zk";
		} else if ($zk == 0 && $p == 0) {
			return $sz . "/-"; 
		}	else if ($p == 0) {
			return $zk . " zk " . $sz . "/-";
		}  else if ($zk == 0) {
			return $sz . "/" . $p . "p";
		} else if ($zk != 0 && $sz != 0 && $p != 0) {
			return $zk . " zk " . $sz . "/" . $p . "p";
		}
	}
	
	public function compute_price() {
		if (isset($_REQUEST['radio']) === TRUE && $_REQUEST['radio'] !== FALSE) {
			$arr = array();
			$price = array();
			$zk_pattern = "/zk/";
			$sz_pattern = "/\/-/";
			$trade_list = $this -> trade_model -> get_trade_table($_REQUEST['trade']);
			foreach ($trade_list as $item) {
				
				if ($_REQUEST['radio'] == 1) {
					$price[] = $item['price'];
				} else {
					if (preg_match($zk_pattern, $item['price'])) {
						$arr = explode(' ', $item['price']);
						foreach ($arr as $a) {
							if (is_numeric($a)) {
								$price[] = $this -> convert($a, $_REQUEST['radio'], 240);
							}
						}
					} else if (preg_match($sz_pattern, $item['price'])){
						$arr = explode('/-', $item['price']);
						foreach ($arr as $a) {
							if (is_numeric($a)) {
								$price[] = $this -> convert($a, $_REQUEST['radio'], 12);							
							}
						}
					}
				}
			}
			$this -> output -> set_content_type('application/json') -> set_output(json_encode($price));
		} else {
			echo "BlaBla";
		}
	}

	public function get_trade_list() {
		if (isset($_REQUEST['trade']) === TRUE && $_REQUEST['trade'] !== FALSE) {
			$t_list = $this -> trade_model -> get_trade_table($_REQUEST['trade']);
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
						echo "<td style='text-align: center;' class='item-price'>" . $item['price'] . "</td>";
						echo "<td style='text-align: center;'>" . $item['weight'] . "</td>";
						echo "<td style='text-align: center;'>" . $item['avail'] . "</td>";
						echo "</tr>";
					}
					echo "</table>";
		} else {
			echo "Błąd";
		}
	}

}
