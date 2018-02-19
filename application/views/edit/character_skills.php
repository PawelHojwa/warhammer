<div class="container">
<?php
echo heading($title, 3);
echo anchor('edit_panel/edit', '<- Powrót do panelu edycji', array('title' => 'Powrót do panelu edycji'));
echo '<p>Imię:<span class="lead">' . $player_name . '</span></p>';
echo "<p id='skill_amount'></p>";
echo br(2);
echo validation_errors("<p class='alert alert-danger'>", '</p>');
echo form_open('edit_panel/edit_skills');
echo form_input('', $id, array('hidden' => 'hidden', 'id' => 'char_id'));
echo form_input('', $prof_id, array('hidden' => 'hidden', 'id' => 'profession'));
echo "<span class='lead'>Profesja: " . $profession_name . "</span>";
echo br(2);
foreach ($skills as $key => $value) {
	echo "<span>";
	echo form_checkbox('skills[]', $key, false, array('class' => 'skills'));
	echo form_label($value, 'skills[]');
	echo "</span>";
}
echo br();
echo form_submit('btn', 'Zmień', array('class' => 'btn btn-primary'));
?>
</div>
<script>
$('document').ready(function() {
	$('span:not(span:first-of-type)').css({
		'display' : 'inline-block',
		'width' : 305,
		'margin-left' : 15
	});
	var prof_id = $('#profession').val();
	var char_id = $('#char_id').val();
	$.ajax({
		url : 'get_prof',
		type : 'post',
		data : {
			prof : prof_id,
			id : char_id
		},
		dataType: 'json',
		success : function(data) {
			$.each(data, function(key, value) {
				$('.skills[value="' + value + '"]').prop('checked', true);
			});
		}
	});
	$('.skills').click(function() {
		var len = $('.skills:checked:not(:disabled)').length;
		var text = len + ' umiejętności';
		$('#skill_amount').text(text);
	});
});
</script>