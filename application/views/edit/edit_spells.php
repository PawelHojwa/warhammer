<div class="container">
<?php
echo heading($title, 3);
echo "<p class='lead'>" . $subtitle . "</p>";
echo "<p>Czarów do wyboru: <span id='amount'></span></p>";
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
	var am = 2;
	$('#amount').text('0/' + am);
	$('.spells').click(function() {
		var len = $('.spells:checked').length;
		if (len > am) {
			$('#amount').hide();
			alert('Wybrano już wszystkie czary');
			return false;
			//am--;
		} else {
			$('#amount').show();
			$('#amount').text(len + "/" + am);
		}
	});
});
</script>