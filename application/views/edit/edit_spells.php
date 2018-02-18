<div class="container">
<?php
echo heading($title, 3);
echo "<p class='lead'>" . $subtitle . "</p>";
echo form_input("", $id, array('id' => 'char_id', 'hidden' => 'hidden'));
echo br(2);
echo form_open('edit_panel/edit_spell');
foreach ($spells as $row) {
	echo form_checkbox('spell[]', $row['spell_name_id'], false, array('class' => 'spells'));
	echo form_label($row['cast_name'], 'spell[]');
	echo br();
}
echo br(2);
echo form_submit('btn', 'Zmień', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$(document).ready(function() {
	var p_id = $('#char_id').val();
	$.ajax({
		url : 'get_spell',
		type : 'post',
		dataType : 'json',
		data : {
			id : p_id
		},
		success : function(data) {
			$.each(data, function(key, value) {
				$('.spells[value="' + value + '"]').prop('checked', true);
			});
		}
	});	
});
</script>