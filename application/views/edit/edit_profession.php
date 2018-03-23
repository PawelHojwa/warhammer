<div class="container">
<?php
$stats_name = array('Sz', 'WW', 'US', 'S', 'Wt', 'Żw', 'I', 'A', 'Zr', 'CP', 'Int', 'Op', 'SW', 'Ogd');
$stats_val = array(1, 10, 10, 1, 1, 1, 10, 1, 10, 10, 10, 10, 10, 10);
echo heading($title, 3);
echo anchor('admin_panel/add_profession', '<- Powrót', array('title' => 'Powrót do panelu administracyjnego'));
echo br(2);
echo form_input('', $id, array('hidden' => 'hidden', 'id' => 'p_id'));
echo form_input('', $type, array('hidden' => 'hidden', 'id' => 'type'));
echo form_input('', $class_id, array('hidden' => 'hidden', 'id' => 'class_id'));
echo form_open('edit_panel/edit_profession_info');
echo form_input('profession_name', $profession_name);
echo br(2);
echo "<p class='lead'>Rodzaj profesji</p>";
echo "<div class='type'>";
echo form_radio('type', 0, FALSE);
echo form_label('Profesja podstawowa', 'type');
echo form_radio('type', 1, FALSE);
echo form_label('Profesja zaawansowana', 'type');
echo br();
echo form_dropdown('class_id', $classes, $class_id);
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='lead'>Statystyki</p>";
echo "<div class='stats'>";
foreach ($stats_name as $name) {
	echo form_input('', $name, array('readonly' => 'readonly', 'size' => 3));
}
echo br();
foreach ($stats_val as $val) {
	echo form_button('', '+' . $val, array('class' => 'add'));
}
echo br();
foreach ($stats as $k => $v) {
	echo form_input($k, $v, array('readonly' => 'readonly', 'size' => 3, 'class' => 's_val'));
}
echo br();
foreach($stats_val as $val) {
	echo form_button('', '-' . $val, array('class' => 'diff'));
}
echo br();
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='lead'>Umiejętności</p>";
echo "<div class='skills'>";
foreach ($skills as $k => $v) {
	echo "<span>";
	echo form_checkbox('skills[]',$k, FALSE, array('class' => 'skills'));
	echo form_label($v);
	echo "</span>";
}
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='lead'>Ekwipunek</p>";
echo "<div class='inv'>";
echo "<p class='item-category'>Broń jednoręczna:</p>";
echo "<div class='items'>";
foreach ($inventory as $item) {
	if ($item -> items_group_id == 1) {
		echo "<span>";
		echo form_checkbox('inv[]', $item -> id, FALSE, array('class' => 'inv'));
		echo form_label($item ->  item, 'inv[]');
		echo "</span>";
	}
}
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='item-category'>Broń dwuręczna</p>";
echo "<div class='items'>";
foreach ($inventory as $item) {
	if ($item -> items_group_id == 2) {
		echo "<span>";
		echo form_checkbox('inv[]', $item -> id, FALSE, array('class' => 'inv'));
		echo form_label($item -> item, 'inv[]');
		echo "</span>";
	}
}
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='item-category'>Broń strzelecka</p>";
echo "<div class='items'>";
foreach ($inventory as $item) {
	if ($item -> items_group_id == 3) {
		echo "<span>";
		echo form_checkbox('inv[]', $item -> id, FALSE, array('class' => 'inv'));
		echo form_label($item -> item, 'inv[]');
		echo "</span>";
	}
}
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='item-category'>Przedmioty codziennego użytku</p>";
echo "<div class='items'>";
foreach ($inventory as $item) {
	if ($item -> items_group_id == 4) {
		echo "<span>";
		echo form_checkbox('inv[]', $item -> id, FALSE, array('class' => 'inv'));
		echo form_label($item -> item, 'inv[]');
		echo "</span>";
	}
}
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='item-category'>Pancerz</p>";
echo "<div class='items'>";
foreach ($inventory as $item) {
	if ($item -> items_group_id == 5) {
		echo "<span>";
		echo form_checkbox('inv[]', $item -> id, FALSE, array('class' => 'inv'));
		echo form_label($item -> item, 'inv[]');
		echo "</span>";
	}
}
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='item-category'>Towarzysze</p>";
echo "<div class='items'>";
foreach ($inventory as $item) {
	if ($item -> items_group_id == 6) {
		echo "<span>";
		echo form_checkbox('inv[]', $item -> id, FALSE, array('class' => 'inv'));
		echo form_label($item -> item, 'inv[]');
		echo "</span>";
	}
}
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo br(2);
echo form_submit('sub_btn', "Zamień", array('class' => 'btn btn-primary'));
?>
</div>
<script>
$('document').ready(function() {
	var width = $('.stats input').css('width');
	$('button').css('width', width);
	$('label').css('margin-left', 5);
	$('span').css({
		'display' : 'inline-block',
		'width' : 310
	});
	$('input:radio').eq(1).css('margin-left', 20);
	$('select').hide();
	var type = $('#type').val();
	var c_id = $('#class_id').val();
	if (type == 1) {
		$('input:radio').eq(1).prop('checked', true);
		$('select').hide();
	} else {
		$('input:radio').eq(0).prop('checked', true);
		$('select').show();
	}
	$('input:radio').change(function() {
		if ($('input:radio').eq(0).prop('checked') == true) {
			$('select').show();
			$('select option:selected').val($class_id);
		} else {
			$('select').hide();
		}
	});
	console.log(c_id);
	var stats = [];
	$('.s_val').each(function(i) {
		stats[i] = $(this).val();
	});
	var dev = [];
	$('.add').each(function(i) {
		dev[i] = parseInt($(this).text());
	});
	$('.add').click(function() {
		var i = $('.add').index(this);
		stats[i] = parseInt(stats[i]) + parseInt(dev[i]);
		$('.s_val').eq(i).val(stats[i]);
	});
	$('.diff').click(function() {
		var i = $('.diff').index(this);
		if(stats[i] > 0) {
			stats[i] = stats[i] - dev[i];
		} else {
			stats[i] = 0;
		}
		$('.s_val').eq(i).val(stats[i]);
	});
	var divs = ['type', 'stats', 'skills', 'inv'];
	$('.type, .stats, .inv, .skills')
	.hide();
	$('.lead').css({'text-decoration' : 'underline', 'width' : '150'})
	.hover(function() {
		$(this).css({'cursor' : 'pointer', 'text-decoration' : 'none', 'color' : '#4169E1'});
	}, function() {
		$(this).css({'text-decoration' : 'underline', 'color' : 'black'});
	});
	$('.lead').click(function() {
		var i = $('.lead').index(this);
		if ($('.' + divs[i]).css('display') == 'none') {
			$('.' + divs[i]).fadeIn(500);
		} else {
			$('.' + divs[i]).fadeOut(500);
		}
	});
	$('.items').hide();
	$('.item-category').css('text-decoration' , 'underline');
	$('.item-category').hover(
		function() {
			$(this).css({'text-decoration' : 'none', 'cursor' : 'pointer', 'color' : '#4169E1'});
		},
		function() {
			$(this).css({'text-decoration' : 'underline', 'color' : 'black'});
		}
	);
	$('.item-category').click(function() {
		var i = $('.item-category').index(this);
		if ($('.items').eq(i).css('display') == 'none') {
			$('.items').eq(i).slideDown(1000);
		} else {
			$('.items').eq(i).slideUp(1000);
		}
	});	
	$('.hide-div').css({
		'margin-left' : 10,
		'text-decoration' : 'underline'
	});
	$('.hide-div').hover(
		function() {
			$(this).css({'color' : 'red', 'text-decoratio' : 'none', 'cursor' : 'pointer'});
		},
		function() {
			$(this).css({'color' : 'black', 'text-decoration' : 'underline'})
		}
	);
	$('.hide-div').click(function() {
		$(this).parent().fadeOut(1000);
	});
	var p_id = $('#p_id').val();
	$.ajax({
		url : 'get_profession_skills',
		type : 'post',
		dataType : 'json',
		data : {
			prof_id : p_id
		},
		success : function(data) {
			$.each(data, function(k, v) {
				$('.skills[value="' + v + '"]' ).prop('checked', true);
			});
		}
	});
	$.ajax({
		url : 'get_profession_inventory',
		type : 'post',
		dataType : 'json',
		data : {
			prof_id : p_id
		},
		success : function(data) {
			$.each(data, function(k, v) {
				$('.inv[value="' + v +'"]').prop('checked', true);
			});
		}
	});
});
</script>