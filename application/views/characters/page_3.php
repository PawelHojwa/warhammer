<div class="container">
<?php
	echo "<small>" . anchor('login/logout', 'Wyloguj') . "</small>";
	echo br();
?>
	<div class="text-center">
  <?php
		echo br();
		echo "<small>" . anchor('show_char_2/page_2', 'Poprzednia strona') . "</small>";
		echo " | ";
		echo "<small>" . anchor('show_char_4/page_4', 'Następna strona') . "</small>";
		echo br(2);
	?>
	</div>
  <div id="mainPage">
    <div id="ramka_gora"></div>
    <div id="ramka_lewa"></div>
    <div id="ramka_prawa"></div>
  	<table id="company" class="tables-3">
  	<tr>
  		<th>Towarzysze</th>
  		<th>Sz</th>
  		<th>WW</th>
  		<th>US</th>
  		<th>S</th>
  		<th>Wt</th>
  		<th>Żw</th>
  		<th>I</th>
  		<th>A</th>
  		<th>Zr</th>
  		<th>CP</th>
  		<th>Int</th>
  		<th>Op</th>
  		<th>SW</th>
  		<th>Ogd</th>
  	</tr>
  	<tr>
  		<td class="text-top">
  		<?php
  			if (!empty($company)) {
  				foreach($company as $item) {
  					if ($item['items_group_id'] == 6) {
  						echo $item['item'];
  					}
  				}
  			} else {
  				echo "";
  			}
  		?>
  		</td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
    	<td></td>
  	</tr>
  	</table>
  	<div id="img-3"></div>
  	<table id="allies_enemy" class="tables-3">
  		<tr>
  			<th>Sprzymierzeńcy</th>
  			<th>Profesja</th>
  			<th>Rasa</th>
  			<th>Pochodzenie</th>
  			<th>Informacje dodatkowe</th>
  		</tr>
  		<tr>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  		</tr>
  		<tr>
  			<th>Wrogowie</th>
  			<th>Profesja</th>
  			<th>Rasa</th>
  			<th>Pochodzenie</th>
  			<th>Informacje dodatkowe</th>
  		</tr>
  		<tr>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  		</tr>
  	</table>
  	<table id="magic-items" class="tables-3">
  		<tr>
  			<th>Przedmiot</th>
  			<th>PMP</th>
  			<th>PWT</th>
  			<th>Żw B:</th>
  			<th>Żw A:</th>
  			<th>Właściwości</th>
  		</tr>
  		<tr>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  		</tr>
  	</table>
    <div id="ramka_dol">
    </div>
  </div>
  <div class="text-center">
  <?php
		echo br();
		echo "<small>" . anchor('show_char_2/page_2', 'Poprzednia strona') . "</small>";
		echo " | ";
		echo "<small>" . anchor('show_char_4/page_4', 'Następna strona') . "</small>";
		echo br();
	?>
	</div>
</div>