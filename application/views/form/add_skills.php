<div class="container">
<?php 
echo heading($title, 3);
echo anchor ('add_choose/show_options', 'Powrót');
echo "<p>Profesja:  <span class='lead'>" . $profession_name . "</span></p>";
echo "<p class='moveBar'>Punkty do wydania: <span class='lead'>" . $amount . "</span></p>";
echo "<p id='player_id'>" . $player_id . "</p>";
echo form_open('add_skill/add');
foreach ($skills as $key => $value) {
	echo "<span class='skill_show'>" . form_checkbox('skill[]', $key, FALSE, array('class' => 'skills'));
	echo form_label($value) . "</span>";
}
echo br(2);
echo form_hidden('exp', 0);
echo form_submit('btn', 'Wyślij', array('class' => 'btn btn-primary'));
?>
</div>;
<script>
$('document').ready(function() {
	$('.skill_show').css({'display' : 'inline-block', 'width' : 325});
	$('#player_id').hide();
	var id = $('#player_id').text();
	$.ajax({
		url: 'character_skills',
		type : 'post',
		data: {
			id : id
		},
		dataType: 'json',
		success : function(data) {
			$.each(data, function(key, value) {
				$('.skills[value="' + value + '"]').prop('checked', true);
				$('.skills[value="' + value + '"]').prop('disabled', true);
			});
			//each
		}
	});
	var am = $('.moveBar span').text();
	$('.moveBar span').text(0 + "/" + am);
	$('.skills').click(function() {
		var len = $('.skills:checked:not(:disabled)').length;
		var exp = len * 100;
		if (len > am) {
			alert('Wydałeś już wszystkie punkty!');
			return false;
		} else {
			$('.moveBar span').text(len + "/" + am);
			if (len == am) {
				$('.moveBar').hide();
			} else {
				$('.moveBar').show();
			}
		}
		$('input[name=exp]').val(exp);
	});
});
</script>