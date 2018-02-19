<div class="container">
<?php
echo heading($title, 3);
echo anchor('edit_panel/edit', '<- Powrót do panelu edycji', array('title' => 'Powrót do panelu edycji'));
echo br(2);
echo validation_errors("<p class='alert alert-danger'>", "</p>");
echo form_open('edit_panel/edit_character');
echo form_input('id', $id, array('id' => 'p_id', 'hidden' => 'hidden'));
echo form_label('Imię:', 'name');
echo form_input('name', $name);
echo br();
echo form_label('Rasa:', 'race');
echo form_input('race', $raceName, array('readonly' => 'readonly', 'id' => 'race-n'));
echo form_dropdown('race', $race, $raceID, array('id' => 'race-name'));
echo br();
echo form_label('Płeć:', 'gender');
echo form_input('gender', $genderName, array('readonly' => 'readonly', 'id' => 'gender'));
echo form_dropdown('gender', $gender, $genderID, array('id' => 'gender-name'));
echo br();
echo form_label('Klasa:', 'class');
echo form_input('class', $className, array('readonly' => 'readonly', 'id' => 'classes'));
echo form_dropdown('class', $classes, $classID, array('id' => 'class-name'));
echo br();
echo form_label('Profesja:', 'profession');
echo form_input('profession', $profession_name, array('readonly' => 'readonly', 'id' => 'profession_name'));
echo "<span id='profession'><select name='profession' id='profession-name'></select></span>";
echo br();
echo form_label('Charakter:', 'nature');
echo form_input('nature', $natureName, array('readonly' => 'readonly', 'id' => 'nature'));
echo form_dropdown('nature', $nature, $natureID, array('id' => 'nature-name'));
echo br();
echo form_label('Wiek:', 'age');
echo form_input('age', $age, array('readonly' => 'readonly', 'id' => 'age'));
echo "<span id='age_field'><select id='age-val'></select></span>";
echo br();
echo form_label('Wzrost:', 'height');
echo form_input('height', $height);
echo br();
echo form_label('Waga:', 'weight');
echo form_input('weight', $weight);
echo br();
echo form_label('Włosy:', 'hair');
echo form_input('hair', $hair);
echo br();
echo form_label('Oczy:', 'eyes');
echo form_input('eyes', $eyes);
echo br();
echo form_label('Opis:', 'description');
echo form_input('description', $description);
echo br();
echo form_label('Pochodzenie:', 'origin');
echo form_input('origin', $origin);
echo br();
echo form_label('Rodzina:', 'family');
echo form_input('family', $family);
echo br(2);
echo form_submit('submitbtn', 'Zmień', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$('document').ready(function() {
	$('label').css({
		'width' : 120,
		'margin-right' : 10
	});
	$('#race-name').change(function() {
		var race_id = $('#race-name').val();
		var race_name = $('#race-name option:selected').text();
		var p_id = $('#p_id').val();
		$('#race-name option').each(function() {
			$.ajax({
				url : 'get_age',
				type : 'post',
				data : {
					race : race_id,
					p_id : p_id
				},
				success : function(data) {
					$('#age-val').html(data);
				}	
			});
			$('#race-n').val(race_name);
		});
	}).change();
	$('#gender-name').change(function() {
		var gender_name = $('#gender-name option:selected').text();
		$('#gender-name option').each(function() {
			$('#gender').val(gender_name);
		});
	}).change();
	$('#class-name').change(function() {
		var class_id = $('#class-name option:selected').val();
		var class_name = $('#class-name option:selected').text();
		$('#class-name option').each(function() {
			$('#classes').val(class_name);
		});
		$.ajax({
			url : 'get_profession',
			type : 'post',
			data: {
				classes : class_id
			},
			success : function(data) {
				$('#profession-name').html(data);
			}
		});
		
	}).change();
	$('#profession-name').change(function() {
		var profession_name = $('#profession-name option:selected').text();
		$('#profession-name option').each(function() {
			$('#profession_name').val(profession_name);
		});
	}).change();
	
	$('#nature-name').change(function() {
		var nature_name = $('#nature-name option:selected').text();
		$('#nature-name option').each(function() {
			$('#nature').val(nature_name);
		});
	}).change();
	$('#age-val').change(function() {
		$('#age-val option').each(function() {
			var age_val = $('#age-val option:selected').text();
			$('#age').val(age_val);
		});
	}).change();
});
</script>