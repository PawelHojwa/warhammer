<div class="container">
<?php
$stats_name = array('Sz', 'Ww', 'Us', 'S', 'Wt', 'Żw', 'I', 'A', 'Zr', 'CP', 'Int', 'Op',' SW', 'Ogd');
$current_stat = array($sz, $ww, $us, $s, $wt, $zw, $i, $a, $zr, $cp, $intel, $op, $sw, $ogd);
$stat_value = array($bsz, $bww, $bus, $bs, $bwt, $bzw, $bi, $ba, $bzr, $bcp, $bint, $bop, $bsw, $bogd);
$profession_stats = array($psz, $pww, $pus, $ps, $pwt, $pzw, $pi, $pa, $pzr, $pcp, $pintel, $pop, $psw, $pogd);
echo heading($title, 3);
echo validation_errors("<p class='alert alert-danger'>", "</p>");
echo form_open('edit_panel/first-stat');
?>
<table>
	<tr>
	<?php
		for ($i = 0; $i < count($stats_name); $i++) {
			echo "<th>" . $stats_name[$i] . "</th>";
		}
	?>
	</tr>
	<tr>
	<?php
		foreach ($stat_value as $row) {
			echo "<td class='stat_val'>" . $row . "</td>";
		}
	?>
	</tr>
	<tr>
	<?php
		foreach ($profession_stats as $row) {
			if ($row == 0) {
				echo "<td class='prof_stats'><b>-</b></td>";
			} else {
				echo "<td class='prof_stats'><b>+" . $row . "</b></td>";
			}
		}
	?>
	</tr>
	<tr>
	<?php
		foreach ($stat_value as $row) {
			echo "<td class='add dev lead'>+</td>";
		}
	?>
	</tr>
	<tr>
	<?php
		foreach ($current_stat as $row) {
			echo "<td class='current'>" . $row . "</td>";
		}
	?>
	</tr>
</table>
<p id="info"></p>
<?php
echo form_input('csz', $current_stat[0], array('hidden' => 'hidden', 'id' => 'sz'));
echo form_input('cww', $current_stat[1], array('hidden' => 'hidden', 'id' => 'ww'));
echo form_input('cus', $current_stat[2], array('hidden' => 'hidden', 'id' => 'us'));
echo form_input('cs', $current_stat[3], array('hidden' => 'hidden', 'id' => 's'));
echo form_input('cwt', $current_stat[4], array('hidden' => 'hidden', 'id' => 'wt'));
echo form_input('czw', $current_stat[5], array('hidden' => 'hidden', 'id' => 'zw'));
echo form_input('ci', $current_stat[6], array('hidden' => 'hidden', 'id' => 'i'));
echo form_input('ca', $current_stat[7], array('hidden' => 'hidden', 'id' => 'a'));
echo form_input('czr', $current_stat[8], array('hidden' => 'hidden', 'id' => 'zr'));
echo form_input('ccp', $current_stat[9], array('hidden' => 'hidden', 'id' => 'cp'));
echo form_input('cint', $current_stat[10], array('hidden' => 'hidden', 'id' => 'int'));
echo form_input('cop', $current_stat[11], array('hidden' => 'hidden', 'id' => 'op'));
echo form_input('csw', $current_stat[12], array('hidden' => 'hidden', 'id' => 'sw'));
echo form_input('cogd', $current_stat[13], array('hidden' => 'hidden', 'id' => 'ogd'));
echo br(2);
echo form_submit('btn', 'Zmień', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$(document).ready(function() {
	$('th, td').css({'width': 43, 'height' : 43});
	$('td').addClass('text-center');
	var stats_name = ['Szybkość', 'Walka wręcz', 'Umiejętności sztrzeleckie', 'Siła', 'Wytrzymałość', 'Żywotność', 'Inicjatywa', 'Atak',
	'Zręczność', 'Cechy przywódcze', 'Inteligencja', 'Opanowanie', 'Siła Woli', 'Ogłada'];
	var dev_value = [1, 10, 10, 1, 1, 1, 10, 1, 10, 10, 10, 10, 10, 10];
	var stats_value = [];
	$('.stat_val').each(function(i) {
		stats_value[i] = $(this).text();
	});
	var current_stats = [];
	$('.current').each(function(i) {
		current_stats[i] = $(this).text();
	});
	var prof_stats = [];
	$('.prof_stats').each(function(i) {
		prof_stats[i] = $(this).text();
	});
	am = 1;
	$('.dev').click(function() {
		var index = $('.dev').index(this);
		if (stats_value[index] == current_stats[index] && prof_stats[index] != '-' && am == 1) {
			$('#info').text(stats_name[index] + " zwiększona o " + dev_value[index]);
			current_stats[index] = parseInt(current_stats[index]) + parseInt(dev_value[index]);
			$('.current').eq(index).text(current_stats[index]);
			$('input').eq(index).val(current_stats[index]);
			$('.dev').text('-');
			am = 0;
		} else if (am == 0 && current_stats[index] > stats_value[index]) {
			current_stats[index] = current_stats[index] - dev_value[index];
			$('.current').eq(index).text(current_stats[index]);
			$('input').eq(index).val(current_stats[index]);
			$('.dev').text('+');
			$('#info').text("");
			am = 1;
		}
	});
	$('form').submit(function() {
		if ($('#info').text() === '') {
			alert('Nie rozwinięto statystyki!');
			return false;
		} else {
			return true;
		}
	});
});
</script>