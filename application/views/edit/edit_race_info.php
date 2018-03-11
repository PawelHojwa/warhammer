<div class="container">
<?php
	$stats_name = array('Sz', 'WW', 'US', 'S', 'Wt', 'Żw', 'I', 'A', 'Zr', 'CP', 'Int', 'Op', 'SW', 'Ogd');
	$stats_val = array('sz' => $sz, 'ww' => $ww, 'us' => $us, 's' => $s, 'wt' => $wt, 'zw' => $zw, 'i' => $i, 'a' => $a, 'zr' => $zr, 'cp' => $cp, 'intel' => $intel, 'op' => $op, 'sw' => $sw, 'ogd' => $ogd);
	$add_val = array('+1', '+10', '+10', '+1', '+1', '+1', '+10', '+1', '+10', '+10', '+10', '+10', '+10', '+10');
	$diff_val = array('-1', '-10', '-10', '-1', '-1', '-1', '-10', '-1', '-10', '-10', '-10', '-10', '-10', '-10');
	$x = 0;
	echo heading($title, 3);
	echo anchor('admin_panel/add_race', '<- Powrót', array('title' => 'Powrót do panelu edycji', 'class' => 'anchor'));
	echo br(2);
	echo form_open('edit_panel/edit_race_info');
	echo form_input('', $raceID, array('id' => 'race-id', 'hidden' => 'hidden'));
	echo form_input('race_name', $raceName, array('placeholder' => 'Nazwa rasy...'));
	echo br(2);
	echo "<p class='lead'>Statystyki</p>";
	echo "<div class='stats'>";
	foreach ($stats_name as $row) {
		echo form_input('', $row, array('readonly' => 'readonly', 'size' => 3, 'class' => 's_name text-center'));
	}
	echo br();
	foreach ($add_val as $row) {
		echo form_button('', $row, array('class' => 'add'));
	}
	echo br();
	foreach ($stats_val as $k => $v) {
		echo form_input($k, $v, array('readonly' => 'readonly', 'size' => 3, 'class' => 'text-center statistics'));
	}
	echo br();
	foreach ($diff_val as $row) {
		echo form_button('', $row, array('class' => 'diff'));
	}
	echo br(2);
	echo "<p class='hide-div'>Ukryj</p>";
	echo "</div>";
	echo "<p class='lead'>Wiek</p>";
	echo "<div class='age'>";
	echo form_input('min_age', $r_min_age, array('size' => 3, 'placeholder' => 'Min...'));
	echo br();
	echo form_input('max_age', $r_max_age, array('size' => 3, 'placeholder' => 'Max...'));
	echo br(2);
	echo "<p class='hide-div'>Ukryj</p>"; 
	echo "</div>";
	echo "<p class='lead'>Dodatkowe umiejętności</p>";
	echo "<div class='add-skill'>";
	foreach ($add_skills as $row) {
		echo "<div class='add_skills'>";
		echo form_input('min[]', $row['min_age'], array('size' => 3, 'placeholder' => 'Min...'));
		echo br();
		echo form_input('max[]', $row['max_age'], array('size' => 3, 'placeholder' => 'Max...'));
		echo br(2);
		echo form_input('amount[]', $row['add_skill'], array('size' => 3, 'placeholder' => 'Ilość...'));
		echo br();
		if ($row['action'] == 1) {
			echo form_label('Dodaj', 1);
			echo form_radio('type[' . $x . ']', 1, TRUE);
			echo form_label('Odejmij', 2);
			echo form_radio('type[' . $x . ']', 2, FALSE);
		} else if ($row['action'] == 2) {
			echo form_label('Dodaj', 1);
			echo form_radio('type[' . $x . ']', 1, FALSE);
			echo form_label('Odejmij', 2);
			echo form_radio('type[' . $x . ']', 2, TRUE);
		} else {
			echo form_label('Dodaj', 1);
			echo form_radio('type[' . $x . ']', 1, FALSE);
			echo form_label('Odejmij', 2);
			echo form_radio('type[' . $x . ']', 2, FALSE);
		}
		echo br(2);
		echo form_button('', 'Więcej', array('class' => 'btn'));
		echo br(2);
		echo "</div>";
		$x++;
	}
	echo br(2); 
	echo "<p class='hide-div'>Ukryj</p>";
	echo "</div>";
	echo "<p class='lead'>Umiejętności</p>";
	echo "<div class='race-skill'>";
	foreach ($skills as $k => $v) {
		echo "<span class='skill_name'>" . form_checkbox('skills[]', $k, false, array('class' => 'skill'));
		echo form_label($v, 'skills[]') . "</span>";
	}
	echo br(2);
	echo "<p class='hide-div'>Ukryj</p>";
	echo "</div>";
	echo form_submit('sub_btn', 'Zamień', array('class' => 'btn btn-primary'));
	echo form_close();
?>
</div>
<script>
	$('document').ready(function() {
		var f_width = $('.s_name').css('width');
		$('button').not('.btn').css('width', f_width);
		$('label').css('margin-right', 5);
		$('.skill_name').css({'display' : 'inline-block', 'width': 305, 'margin-right' : 15});
		
		$('p.lead').css({'text-decoration': 'underline', 'width' : 250}).hover(
			function() {
				$(this).css({'text-decoration' : 'none', 'cursor' : 'pointer'});
			},
			function() {
				$(this).css('text-decoration','underline');
		});
		$('.stats, .age, .add-skill, .race-skill').hide();
		var class_names = ['stats', 'age', 'add-skill', 'race-skill'];
		$('p.lead').click(function() {
			var i = $('p.lead').index(this);
			if ($('div.' + class_names[i]).css('display') == 'none') {
				$('div.' + class_names[i] ).slideDown();
			} else {
				$('div.' + class_names[i] ).slideUp();
			}
		});
		$('.hide-div').css({'text-decoration' : 'underline', 'margin-left' : 10}).hover(
			function() {
				$(this).css({'color' : 'red', 'text-decoration' : 'none', 'cursor' : 'pointer'});
			},
			function() {
				$(this).css({'color' : 'black', 'text-decoration' : 'underline'})
			}
		);
		$('.hide-div').click(function() {
			$(this).parent().fadeOut(500);
		});
		var race = $('#race-id').val();
		$.ajax({
			url : 'get-race-skill',
			type : 'post',
			data : {
				race_id : race
			},
			dataType : 'json',
			success : function(data) {
				$.each(data, function(key, value) {
					$('.skill[value="' + value + '"]').prop('checked', true);
				});
			}
		});
		var stats = [];
		$('.statistics').each(function(i) {
			stats[i] = $(this).val();
		});
		var add = [];
		$('.add').each(function(i) {
			add[i] = $(this).text();
		});
		var diff = [];
		$('.diff').each(function(i) {
			diff[i] = $(this).text();
		});
		$('.add').click(function() {
			var i = $('.add').index(this);
			stats[i] = parseInt(stats[i]) + parseInt(add[i]);
			$('.statistics').eq(i).val(stats[i]);
			console.log(stats);
		});
		$('.diff').click(function() {
			var i = $('.diff').index(this);
			if (stats[i] > 0) {
				stats[i] = parseInt(stats[i]) + parseInt(diff[i]);
			} else {
				stats[i] = 0;
			}
			console.log(parseInt(diff[i]));
			
			$('.statistics').eq(i).val(stats[i]);
			console.log(stats);
		});
	});
</script>