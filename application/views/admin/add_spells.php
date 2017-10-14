<?php
echo heading($subtitle, 4);
echo "<p>" . $added . "</p>";
echo validation_errors('<p class="alert alert-danger"', '</p>');
echo form_open('admin_panel/add_spell');
echo form_input('spell_name', '', array('placeholder' => 'Nazwa czaru...'));
echo br();
echo form_label('Typ czaru: ', 'spell_type') ." ";
echo form_dropdown('spell_type', $spell_type, 0, '');
echo br();
echo form_label('Poziom czaru: ', 'spell_lvl') . " ";
echo form_dropdown('spell_lvl', $spell_lvl, 0, '');
echo br();
echo form_input('spell_cost', '', array('placeholder' => 'Koszt czaru...'));
echo br();
echo form_input('spell_duration', '', array('placeholder' => 'Czas trwania...'));
echo br();
echo form_input('spell_range', '', array('placeholder' => 'Zasięg...'));
echo br();
echo form_input('spell_components', '', array('placeholder' => 'Składniki...'));
echo br();
echo form_input('spell_effect', '', array('placeholder' => 'Efekt...'));
echo br(2);
echo form_submit('submit_btn', 'Dodaj', array('class' => 'btn btn-primary'));
echo form_close();

echo br(2);
?>
<p class="show-result" title="Kliknij aby rozwinąć">Pokaż czary</p>
<div class='result'></div>
</div>
<script>
$('document').ready(function() {
	$('.result').hide();
	$('.show-result').click(function() {
		$('.result').slideToggle('slow', function() {
			if ($(this).css('display') == 'none') {
				$('.show-result').text("Pokaż czary");
				$('.show-result').css({'color': 'black', 'text-decoration' : 'underline'});
			} else {
				$('.show-result').text("Ukryj czary");
				$('.show-result').css({'color': '#4169E1', 'text-decoration' : 'none'});
			}
		});
	});
	$.get('get_spells', function(data) {
		$('.result').html(data);
	});
});
</script>
