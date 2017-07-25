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
    		<td class="text-top">
    		<?php
    		if (!empty($spells)) {
    			foreach($spells as $spell) {
    				echo "<span class='spell_show'>" . $spell['cast_name'] . "</span>";
						echo br();
    			}
    		}
    		?>
    		</td>
    		<td class="text-top text-center">
    		<?php
    		if (!empty($spells)) {
    			foreach($spells as $spell) {
    				echo "<span class='spell_show'>" . $spell['spell_lvl'] . "</span>";
						echo br();
    			}
    		} else {
    			echo "";
    		}
    		?>
    		</td>
    		<td class="text-top text-center">
    		<?php
    		if (!empty($spells)) {
    			foreach($spells as $spell) {
    				echo "<span class='spell_show'>" . $spell['spell_cost_pm'] . "</span>";
						echo br();
    			}
    		} else {
    			echo "";
    		}
    		?>
    		</td>
    		<td class="text-top text-center">
    		<?php
    		if (!empty($spells)) {
    			foreach($spells as $spell) {
    				echo "<span class='spell_show'>" . $spell['spell_duration'] . "</span>";
						echo br();
    			}
    		} else {
    			echo "";
    		}
    		?>
    		</td>
    		<td class="text-top text-center">
    		<?php
    		if (!empty($spells)) {
    			foreach($spells as $spell) {
    				echo "<span class='spell_show'>" . $spell['spell_range'] . "</span>";
						echo br();
    			}
    		} else {
    			echo "";
    		}
    		?>
    		</td>
    		<td class="text-top text-left">
    		<?php
    		if (!empty($spells)) {
    			foreach($spells as $spell) {
    				echo "<span class='spell_show'>" . $spell['spell_components'] . "</span>";
						echo br();
    			}
    		} else {
    			echo "";
    		}
    		?>
    		</td>
    		<td class="text-top text-left">
    		<?php
    		if (!empty($spells)) {
    			foreach($spells as $spell) {
    				echo "<span class='spell_show'>s. " . $spell['spell_effect'] . "</span>";
						echo br();
    			}
    		} else {
    			echo "";
    		}
    		?>
    		</td>
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
<script>
$('document').ready(function() {
	var height = [];
	var list = $('.spell_show');
	list.each(function(index) {
		height[index] = $(this).css('height');
	});
	var a = height[0];
	var x;
	for(x in height) {
		if (height[x] > a) {
			a = height[x];
		}
	}
	list.css('height', a);
});
</script>