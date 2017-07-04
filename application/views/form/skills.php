<?php echo heading($title, 1); ?>
<p class="lead">Imie postaci: <?php echo $player_name; ?></p>
<p>Pozostało umiejętności: <span id="amount" class="lead"><?php echo $am_skill; ?></span></p>
<p id="a"></p>
<?php
echo form_open('player_skills/skill',['id' => 'skill_form']);
echo form_label('Profesje: ', 'prof');
echo form_dropdown('prof', $profession, 1 , ['id' => 'profession']) . "<br>";
echo '<p id="1"></p>';
echo form_label('Umiejętności: ', 'skills') . "<br>";
foreach ($skills as $skill_id => $skill) {
	echo "<span style='display: inline-block; width: 320px; margin-bottom: 5px;'>" 
	. form_checkbox('skills[]', $skill_id, false, ['class' => 'skill']);
	echo form_label($skill, 'skills'). "</span>";
}
echo "<br>";
echo form_submit('btn', 'Wyślij', ['class' => 'btn btn-primary']);
echo form_close();
?>
<script>
$('#skill_form').submit(function() {
	var am = $('#amount').text();
	var len = $('.skill:checked:not(:disabled)').length;
	var deff = am - len;
	if (len == am)
		return true;
	else {
		alert("Pozostało do wybrania: " + deff + " umiejętności");
		return false;
	}
});
</script>