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
<p class="lead r-age" title="Kliknij aby rozwinąć">Wiek</p>
<div class="race-age">
<?php
echo form_input('min_age', '', array('size' => 2, 'placeholder' => 'Min...'));
echo br();
echo form_input('max_age', '', array('size' => 2, 'placeholder' => 'Maks...'));
echo "<p class='hide-items'>Ukryj</p>";
?>
</div>
<p class="lead a-skill" title="Kliknij aby rozwinąć">Dodatkowe umiejętności</p>
<div class="add-skill">
<div class="skills">
<?php
echo form_input('min[]', '', array('size' => 3, 'placeholder' => 'Min...'));
echo br();
echo form_input('max[]', '', array('size' => 3, 'placeholder' => 'Max...'));
echo br();
echo form_label('Dodatkowa ilść:');
echo br();
echo form_input('add_skill[]', '', array('size' => 3));
echo br();
echo form_radio('action[0]', 1, false);
echo form_label('Dodane');
echo form_radio('action[0]', 2, false);
echo form_label('Odjęte');
echo br();
?>
</div>
<div class="skills">
<?php
echo form_input('min[]', '', array('size' => 3, 'placeholder' => 'Min...'));
echo br();
echo form_input('max[]', '', array('size' => 3, 'placeholder' => 'Max...'));
echo br();
echo form_label('Dodatkowa ilść:');
echo br();
echo form_input('add_skill[]', '', array('size' => 3));
echo br();
echo form_radio('aaction[1]', 1, false);
echo form_label('Dodane');
echo form_radio('aaction[1]', 2, false);
echo form_label('Odjęte');
echo br();
?>
</div>
<div class="skills">
<?php
echo form_input('min[]', '', array('size' => 3, 'placeholder' => 'Min...'));
echo br();
echo form_input('max[]', '', array('size' => 3, 'placeholder' => 'Max...'));
echo br();
echo form_label('Dodatkowa ilść:');
echo br();
echo form_input('add_skill[]', '', array('size' => 3));
echo br();
echo form_radio('aaction[2]', 1, false);
echo form_label('Dodane');
echo form_radio('aaction[2]', 2, false);
echo form_label('Odjęte');
echo br();
?>
</div>
<div class="skills">
<?php
echo form_input('min[]', '', array('size' => 3, 'placeholder' => 'Min...'));
echo br();
echo form_input('max[]', '', array('size' => 3, 'placeholder' => 'Max...'));
echo br();
echo form_label('Dodatkowa ilść:');
echo br();
echo form_input('add_skill[]', '', array('size' => 3));
echo br();
echo form_radio('action[3]', 1, false);
echo form_label('Dodane');
echo form_radio('action[3]', 2, false);
echo form_label('Odjęte');
echo br();
?>
</div>
<div class="skills">
<?php
echo form_input('min[]', '', array('size' => 3, 'placeholder' => 'Min...'));
echo br();
echo form_input('max[]', '', array('size' => 3, 'placeholder' => 'Max...'));
echo br();
echo form_label('Dodatkowa ilść:');
echo br();
echo form_input('add_skill[]', '', array('size' => 3));
echo br();
echo form_radio('action[4]', 1, false);
echo form_label('Dodane');
echo form_radio('action[4]', 2, false);
echo form_label('Odjęte');
echo br();
?>
</div>
<?php
echo form_button('btn','Więcej', array('id' => 'dodaj', 'class' => 'btn'));
?>
<p class="hide-items">Ukryj</p>
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
	$('label').css('margin-right', 15);
	$.get('get_race', function(data) {
		$('.result').html(data);
		$('.race_table th:not(th:first-child)').css('width', 30);
		$('.race_table td:not(td:first-child)').addClass('text-center');
		$('.race_table td').css('padding', 5);
		$('.delete').click(function(event) {
			var x = confirm('Chcesz usunąć rase?');
			if (x == false) {
				event.preventDefault();
			}
		});
	});
	var width = $('.stats').css('width');
	$('button').not('#dodaj').css('width', width);
	
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
	$('.result, .race-statistics, .race-skills, .race-age, .add-skill').hide();
	$('.r-skills, .race-stats, .r-age').css('text-decoration', 'underline');
	$('.r-skills').hover(
		function() {
			$(this).css({'text-decoration': 'none', 'cursor' : 'pointer'});
		}, function() {
			$(this).css('text-decoration', 'underline');
		}
	);
	$('.r-age').hover(
		function() {
			$(this).css({'text-decoration': 'none', 'cursor' : 'pointer'});
		}, function() {
			$(this).css('text-decoration', 'underline');
		}
	);
	$('.race-stats').hover(
		function() {
			$(this).css({'text-decoration': 'none', 'cursor' : 'pointer'});
		}, function() {
			$(this).css('text-decoration', 'underline');
		}
	);
	$('.a-skill').hover(
		function() {
			$(this).css({'text-decoration': 'none', 'cursor' : 'pointer'});
		}, function() {
			$(this).css('text-decoration', 'underline');
		}
	);
	$('.r-age').click(function() {
		$('.race-age').slideToggle('slow');
	});
	$('.a-skill').click(function() {
		$('.add-skill').slideToggle('slow');
	});
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
	$('.hide-items').css('width', 80);
	$('.hide-items').click(function() {
		$(this).parent().hide();
	});
	
	var i = 0;
	$('.skills').hide();
	$('.skills').eq(0).show();
	$('#dodaj').click(function() {
		i++;
		$('.skills').eq(i).show();
	});
	
})
</script>