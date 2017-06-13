<?php echo heading($title, 1); ?>
<?php echo heading("Imie postaci: " . $player_name, 3); ?>
<p>Wiek: <?php echo $age; ?></p>
<p>Pozostało umiejętności: <span id="amount"><?php echo $am_skill; ?></span></p>

<?php
echo form_open('player_skills/skill');
echo form_label('Profesje: ', 'prof');
echo form_dropdown('prof', $profession, 1) . "<br>";
echo '<p id="1"></p>';
echo form_label('Umiejętności: ', 'skills') . "<br>";
foreach ($skills as $skill_id => $skill) {
	echo "<span style='display: inline-block; width: 200px; margin-bottom: 5px;'>" . form_checkbox('skills[]', $skill_id, false, ['class' => 'skill']);
	echo form_label($skill, 'skills') . "</span>";
}
echo "<br>";
echo form_submit('btn', 'Wyślij');
echo form_close();
?>

<script>
	$(document).ready(function() {
		$('.skill').click(function() {
			var am = $('#amount').text();
			if ($('.skill:checked:not(:disabled)').length > am) {
				return false;
			}
			
		});

		$('select').change(function() {
			$('.skill').prop('checked', false);
			$('.skill').prop('disabled', false);
			$("input[type='text']").remove();
			var prof_id = $(this).val();
			var skill_name = $('label').text();
			$.ajax({
				url : 'get_prof',
				type : 'post',
				data : {
					prof : prof_id
				},
				dataType : 'json',
				success : function(data) {
					//console.log(data);
					$.each(data, function(key, value) {
						$('.skill[value="' + value + '"]').prop('checked', true);
						$('.skill[value="' + value + '"]').prop('disabled', true);
						$('form').add("<input type='text' value='" + value + "' hidden name='s[]'>").appendTo('form');
					}); 
					//each
				}
			});
			//ajax
		}).change();
		//change
	}); 
	// ready
</script>