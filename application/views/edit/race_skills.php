<div class="container">
<?php
echo heading($title, 3);
foreach ($skills as $skill) {
	if ($skill -> options == 0) {
		echo $skill -> skillName;
	}
}
echo br(2);
echo "<p class='lead'>" . $subtitle . "</p>";
echo form_open('edit_panel/edit_race_skills');
foreach ($skills as $skill) {
	if ($skill -> options == 1) {
		echo form_radio('skill[]', $skill -> skillid, false);
		echo form_label($skill -> skillName, 'skill[]');
	}
}
echo br(2);
echo form_submit('btn', 'Zmień', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$('document').ready(function() {
	$('label').css({'margin-right' : 10});
});
</script>