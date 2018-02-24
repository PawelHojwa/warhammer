<div class="container">
<?php
function dev_schema($x) {
	if ($x == 0) {
		return "-";
	} else {
		return "+" . $x;
	}
}
$current = array($csz, $cww, $cus, $cs, $cwt, $czw, $ci, $ca, $czr, $ccp, $cint, $cop, $csw, $cogd);
$current_name = array('csz', 'cww', 'cus', 'cs', 'cwt', 'czw', 'ci', 'ca', 'czr', 'ccp', 'cint', 'cop', 'csw', 'cogd');
echo heading($title, 3);
echo anchor('add_choose/show_options', 'Powrót');
echo "<p>Profesja: <span class='lead'>" . $profession_name . "</span></p>";
echo "<p class='moveBar'>Punkty do wydania: <span class='lead'>" . $amount . "</span></p>";
echo form_open('add_stats/add', array('class' => 'dev_form')); 
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
		<th>Początkowy</th>
		<td class="basic"><?php echo $sz; ?></td>
		<td class="basic"><?php echo $ww; ?></td>
		<td class="basic"><?php echo $us; ?></td>
		<td class="basic"><?php echo $s; ?></td>
		<td class="basic"><?php echo $wt; ?></td>
		<td class="basic"><?php echo $zw; ?></td>
		<td class="basic"><?php echo $i; ?></td>
		<td class="basic"><?php echo $a; ?></td>
		<td class="basic"><?php echo $zr; ?></td>
		<td class="basic"><?php echo $cp; ?></td>
		<td class="basic"><?php echo $int; ?></td>
		<td class="basic"><?php echo $op; ?></td>
		<td class="basic"><?php echo $sw; ?></td>
		<td class="basic"><?php echo $ogd; ?></td>
	</tr>
	<tr>
		<th rowspan="3">Schemat Rozwoju</th>
	
		<?php
		for ($i = 0; $i < 14; $i++) {
			echo "<td class='diff'><span class='glyphicon glyphicon-minus'></span></td>";
		}
		?>
	</tr>
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
			echo "<td class='add'><span class='glyphicon glyphicon-plus'></span></td>";
		}
		?>
	</tr>
	<tr>
		<th>Aktualny</th>
		<?php
		  foreach ($current as $row) {
		  	echo "<td class='current'>" . $row . "</td>";
		  }
		?>
	</tr>
</table>
<p id="demo"></p>
<?php
foreach ($current_name as $row) {
	echo form_hidden($row, '');
}
echo form_hidden('exp', 0);
echo form_submit('btn', 'Wyślij', array('class' => 'btn btn-primary'));
echo form_close();
?>
<p id="info"></p>
</div>

<script>
$('document').ready(function() {
	var am = $('.moveBar span').text();
	console.log(am);
	$('.moveBar span').text(0 + "/" + am);
	$('th:not(:first-child)').css('width', 50);
	$('th:first-child').css({'width': 150});
	$('td').addClass('text-center');
	var basic = [];
	$('.basic').each(function(index) {
		basic[index] = $(this).text();
	});
	var input_h = [];
	$('input[type=hidden]').each(function(index) {
		input_h[index] = $('.current').eq(index).text();
		$(this).val(input_h[index]);
	}); 
	console.log(input_h);
	var dev = [];
	$('.dev').each(function(index) {
		dev[index] = $(this).text();
	});
	var current = [];
	$('.current').each(function(i) {
		current[i] = $(this).text()
	});
	var basic_stats = [];
	$('.current').each(function(i) {
		basic_stats[i] = $(this).text();
	});
	var s = 0;
	var exp;
	var stats = [1, 10, 10, 1, 1, 1, 10, 1, 10, 10, 10, 10, 10, 10];
	var name_stats = ['Szykość', 'Walka wręcz', 'Umiejętności strzeleckie', 'Siła', 'Wytrzymałość', 'Żywotność', 'Inicjatywa', 'Atak', 'Zręczność',
	'Cechy przywódcze', 'Inteligencja', 'Opanowanie', 'Siła woli', 'Ogłada'];
	$('.add').click(function() {
		if (s >= 0 && s != am) {
			var index = $('.add').index(this);
			if (dev[index] != "-" && (current[index] - basic[index]) < parseInt(dev[index])) {
				s++;
				exp = s * 100;
				$('#info').text('Zwiększono: ' + name_stats[index] + " o " + stats[index] + ".");
				$('input[name=exp]').val(exp);
				current[index] = parseInt(current[index]) + parseInt(stats[index]);
				input_h[index] = current[index];
				$('.current').eq(index).text(current[index]);
				$('input[type=hidden]').eq(index).val(input_h[index]);
				$('.moveBar span').text(s + "/" + am);
				if (s == am) {
					$('.moveBar').hide();
				} else {
					$('.moveBar').show();
				}
			} else {
				return false;
			}
		} else {
			return false;
		}
		
	});
	$('.diff').click(function() {
		var index = $('.diff').index(this);
		if (s <= am && s != 0) {
			if (dev[index] != "-" && current[index] > basic_stats[index]) {
				s--;
				exp = s * 100;
				$('#info').text("");
				current[index] = parseInt(current[index]) - parseInt(stats[index]);
				input_h[index] = current[index];
				$('.current').eq(index).text(current[index]);
				$('input[type=hidden]').eq(index).val(input_h[index]);
				$('.moveBar span').text(s + "/" + am);
			} else {
				return false;
			}
			if (s < am) {
				$('.moveBar').show();
			} else {
				$('.moveBar').hide();
			}
		} else {
			return false;
		}
		$('input[name=exp]').val(exp);
	});
});
</script>