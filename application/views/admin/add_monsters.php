<?php
echo heading($subtitle, 4);
echo "<p>" . $added . "</p>";
echo validation_errors("<p class='alert alert-danger'>", "</p>");
echo form_open('admin_panel/add_monster');
echo form_input('monster_name', '', array('placeholder' => 'Nazwa potwora...'));
echo br();
echo form_label('Kategoria potwora', 'category');
echo form_dropdown('category', $category, 1);
echo br();
?>
<p class="lead prof-stats" title="Kliknij aby rozwinąć">Statysyki</p>
<div class="profession-statistics">
<?php
echo form_radio('change_amount', 1, true);
echo form_label('Zmień o 1');
echo form_radio('change_amount', 2, false);
echo form_label('Zmień o 10');
echo br(2);
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
echo form_input('i', '0', array('class' => 'stats text-center', 'size' => 2));
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
<?php
echo form_submit('submit_btn', 'Dodaj', array('class' => 'btn btn-primary'));
echo form_close();
echo br();
?>
<p class='show-result' title="Kliknij aby rozwinąć">Pokaż potwory</p>
<div class="monsters">
	<div class="monster-category">
		<?php
			foreach ($category as $key => $value) {
				echo form_radio('monster_category', $key, false);
				echo form_label($value);
			}
		?>
	</div>
	<div class="result"></div>
</div>
<script>
$('document').ready(function() {
	var width = $('.stats').css('width');
	$('button').css('width', width);
	$('.monster-category input:radio').change(function() {
		var category = $('.monster-category input:radio:checked').val();
		$.ajax({
			url : 'get_monsters',
			type : 'post',
			data : {
				monster : category
			},
			success : function(data) {
				$('.result').html(data);
				$('th:first-child').css('min-width', 200);
				$('th:not(th:first-child)').css('width', 35);
				$('td:not(td:first-child)').addClass('text-center');
				$('td').css('padding', 3);
				$('.delete').click(function(event) {
					var x = confirm('Chcesz usunąć potwora?');
					if (x == false) {
						event.preventDefault();
					}
				});
			}
		});
	});
	
		
	var dev = [1, 10, 10, 1, 1, 1, 10, 1, 10, 10, 10, 10, 10, 10];
	var dev_one = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1];	
	$('.profession-statistics input:radio').change(function() {
		var value = $('.profession-statistics input:radio:checked').val();
		var stats = [];
		var def = [];
		if (value == 1) {
		$('.stats').each(function(a) {
			stats[a] = $('.stats').eq(a).val();
		});
			var x = 1;
			$('.add').each(function(a) {
				$(this).text('+ ' + dev_one[a]);
			});
			$('.def').each(function(a) {
				$(this).text('- ' + dev_one[a]);
			});
			
			$('.add').click(function() {
				var i = $('.add').index(this);
				stats[i] = parseInt(stats[i]) + parseInt(dev_one[i]);
				$('.stats').eq(i).val(stats[i]);
			});
			$('.def').click(function() {
				var i = $('.def').index(this);
				if ($('.stats').eq(i).val() > 0) {
					stats[i] = parseInt(stats[i]) - parseInt(dev_one[i]);
					$('.stats').eq(i).val(stats[i]);
				} else {
					stats[i] = 0;
					$('stats').eq(i).val(stats[i]);
				}
			});
		} else {
			$('.stats').each(function(a) {
				def[a] = $(this).val();
			});
			$('.add').each(function(index) {
				$(this).text('+' + dev[index]);
			});
			$('.add').click(function() {
				var i = $('.add').index(this);
				def[i] = parseInt(def[i]) + parseInt(dev[i]);
				$('.stats').eq(i).val(def[i]);
			});
			$('.def').each(function(index) {
				$(this).text('-' + dev[index]);
			});
			$('.def').click(function() {
				var i = $('.def').index(this);
				if ($('.stats').eq(i).val() > 0) {
					def[i] = def[i] - dev[i];
					$('.stats').eq(i).val(def[i]);
				} else {
					def[i] = 0;
					$('.stats').eq(i).val(def[i]);
				}
			});
		}
		console.log('tablica def: ' + def);
		console.log('tablica stats: ' + stats);
	}).change();
	$('.monsters').hide();
	$('.show-result').click(function() {
		$('.monsters').slideToggle('slow', function() {
			if ($(this).css('display') == 'none') {
				$('.show-result').text('Pokaż potwory');
				$('.show-result').css({'color' : 'black', 'text-decoration' : 'underline'});
			} else {
				$('.show-result').text('Ukryj potwory');
				$('.show-result').css({'color': '#4169E1', 'text-decoration' : 'none'});
			}
		});
	});
	$('.hide-items').click(function() {
		$(this).parent().hide();
	});
	$('.profession-statistics').hide();
	$('.prof-stats').click(function() {
		$('.profession-statistics').slideToggle('slow');
	});
	$('label').css('margin-right', 15);
});
</script>