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
	echo "<span style='display: inline-block; width: 200px;'>" . form_checkbox('skills', $skill_id, false, ['class' => 'skill']);
	echo form_label($skill, 'skils') . "</span>";
}
echo "<br>";
echo form_submit('btn', 'Wyślij');
echo form_close();
?>

<script>
 $(document).ready(function () {
 $('select').change(function () {
 	$('.skill').removeProp('checked');
 	var prof_id = $(this).val();
 	$.ajax({
 		url: 'get_prof',
 		type: 'post',
 		data: {prof: prof_id},
 		dataType: 'json',
 		success: function(data) {
 			$.each(data, function(key, value) {
 				$('.skill[value="' + value +'"]').prop('checked');
 			}); //each
 		}
 	}); //ajax
 });  //change
});
</script>