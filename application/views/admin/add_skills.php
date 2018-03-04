<?php
echo heading($subtitle, 4);
echo "<p>" . $added . "</p>";
echo validation_errors('<p class="alert alert-danger">', '</p>');
echo form_open('admin_panel/add_skill');
echo form_input('skill_name', '', array('id' => 'skill_name', 'placeholder' => 'Nazwa umiejętności...'));
echo br(2);
echo form_textarea('description', '', array('placeholder' => 'Opis umiejętności...'));
echo br();
echo form_submit('', 'Dodaj', array('class' => 'btn btn-primary', 'id' => 'submit'));
echo form_close();
echo br(2);
?>
<p class="show-result" title="Kliknij aby rozwinąć">Pokaż umiejętności</p>
<div class='result'></div>
</div>
<script>
$('document').ready(function() {
	$('.result').hide();
	$('.show-result').click(function() {
		$('.result').slideToggle('slow', function() {
			if ($(this).css('display') == 'none') {
				$('.show-result').text('Pokaż umiejętności');
				$('.show-result').css({'color': 'black', 'text-decoration' : 'underline'});
			} else {
				$('.show-result').text('Ukryj umiejętności');
				$('.show-result').css({'color': '#4169E1', 'text-decoration' : 'none'});
			}
		});
	});
	$.get('get_skills', function(data) {
		$('.result').html(data);
	});
});
</script>