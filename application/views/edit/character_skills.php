<div class="container">
<?php
echo heading($title, 3);
echo '<p>Imię:<span class="lead">' . $player_name . '</span></p>';
echo '<p class="moveBar">Pozostało umiejętnośći: <span id="amount" class="lead">' . $amount .  '</span></p>';
echo br(2);
echo validation_errors("<p class='alert alert-danger'", '</p>');
echo form_open('edit_panel/edit_skills');
echo form_input('', $id, array('hidden' => 'hidden', 'id' => 'char_id'));
echo "<span class='lead'>Profesja: </span>";
echo form_dropdown('profession', $profession, '', array('id' => 'professions'));
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
	$('#professions').change(function() {
		$('.skills').prop('checked', false);
		$('.skills').prop('disabled', false);
			var prof_id = $(this).val();
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
						$('.skills[value="' + value + '"]').prop('disabled', true);
					});
				}
			});
	}).change();
	var am = $('#amount').text();
	$('#amount').text('0/' + am);
	$('.skills').click(function() {
		var len = $('.skills:checked:not(:disabled)').length;
		if (len > am) {
			alert("Wybrałeś wszystkie umiejętności");
			return false;
		}
		$('#amount').text(len + '/' + am);
		if(len == am) {
			$('.moveBar').hide();
		} else {
			$('.moveBar').show();
		}
	});
	$('form').submit(function() {
		var len = $('.skills:checked:not(:disabled)').length;
		var deff = am - len;
		if (len == am)
			return true;
		else {
			alert("Pozostało do wybrania: " + deff + (deff === 1? " umiejętność": " umiejętności"));
			return false;
		}
	});
});
</script>