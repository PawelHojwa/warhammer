<div class="container">
<?php
echo heading($title, 3);
echo validation_errors("<p class='alert alert-danger'>", "</p>");
echo form_input('class_id', $class_id, array('hidden' => 'hidden', 'id' => 'class_id'));
echo form_open('edit_panel/edit_class');
echo form_input('class_name', $class_name, array('placeholder' => 'Nazwa klasy...'));
echo br(2);
echo "<p class='lead'>Broń ręczna</p>";
foreach ($inventory as $row) {
	if ($row -> items_group_id == 1 || $row -> items_group_id == 2) {
		echo "<span>";
		echo form_checkbox('inv[]', $row -> id, false, array('class' => 'inv'));
		echo form_label($row -> item);
		echo "</span>";
	}
}
echo br(2);
echo "<p class='lead'>Broń strzelecka/palna</p>";
foreach ($inventory as $row) {
	if ($row -> items_group_id == 3) {
		echo "<span>";
		echo form_checkbox('inv[]', $row -> id, false, array('class' => 'inv'));
		echo form_label($row -> item);
		echo "</span>";
	}
}
echo br(2);
echo "<p class='lead'>Przedmioty codziennego użytku</p>";
foreach ($inventory as $row) {
	if ($row -> items_group_id == 4) {
		echo "<span>";
		echo form_checkbox('inv[]', $row -> id, false, array('class' => 'inv'));
		echo form_label($row -> item);
		echo "</span>";
	}
}
echo br(2);
echo "<p class='lead'>Pancerz</p>";
foreach ($inventory as $row) {
	if ($row -> items_group_id == 5) {
		echo "<span>";
		echo form_checkbox('inv[]', $row -> id, false, array('class' => 'inv'));
		echo form_label($row -> item);
		echo "</span>";
	}
}
echo br(2);
echo "<p class='lead'>Towarzysze</p>";
foreach ($inventory as $row) {
	if ($row -> items_group_id == 6) {
		echo "<span>";
		echo form_checkbox('inv[]', $row -> id, false, array('class' => 'inv'));
		echo form_label($row -> item);
		echo "</span>";
	}
}
echo br(2);
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
	/*$('form').submit(function() {
		if ($('checkbox').length == 0) {
			alert('Musisz zaznaczyć co najmniej jeden przedmiot!!');
			return false;
		}
	});*/
});
</script>