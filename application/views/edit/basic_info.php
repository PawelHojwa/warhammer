<div class="container">
<?php
echo heading($title, 3);
echo anchor('admin_panel/show_list', '<-Powrót do panelu');
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
echo form_input('', 'Sz', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'WW', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'US', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'S', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Wt', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Żw', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'I', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'A', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Zr', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'CP', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Int', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Op', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'SW', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Ogd', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo br();
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo br();
echo form_input('sz', $sz, array('id' => 'sz','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('ww', $ww, array('id' => 'ww','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('us', $us, array('id' => 'us','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('s', $s, array('id' => 's','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('wt', $wt, array('id' => 'wt','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('zw', $zw, array('id' => 'zw','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('i', $i, array('id' => 'i','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('a', $a, array('id' => 'a','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('zr', $zr, array('id' => 'zr','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('cp', $cp, array('id' => 'cp','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('int', $intel, array('id' => 'intel','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('op', $op, array('id' => 'op','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('sw', $sw, array('id' => 'sw','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('ogd', $ogd, array('id' => 'ogd','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo br();
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo br();
echo form_input('rsz', '', array('id' => 'rsz','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rww', '', array('id' => 'rww','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rus', '', array('id' => 'rus','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rs', '', array('id' => 'rs','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rwt', '', array('id' => 'rwt','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rzw', '', array('id' => 'rzw','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('ri', '', array('id' => 'ri','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('ra', '', array('id' => 'ra','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rzr', '', array('id' => 'rzr','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rcp', '', array('id' => 'rcp','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rint', '', array('id' => 'rintel','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rop', '', array('id' => 'rop','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rsw', '', array('id' => 'rsw','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rogd', '', array('id' => 'rogd','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
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
	var width = $('.text-center').css('width');
	$('button').css('width', width);
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
			$.ajax({
				url : 'get_stat',
				type : 'post',
				data : {
					race : race_id
				},
				dataType : 'json',
				success : function(data) {
					$.each(data, function(key, value) {
						$('#r' + key).val(value);
					});
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
	var stats = [];
	$('.stats').each(function(x) {
		stats[x] = $('.stats').eq(x).val();
	});
	$('.add').click(function() {
		var index = $('.add').index(this);
		stats[index] = parseInt(stats[index]) + parseInt(1);
		$('.stats').eq(index).val(stats[index]);
	});
	$('.diff').click(function() {
		var index = $('.diff').index(this);
		stats[index] = parseInt(stats[index]) - parseInt(1);
		$('.stats').eq(index).val(stats[index]);
		if (stats[index] <= 0) {
			stats[index] = 0;
			$('.stats').eq(index).val(stats[index]);
		}
	});
	
});
</script>