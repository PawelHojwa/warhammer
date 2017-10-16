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
<div class="spell-result">
	<div class="spell-type">
		<?php
			foreach ($spell_type as $key => $value) {
				echo form_radio('s_type', $key, false);
				echo form_label($value);
			}
			echo br();
		?>
		
	</div>
	<div class="spell-lvl">
		<?php
			foreach ($spell_lvl as $key => $value) {
				echo form_radio('s_lvl', $key, false);
				echo form_label($value);
			}
		?>
		</div>
	<div class='result'></div>
</div>
</div>
<script>
$('document').ready(function() {
	$('.spell-result, .spell-lvl').hide();
	$('.show-result').click(function() {
		$('.spell-result').slideToggle('slow', function() {
			if ($(this).css('display') == 'none') {
				$('.show-result').text("Pokaż czary");
				$('.show-result').css({'color': 'black', 'text-decoration' : 'underline'});
			} else {
				$('.show-result').text("Ukryj czary");
				$('.show-result').css({'color': '#4169E1', 'text-decoration' : 'none'});
			}
		});
	});
	$('label').css('margin-right', 15);
	$('.spell-type input:radio, .spell-lvl input:radio').change(function() {
		var spell_id = $('.spell-type input:radio:checked').val();
		var spell_lvl = $('.spell-lvl input:radio:checked').val();
		if (spell_id == 1) {
			spell_lvl = 0;
			$('.spell-lvl').hide();
		} else {
			$('.spell-lvl').show();
			$('.spell-lvl input:radio:first-of-type').css('display', 'none');
			$('.spell-lvl label:first-of-type').css('display', 'none');
		}
		$.ajax({
			url : 'get_spells',
			type : 'post',
			data : 
			{ spell : spell_id, 
				lvl : spell_lvl
			},
			success : function(data) {
				$('.result').html(data);
			}
		});
	});
	
});
</script>
