<?php
echo heading($subtitle, 4);
echo "<p>" . $added . "</p>";
echo validation_errors('<p class="alert alert-danger">', '</p>');
echo form_open('admin_panel/add_profession');
echo form_input('profession_name', '', array('placeholder' => 'Nazwa profesji...'));
echo br(2);
?>
<div class="prof_type">
<p class="lead">Rodzaj profesji:</p>
<?php
echo form_radio('profession_type', 1, false);
echo form_label('Porfesja podstawowa');
echo form_radio('profession_type', 2, false);
echo form_label('Profesja zaawansowana');
echo br();
echo form_dropdown('class_type', $classes, 1);
echo br();
?>
</div>
<div class="profession-statistics">
<p class="lead">Statysyki</p>
<?php
echo form_input('', 'Sz', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'WW', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'US', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'S', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'Wt', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'Żw', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'I', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'A', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'Zr', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'CP', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'Int', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'Op', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'SW', array('class' => 'text-center', 'size' => 2));
echo form_input('', 'Ogd', array('class' => 'text-center', 'size' => 2));
echo br();
echo form_button('btn', '+ 1', array('class' => 'add'));
echo form_button('btn', '+ 10', array('class' => 'add'));
echo form_button('btn', '+ 10', array('class' => 'add'));
echo form_button('btn', '+ 1', array('class' => 'add'));
echo form_button('btn', '+ 1', array('class' => 'add'));
echo form_button('btn', '+ 1', array('class' => 'add'));
echo form_button('btn', '+ 10', array('class' => 'add'));
echo form_button('btn', '+ 1', array('class' => 'add'));
echo form_button('btn', '+ 10', array('class' => 'add'));
echo form_button('btn', '+ 10', array('class' => 'add'));
echo form_button('btn', '+ 10', array('class' => 'add'));
echo form_button('btn', '+ 10', array('class' => 'add'));
echo form_button('btn', '+ 10', array('class' => 'add'));
echo form_button('btn', '+ 10', array('class' => 'add'));
echo br();
echo form_input('sz', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('ww', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('us', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('s', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('wt', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('zw', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('ini', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('a', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('zr', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('cp', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('intel', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('op', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('sw', '0', array('class' => 'stats text-center', 'size' => 2));
echo form_input('ogd', '0', array('class' => 'stats text-center', 'size' => 2));
echo br();
echo form_button('btn', '- 1', array('class' => 'def'));
echo form_button('btn', '- 10', array('class' => 'def'));
echo form_button('btn', '- 10', array('class' => 'def'));
echo form_button('btn', '- 1', array('class' => 'def'));
echo form_button('btn', '- 1', array('class' => 'def'));
echo form_button('btn', '- 1', array('class' => 'def'));
echo form_button('btn', '- 10', array('class' => 'def'));
echo form_button('btn', '- 1', array('class' => 'def'));
echo form_button('btn', '- 10', array('class' => 'def'));
echo form_button('btn', '- 10', array('class' => 'def'));
echo form_button('btn', '- 10', array('class' => 'def'));
echo form_button('btn', '- 10', array('class' => 'def'));
echo form_button('btn', '- 10', array('class' => 'def'));
echo form_button('btn', '- 10', array('class' => 'def'));
?>
</div>
<br>
<div class="profession-skills">
<?php
echo "<p class='lead'>Wybór umiejętności:</p>";
foreach ($skills as $key => $value) {
	echo "<span>";
	echo form_checkbox('skill[]', $key, false);
	echo form_label($value, 'skill[]');
	echo "</span>"; 
}
?>
</div>
<br>
<div class="profession-items">
<p class="lead">Ekwipunek:</p>
<?php
echo "<p>Broń jednoręczna:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 1) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo br();
echo "<p>Broń dwuręczna:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 2) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo br();
echo "<p>Broń strzelecka/palna:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 3) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo br();
echo "<p>Przedmioty codziennego użytku:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 4) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo br();
echo "<p>Uzbrojenie:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 5) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo br();
echo "<p>Zwierzęta:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 6) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
?>
</div>
<?php
echo form_submit('btn_submit', 'Dodaj profesję', array('class' => 'btn btn-primary'));
echo form_close();
echo br();
?>
<div class="show-profession">
<?php
echo form_radio('profession', 0, true);
echo form_label('Profesje podstawowe');
echo form_radio('profession', 1, false);
echo form_label('Profesje zaawansowane');

?>
</div>
<div class="result"></div>
<script>
$('document').ready(function() {
	$('span').css({
		'display' : 'inline-block',
		'width' : 305
	});
	$('input:radio:last-of-type').css('margin-left', 15);
	$('.show-profession input:radio').change(function() {
			var prof = $('input:radio:checked').val();
			$.ajax({
				url : 'get_profession',
				data: {profession : prof},
				type : 'post',
				success : function(data) {
					$('.result').html(data);
					$('th:first-child').css('min-width', 200);
					$('th:not(th:first-child)').css('width', 35);
					$('td:not(td:first-child)').addClass('text-center');
					$('td').css('padding', 3);
					$('caption').addClass('text-center').css('font-weight', 'bold');
				}
			});
	}).change();
	var width = $('.stats').css('width');
	$('button').css('width', width);
	var stats = [1, 10, 10, 1, 1, 1, 10, 1, 10, 10, 10, 10, 10, 10];
	var stats_val = [];
	$('.stats').each(function(a) {
		stats_val[a] = $('.stats').val();
	});
	$('.add').click(function() {
		var index = $('.add').index(this);
		stats_val[index] = parseInt(stats_val[index])  + parseInt(stats[index]);
		$('.stats').eq(index).val(stats_val[index]);
	});
	$('.def').click(function() {
		var index = $('.def').index(this);
		if($('.stats').eq(index).val() >= 0) {
			stats_val[index] = parseInt(stats_val[index])  - parseInt(stats[index]);
			$('.stats').eq(index).val(stats_val[index]);
		} else {
			stats_val[index] = 0;
			$('.stats').eq(index).val(stats_val[index]);
		}
	});
	$('select').hide();
	$('.prof_type input:radio').change(function() {
		if ($(this).val() == 1) {
			$('select').show();
		} else {
			$('select').hide();
		}
	});
});
</script>