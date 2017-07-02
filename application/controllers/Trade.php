<?php 

class Trade extends CI_Controller
{
	public function __construct()
	{
		parent:: __construct();
		$this -> load -> model('form_model');
		$this -> load -> helper('html');
		$this -> load -> helper('url_helper');
		$this -> load -> helper('form');
	}
	
	public function get_list($tab_name)
	{
		return $this -> form_model -> get_data($tab_name);
	}
	
	public function price_list()
	{
		$data['trade_list'] = $this -> trade_list();
		$data['title'] = 'Cennik';
		$this -> load -> view('templates/header', $data);
		$this -> load -> view('trade/list', $data);
		$this -> load -> view('templates/footer');
	}
	
	public function trade_list()
	{
		return $arr = $this -> form_model -> arr_conv('things_types', 'name', 1);
	}
	
	public function get_trade_list() {
		if (isset($_REQUEST['trade']) === TRUE && $_REQUEST['trade'] !== FALSE) {
			$t_list = $this -> form_model -> get_trade_table($_REQUEST['trade']);
            echo "<table class='table'>";
            echo "<tr>";
            echo "<th style='border-top: 1px solid black;'>Nazwa</th>
                <th style='border-top: 1px solid black;'>Cena</th>
                <th style='border-top: 1px solid black;'>Obciążenie</th>
                <th style='border-top: 1px solid black;'>Dostępność</th>";
            echo "<tr>";
		    foreach ($t_list as $item) {
                echo "<tr>";
			    echo "<td>" . $item['name'] . "</td>";
                echo "<td style='text-align: center;'>" . $item['price'] . "</td>";
                echo "<td style='text-align: center;'>" . $item['weight'] . "</td>";
                echo "<td style='text-align: center;'>" . $item['avail'] . "</td>";
                echo "</tr>";
		    }
            echo "</table>";
		} else {
			echo "Gdzie jest błąd?";
		}
		
	}
}