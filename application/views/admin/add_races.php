<?php
echo heading($subtitle, 4);
echo "<p>" . $added . "</p>";
echo validation_errors("<p class='alert alert-danger'", "</p>");
echo form_open('admin_panel/add_race');
echo form_input('race_name', '', array('placeholder' => 'Nazwa rasy...'));
echo br(2);
?>
<p class="lead race-stats" title="Kliknij aby rozwinąć">Statysyki</p>
<div class="race-statistics">
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
echo "<p class='hide-items'>Ukryj</p>";
?>
</div>
<p class="lead r-skills" title="Kliknij aby rozwinąć">Umiejętności</p>
<div class="race-skills">
<?php
foreach ($skills as $key => $value) {
	echo "<span>";
	echo form_checkbox('skill[]', $key, false);
	echo form_label($value, 'skill[]');
	echo "</span>"; 
}
echo "<p class='hide-items'>Ukryj</p>";
?>
</div>
<?php
echo br();
echo form_submit('btn', 'Dodaj', array('class' => 'btn btn-primary'));
echo form_close();
echo br(2);
?>
<p class="show-result" title="Kliknij aby rozwinąć">Pokaż rasy</p>
<div class='result'></div>
</div>
<script>
$(document).ready(function() {
	$('span').css({
		'display' : 'inline-block',
		'width' : 305
	});
	$.get('get_race', function(data) {
		$('.result').html(data);
		$('.race_table th:not(th:first-child)').css('width', 30);
		$('.race_table td:not(td:first-child)').addClass('text-center');
		$('.race_table td').css('padding', 5);
	});
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
	$('.result').hide();
	$('.race-statistics').hide();
	$('.race-skills').hide();
	$('.race-stats').click(function() {
		$('.race-statistics').slideToggle('slow');
	});
	$('.r-skills').click(function() {
		$('.race-skills').slideToggle('slow');
	});
	$('.show-result').click(function() {
		$('.result').slideToggle('slow', function() {
			if ($(this).css('display') == 'none') {
				$('.show-result').text('Pokaż rasy');
				$('.show-result').css({'color': 'black', 'text-decoration' : 'underline'});
			} else {
				$('.show-result').text('Ukryj rasy');
				$('.show-result').css({'color': '#4169E1', 'text-decoration' : 'none'});
			}
		});
	});
	$('.hide-items').click(function() {
		$(this).parent().hide();
	});
});
</script>