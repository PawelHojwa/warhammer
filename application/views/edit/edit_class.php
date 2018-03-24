<div class="container">
<?php
echo heading($title, 3);
echo anchor('admin_panel/add_class', '<- Powrót', array('title' => 'Powrót panelu administracyjnego'));
echo br(2);
echo validation_errors("<p class='alert alert-danger'>", "</p>");
echo form_input('class_id', $class_id, array('hidden' => 'hidden', 'id' => 'class_id'));
echo form_open('edit_panel/edit_class');
echo form_input('class_name', $class_name, array('placeholder' => 'Nazwa klasy...'));
echo br(2);
echo "<p class='lead'>Broń ręczna</p>";
echo "<div class='items'>";
foreach ($inventory as $row) {
	if ($row -> items_group_id == 1 || $row -> items_group_id == 2) {
		echo "<span>";
		echo form_checkbox('inv[]', $row -> id, false, array('class' => 'inv'));
		echo form_label($row -> item);
		echo "</span>";
	}
}
echo br();
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='lead'>Broń strzelecka/palna</p>";
echo "<div class='items'>";
foreach ($inventory as $row) {
	if ($row -> items_group_id == 3) {
		echo "<span>";
		echo form_checkbox('inv[]', $row -> id, false, array('class' => 'inv'));
		echo form_label($row -> item);
		echo "</span>";
	}
}
echo br();
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='lead'>Przedmioty codziennego użytku</p>";
echo "<div class='items'>";
foreach ($inventory as $row) {
	if ($row -> items_group_id == 4) {
		echo "<span>";
		echo form_checkbox('inv[]', $row -> id, false, array('class' => 'inv'));
		echo form_label($row -> item);
		echo "</span>";
	}
}
echo br();
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='lead'>Pancerz</p>";
echo "<div class='items'>";
foreach ($inventory as $row) {
	if ($row -> items_group_id == 5) {
		echo "<span>";
		echo form_checkbox('inv[]', $row -> id, false, array('class' => 'inv'));
		echo form_label($row -> item);
		echo "</span>";
	}
}
echo br();
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo "<p class='lead'>Towarzysze</p>";
echo "<div class='items'>";
foreach ($inventory as $row) {
	if ($row -> items_group_id == 6) {
		echo "<span>";
		echo form_checkbox('inv[]', $row -> id, false, array('class' => 'inv'));
		echo form_label($row -> item);
		echo "</span>";
	}
}
echo br();
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo form_submit('btn', 'Edytuj', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$(document).ready(function() {
	$('span').css({'display' : 'inline-block', 'width' : 320});
	var class_id = $('#class_id').val();
	$.ajax({
		url : 'get_inventory_class',
		type : 'post',
		data : {
		class_id : class_id
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(key, value) {
				$('.inv[value="' + value + '"]').prop('checked', true);
			});
		}
	});
	$('.items').hide();
	$('.lead').css({'text-decoration' : 'underline'});
	$('.lead').hover(
		function() {
			$(this).css({'text-decoration' : 'none', 'cursor' : 'pointer', 'color': '#4169E1'});
		},
		function() {
			$(this).css({'text-decoration' : 'underline', 'color' : 'black'});
		}
	);
	$('.lead').click(function() {
		var i = $('.lead').index(this);
		if ($('.items').eq(i).css('display') == 'none') {
			$('.items').eq(i).slideDown();
		} else {
			$('.items').eq(i).slideUp();
		}
	});
	$('.hide-div').css({'text-decoration' : 'underline', 'margin-left' : 10});
	$('.hide-div').hover(
		function() {
			$(this).css({'color' : 'red', 'text-decoration' : 'none', 'cursor' : 'pointer'});
		}, 
		function() {
			$(this).css({'color' : 'black', 'text-decoration' : 'underline'});
		}
	);
	$('.hide-div').click(function() {
		$(this).parent().fadeOut(1000);
	});
});
</script>