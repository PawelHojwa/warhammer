<div class="container">
<?php
function dev_schema($x) {
	if ($x == 0) {
		return "-";
	} else {
		return "+" . $x;
	}
}
$current = array($csz, $cww, $cus, $cs, $cwt, $czw, $ci, $ca, $zr, $ccp, $cint, $cop, $csw, $cogd);
echo heading($title, 3); 
echo form_open('free_stat/rise_stat');
?>
<table>
	<tr>
		<th></th>
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
		<th>P.</th>
		<td class="basic"><?php echo $sz; ?></td>
		<td class="basic"><?php echo $ww; ?></td>
		<td class="basic"><?php echo $us; ?></td>
		<td class="basic"><?php echo $s; ?></td>
		<td class="basic"><?php echo $wt; ?></td>
		<td class="basic"><?php echo $zw; ?></td>
		<td class="basic"><?php echo $ini; ?></td>
		<td class="basic"><?php echo $a; ?></td>
		<td class="basic"><?php echo $zr; ?></td>
		<td class="basic"><?php echo $cp; ?></td>
		<td class="basic"><?php echo $int; ?></td>
		<td class="basic"><?php echo $op; ?></td>
		<td class="basic"><?php echo $sw; ?></td>
		<td class="basic"><?php echo $ogd; ?></td>
	</tr>
	<tr>
		<th rowspan="2">S.R.</th>
	
		<td class="dev"><?php echo dev_schema($rsz); ?></td>
		<td class="dev"><?php echo dev_schema($rww); ?></td>
		<td class="dev"><?php echo dev_schema($rus); ?></td>
		<td class="dev"><?php echo dev_schema($rs); ?></td>
		<td class="dev"><?php echo dev_schema($rwt); ?></td>
		<td class="dev"><?php echo dev_schema($rzw); ?></td>
		<td class="dev"><?php echo dev_schema($ri); ?></td>
		<td class="dev"><?php echo dev_schema($ra); ?></td>
		<td class="dev"><?php echo dev_schema($rzr); ?></td>
		<td class="dev"><?php echo dev_schema($rcp); ?></td>
		<td class="dev"><?php echo dev_schema($rint); ?></td>
		<td class="dev"><?php echo dev_schema($rop); ?></td>
		<td class="dev"><?php echo dev_schema($rsw); ?></td>
		<td class="dev"><?php echo dev_schema($rogd); ?></td>
	</tr>
	<tr>
		<?php
		for ($i = 0; $i < 14; $i++) {
			echo "<td class='rise'><span>+</span></td>";
		}
		?>
	</tr>
	<tr>
		<th>Akt.</th>
		<?php
			foreach ($current as $row) {
				echo "<td class='current'>" . $row . "</td>";
			}
		?>
	</tr>
</table>
<?php
	echo br();
	echo form_hidden('csz', $csz);
	echo form_hidden('cww', $cww);
	echo form_hidden('cus', $cus);
	echo form_hidden('cs', $cs);
	echo form_hidden('cwt', $cwt);
	echo form_hidden('czw', $czw);
	echo form_hidden('ci', $ini);
	echo form_hidden('ca', $ca);
	echo form_hidden('czr', $czr);
	echo form_hidden('ccp', $ccp);
	echo form_hidden('cint', $cint);
	echo form_hidden('cop', $cop);
	echo form_hidden('csw', $csw);
	echo form_hidden('cogd', $cogd);
	echo form_input('d_sz', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_ww', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_us', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_s', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_wt', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_zw', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_i', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_a', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_zr', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_cp', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_int', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_op', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_sw', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_input('d_ogd', 0, array('class' => 'points', 'hidden' => 'hidden'));
	echo form_submit('submit', 'Wyślij', array('class' => 'btn btn-primary'));
	echo form_close();
	echo validation_errors("<p class='alert alert-danger'>", "</p>");
?>
<p id="demo"></p>
</div>
<script>
$('document').ready(function() {
	var th_width = $('table th');
	th_width.each(function() {
		$(this).css({'width': 40, 'height' : 40});
	});
	$('.dev, .rise').css('height', 20);
	$('table td').addClass('text-center');
	$('.rise').css('vertical-align', 'middle');
	var dev = [];
	$('.dev').each(function(index) {
		dev[index] = $(this).text();
	});
	var current = [];
	$('.current').each(function(i) {
		current[i] = $(this).text()
	});
	var basic_stats = [];
	$('.basic').each(function(i) {
		basic_stats[i] = $(this).text();
	});
	var point = [];
	$('.points').each(function(i) {
		point[i] = $(this).val();
	})
	var stats = [1, 10, 10, 1, 1, 1, 10, 1, 10, 10, 10, 10, 10, 10];
	var name_stats = ['Szykość', 'Walka wręcz', 'Umiejętności strzeleckie', 'Siła', 'Wytrzymałość', 'Żywotność', 'Inicjatywa', 'Atak', 'Zręczność',
	'Cechy przywódcze', 'Inteligencja', 'Opanowanie', 'Siła woli', 'Ogłada'];
	var att = 1;
	$('.rise').addClass('add');
	var rise = function() {
		var index = $('.rise').index(this);
		if (att > 0 && dev[index] != "-") {
			current[index] = parseInt(current[index]) + parseInt(stats[index]);
			point[index] = parseInt(point[index]) + parseInt(stats[index])
			$("#demo").text("Zwiększono: " + name_stats[index] + " o " + stats[index]);
			$('.current').eq(index).text(current[index]);
			$('.points').eq(index).val(point[index]);
			att--;
			$('.rise').removeClass("add");
			//$('.rise span').removeClass("glyphicon-plus");
			$('.rise').addClass("diff");
			$('.rise span').text("-");
		} else {
			if (current[index] == basic_stats[index]) {
				return false;
			} else {
				current[index] = parseInt(current[index]) - parseInt(stats[index]);
				point[index] = point[index] - stats[index];
			}
			$('.current').eq(index).text(current[index]);
			$('.points').eq(index).val(point[index]);
			att++;
			$('#demo').text("");
			$('.rise').removeClass("diff");
			//$('.rise span').removeClass("glyphicon-minus");
			$('.rise').addClass("add");
			$('.rise span').text("+");
		}
		$('input').eq(index).val(current[index]);
	}
	$('.rise').on('click', rise);
	$('form').submit(function() {
		if (att > 0) {
			alert("Nie podwyższono statystyki!");
			return false;
		}
	})
});
</script>