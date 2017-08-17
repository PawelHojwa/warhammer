<div class="container">
<?php
function dev_schema($x) {
	if ($x == 0) {
		return "-";
	} else {
		return "+" . $x;
	}
}
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
			echo "<td class='rise'><span class='glyphicon glyphicon-plus'></span></td>";
		}
		?>
	</tr>
	<tr>
		<th>Akt.</th>
		<td class="current"><?php echo $csz; ?></td>
		<td class="current"><?php echo $cww; ?></td>
		<td class="current"><?php echo $cus; ?></td>
		<td class="current"><?php echo $cs; ?></td>
		<td class="current"><?php echo $cwt; ?></td>
		<td class="current"><?php echo $czw; ?></td>
		<td class="current"><?php echo $ci; ?></td>
		<td class="current"><?php echo $ca; ?></td>
		<td class="current"><?php echo $czr; ?></td>
		<td class="current"><?php echo $ccp; ?></td>
		<td class="current"><?php echo $cint; ?></td>
		<td class="current"><?php echo $cop; ?></td>
		<td class="current"><?php echo $csw; ?></td>
		<td class="current"><?php echo $cogd; ?></td>
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
	echo form_hidden('ci', $ci);
	echo form_hidden('ca', $ca);
	echo form_hidden('czr', $czr);
	echo form_hidden('ccp', $ccp);
	echo form_hidden('cint', $cint);
	echo form_hidden('cop', $cop);
	echo form_hidden('csw', $csw);
	echo form_hidden('cogd', $cogd);
	echo form_submit('submit', 'Wyślij', array('class' => 'btn btn-primary'));
	echo form_close();
	echo validation_errors("<p class='alert alert-danger'>", "</p>");
?>
<p id="demo"></p>
</div>
<script>
$('document').ready(function() {
	//$('input[type=text]').hide();
	var styles = {
		height : "20px"
	};
	$('.add, .diff').css(styles);
	var width = [];
	var th_width = $('table th')
	th_width.each(function(i) {
		width[i] = $(this).css('width');
	})
	var max = width[0];
	for (var a in width) {
		if (max < width[a]) {
			max = width[a];
		}
	}
	th_width.each(function() {
		$(this).css('width', max);
	})
	$('table td').addClass('text-center');
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
	var stats = [1, 10, 10, 1, 1, 1, 10, 1, 10, 10, 10, 10, 10, 10];
	var name_stats = ['Szykość', 'Walka wręcz', 'Umiejętności strzeleckie', 'Siła', 'Wytrzymałość', 'Żywotność', 'Inicjatywa', 'Atak', 'Zręczność',
	'Cechy przywódcze', 'Inteligencja', 'Opanowanie', 'Siła woli', 'Ogłada'];
	var att = 1;
	$('.rise').addClass('add');
	var rise = function() {
		var index = $('.rise').index(this);
		if (att > 0 && dev[index] != "-") {
			current[index] = parseInt(current[index]) + parseInt(stats[index]);
			$("#demo").text("Zwiększono: " + name_stats[index] + " o " + stats[index]);
			$('.current').eq(index).text(current[index]);
			att--;
			$('.rise').removeClass("add");
			$('.rise span').removeClass("glyphicon-plus");
			$('.rise').addClass("diff");
			$('.rise span').addClass("glyphicon-minus");
		} else {
			if (current[index] == basic_stats[index]) {
				return false;
			} else {
				current[index] = parseInt(current[index]) - parseInt(stats[index]);
			}
			$('.current').eq(index).text(current[index]);
			att++;
			$('#demo').text("");
			$('.rise').removeClass("diff");
			$('.rise span').removeClass("glyphicon-minus");
			$('.rise').addClass("add");
			$('.rise span').addClass("glyphicon-plus");
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