<div class="container">
<?php
	echo "<small>" . anchor('login/logout', 'Wyloguj') . "</small>";
	echo br();
?>
	<div class="text-center">
  <?php
		echo br();
		echo "<small>" . anchor('show_char_3/page_3', 'Poprzednia strona') . "</small>";
		echo br(2);
	?>
	</div>
  <div id="mainPage">
    <div id="ramka_gora"></div>
    <div id="ramka_lewa"></div>
    <div id="ramka_prawa"></div>
    <table id="casts" class="tables-3">
    	<tr>
	    	<th>Zaklęcia</th>
	    	<th>Poziom</th>
	    	<th>Koszt PM</th>
	    	<th>Czas trwania</th>
	    	<th>Zasięg</th>
	    	<th>Składniki</th>
	    	<th>Efekt</th>
    	</tr>
    	<tr>
    		<td></td>
    		<td></td>
    		<td></td>
    		<td></td>
    		<td></td>
    		<td></td>
    		<td></td>
    	</tr>
    </table>
    <div id="img-4" class="tables-3"></div>
    <table id="important_info" class="tables-3">
    	<tr>
    		<th>Ważne informacje</th>
    	</tr>
    	<tr>
    		<td></td>
    	</tr>
    </table>
    <table id="money" class="tables-3">
    	<tr>
    		<th>Gotówka</th>
    		<th>Bank</th>
    		<th>Majątek</th>
    		<th>Interesy</th>
    	</tr>
    	<tr>
    		<td></td>
    		<td></td>
    		<td></td>
    		<td></td>
    	</tr>
    </table>
    <div id="ramka_dol"></div>
  </div>
  <div class="text-center">
  <?php
		echo br();
		echo "<small>" . anchor('show_char_3/page_3', 'Poprzednia strona') . "</small>";
	?>
	</div>
</div>