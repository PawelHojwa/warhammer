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
		<td><?php echo $sz; ?></td>
		<td><?php echo $ww; ?></td>
		<td><?php echo $us; ?></td>
		<td><?php echo $s; ?></td>
		<td><?php echo $wt; ?></td>
		<td><?php echo $zw; ?></td>
		<td><?php echo $i; ?></td>
		<td><?php echo $a; ?></td>
		<td><?php echo $zr; ?></td>
		<td><?php echo $cp; ?></td>
		<td><?php echo $int; ?></td>
		<td><?php echo $op; ?></td>
		<td><?php echo $sw; ?></td>
		<td><?php echo $ogd; ?></td>
	</tr>
	<tr>
		<th rowspan="3">S.R.</th>
		<?php
		for ($i = 0; $i < 14; $i++) {
			echo "<td class='diff'><span class='glyphicon glyphicon-minus'></span></td>";
		}
		?>
	</tr>
	<tr>
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
	echo form_submit('submit', 'Wyślij', array('class' => 'btn btn-primary'));
	echo form_close();
	echo validation_errors("<p class='alert alert-danger'>", "</p>");
?>
<p id="demo"></p>
</div>
<script>
$('document').ready(function() {
	$('.add, .diff').css('height', '20px');
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
	var stats = [1, 10, 10, 1, 1, 1, 10, 1, 10, 10, 10, 10, 10, 10];
	var name_stats = ['Szykość', 'Walka wręcz', 'Umiejętności strzeleckie', 'Siła', 'Wytrzymałość', 'Żywotność', 'Inicjatywa', 'Atak', 'Zręczność',
	'Cechy przywódcze', 'Inteligencja', 'Opanowanie', 'Siła woli', 'Ogłada'];
	var att = 1;
	var rise = function() {
		var index = $('.add').index(this);
		current[index] = parseInt(current[index]) + parseInt(stats[index]);
		if (att > 0) {
			if (dev[index] != "-") {
				$("#demo").text("Zwiększono: " + name_stats[index] + " o " + stats[index]);
				$('.current').eq(index).text(current[index]);
				att--;
			} else {
				$("#demo").text("");
				return false;
			}
		} else {
			return false;
		}
	}
	var dec = function() {
		var index = $('.diff').index(this);
		current[index] = parseInt(current[index]) - parseInt(stats[index]);
		if (att == 0) {
			if (dev[index] != "-") {
				$('.current').eq(index).text(current[index]);
				att++;
				$('#demo').text("");
			} else {
				return false;
			}
		} else {
			return false;
		}
	}
	$('.add').on('click', rise);
	$('.diff').on('click', dec);
});
</script>