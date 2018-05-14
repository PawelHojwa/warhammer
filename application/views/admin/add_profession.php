<?php
echo heading($subtitle, 4);
echo "<p>" . $added . "</p>";
echo validation_errors('<p class="alert alert-danger">', '</p>');
echo form_open('admin_panel/add_profession');
echo form_input('profession_name', '', array('placeholder' => 'Nazwa profesji...'));
echo br(2);
?>
<p class="lead prof-type" title="Kliknij aby rozwinąć">Rodzaj profesji:</p>
<div class="profession-type">
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
<p class="lead prof-stats" title="Kliknij aby rozwinąć">Statysyki</p>
<div class="profession-statistics">
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
<p class='lead prof-skills' title="Kliknij aby rozwinąć">Umiejętności:</p>
<div class="profession-skills">
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
<p class="lead prof-items" title='Kliknij aby rozwinąć'>Ekwipunek:</p>
<div class="profession-items">
<?php
echo "<p id='one-hand' title='Kliknij aby rozwinąć'>Broń jednoręczna:</p>";
echo "<div class='one-hand'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 1) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo br();
echo "<p id='two-hand' title='Kliknij aby rozwinąć'>Broń dwuręczna:</p>";
echo "<div class='two-hand'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 2) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo br();
echo "<p id='ranged' title='Kliknij aby rozwinąć'>Broń strzelecka/palna:</p>";
echo "<div class='ranged'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 3) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo br();
echo "<p id='daily' title='Kliknij aby rozwinąć'>Przedmioty codziennego użytku:</p>";
echo "<div class='daily'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 4) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo br();
echo "<p id='prof-armour' title='Kliknij aby rozwinąć'>Uzbrojenie:</p>";
echo "<div class='prof-armour'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 5) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo br();
echo "<p id='pets'>Zwierzęta:</p>";
echo "<div class='pets'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 6) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo "<p class='hide-items'>Ukryj</p>";
?>
</div>
<?php
echo form_submit('btn_submit', 'Dodaj profesję', array('class' => 'btn btn-primary'));
echo form_close();
echo br();
?>
<p class="show-result" title="Kliknij aby rozwinąć">Pokaż profesje</p>
<div class="professions">
	<div class="show-profession">
	<?php
	echo form_radio('profession', 0, true);
	echo form_label('Profesje podstawowe');
	echo form_radio('profession', 1, false);
	echo form_label('Profesje zaawansowane');
	?>
	</div>
	<div class="show-skills"></div>
	<div class="result"></div>
	
</div>
<script>
$('document').ready(function() {
	$('span').css({
		'display' : 'inline-block',
		'width' : 305
	});
	var width = $('.stats').css('width');
	$('button').css('width', width);
	$('.hide-items').click(function() {
		$(this).parent().hide();
	});
	$('.professions').hide();
	$('.profession-type').hide();
	$('.profession-skills').hide();
	$('.profession-statistics').hide();
	$('.profession-items').hide();
	$('.one-hand, .two-hand, .ranged, .prof-armour, .daily, .pets').hide();
	$('.show-result').click(function() {
		$('.professions').slideToggle('slow', function() {
			if ($(this).css('display') == 'none') {
				$('.show-result').text('Pokaż profesje');
				$('.show-result').css({'color' : 'black', 'text-decoration' : 'underline'});
			} else {
				$('.show-result').text('Ukryj profesje');
				$('.show-result').css({'color': '#4169E1', 'text-decoration' : 'none'});
				
			}
		});
	});
	$('.prof-type').click(function() {
		$('.profession-type').slideToggle('slow');
	});
	$('.prof-stats').click(function() {
		$('.profession-statistics').slideToggle('slow');
	});
	$('.prof-skills').click(function() {
		$('.profession-skills').slideToggle('slow');
	});
	$('.prof-items').click(function() {
		$('.profession-items').slideToggle('slow');
	});
	$('#one-hand').click(function() {
		$('.one-hand').slideToggle('slow');
	});
	$('#two-hand').click(function() {
		$('.two-hand').slideToggle('slow');
	});
	$('#ranged').click(function() {
		$('.ranged').slideToggle('slow');
	});
	$('#daily').click(function() {
		$('.daily').slideToggle('slow');
	});
	$('#prof-armour').click(function() {
		$('.prof-armour').slideToggle('slow');
	});
	$('#pets').click(function() {
		$('.pets').slideToggle('slow');
	});
	$('input:radio:last-of-type').css('margin-left', 15);
	var iWidth = window.innerWidth;
	var iHeight = window.innerHeight;
	function calculate(x, y) {
		return (x / 2) - (y / 2);  
	}
	$('.show-skills').hide();
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
				$('.skill-list').css('position', 'relative');
				$('.skill-list').click(function() {
					var i = $('.skill-list').index(this);
					var profId = $('.hide').eq(i).text();
					$('.show-skills').show();
					var divHeight = $('.show-skills').css('height');
					$('.show-skills').css({
						'padding' : 10,
						'box-shadow' : '0 0 5px 2px black',
						'width' : 300,
						'position' : 'fixed',
						'top' : calculate(iHeight, iHeight / 2),
						'left' : calculate(iWidth, 300),
						'z-index' : 1000,
						'background-color' : 'white'
					});
					$('.show-skills').load('/warhammer/index.php/show/prof_skills?id=' + profId);
					$('body').click(function() {
						$('.show-skills').hide();
					});
					return false;
				});
				$('.delete').click(function(event) {
					var x = confirm('Chcesz usunąć profesję?');
					if (x == false) {
						event.preventDefault();
					}
	});
			}
		});
	}).change();
	
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
	$('.profession-type input:radio').change(function() {
		var prof_type = $('.profession-type input:radio:checked').val();
		if (prof_type == 1) {
			$('select').show();
		} else {
			$('select').hide();
		}
	});
	
});
</script>