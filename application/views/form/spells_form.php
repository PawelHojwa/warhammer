<div class="container">
<?php
echo heading($sub_title, 3);
?>
<span id="spell">Ilość czarów do wybrania: <p id="spells" class="lead"><?php echo $amount; ?></p></span>
<?php
echo br(2);
echo form_open('spells/spell_form');
foreach ($spells as $spell) {
	echo form_checkbox('spell[]', $spell['id'], FALSE, array('class' => 'spell'));
	echo form_label($spell['cast_name'], 'spell');
	echo br();
}
echo form_submit('btn', 'Wyślij', array('class' => 'btn btn-primary'));
echo form_close();
echo br();
echo validation_errors('<spam class="alert alert-danger">','</spam>')
?>
</div>
<script>
$('document').ready(function() {
	$('.spell').click(function() {
		var spell = $('#spells').text();
		if (spell == 0)  {
			return false;
		}
		spell--;
		$('#spells').text(spell);
	});
});
</script>