<h1><?php echo $title; ?></h1>
<h3>Imie postaci: <?php echo $player_name; ?></h3>
<p>Wiek: <?php echo $age; ?></p>
<p>Pozostało umiejętności: <span id="amount"><?php echo $am_skill; ?></span></p>

<?php
echo form_open('player_skills/skill');
echo form_label('Profesje: ', 'prof');
echo form_dropdown('prof',$profession, 1) . "<br>";
echo '<p id="1"></p>';
echo form_label('Umiejętności: ', 'skills') . "<br>";
foreach ($skills as $skill_id => $skill)
{
	echo "<span style='display: inline-block; width: 200px;'>" . form_checkbox('skills', $skill_id, FALSE);
	echo form_label($skill, 'skils') . "</span>";
}
echo "<br>";
echo form_submit('btn', 'Wyślij');
echo form_close();
?>

<script>
$("select").change(function () {
	var prof = $("select").val();
	var skills = [$(":checkbox").val()];
	$("select option:selected").each(function() {
		var path = "http://localhost/warhammer/player_skills/get_profession";
		$.post(path, {prof: prof}, function (data) {
			$('#1').html(data);
			if (data == skills)
				$(":checkbox").prop("checked");
		}); //post
	}); //each
}).change(); //change

</script>