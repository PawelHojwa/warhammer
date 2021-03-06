<div class="container">
<h1><?php echo $title; ?></h1>
<button class="btn btn-info show-table">Pokaż postacie</button>
<div class="character-table">
	<p class="name_caption lead">Twoje postacie:</p>
	<table class="name_table">
	<?php 
	if (empty($name_list)) {
		echo "<tr>";
		echo "<td class='alert'>Nie masz jeszcze postaci</td>";
		echo "</tr>";
	} else {
	    foreach ($name_list as $name) {
			echo "<tr>";
				echo "<td>" . $name['name'] . "</td>";
				echo "<td class='text-center'>" . anchor('show_char/page_1?id=' . $name['id'],  'Pokaż') . "</td>";
				echo "<td class='text-center'>" . anchor('edit_character/edit?id=' . $name['id'], 'Edytuj') . "</td>";
			echo "</tr>";
		}
	}
	?>
	</table>
</div>
<br><br>
<?php 
echo form_open('create_player/create', ['id' => 'basic']);
?>
<div class="form-group">
<table id="info">
<tr>
	<td><?php echo form_label('Imie: ', 'name'); ?></td>
	<td><?php echo form_input('name', '', 'id="first"'); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Rasa: ', 'race'); ?></td>
	<td><?php echo form_dropdown('race', $race, 1, ['id' => 'race']); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Płeć: ', 'gender'); ?></td>
	<td><?php echo form_dropdown('gender', $gender, 1); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Klasa: ', 'classes'); ?></td>
	<td><?php echo form_dropdown('classes', $classes, 1, ['id' => 'classes']); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Profesja: ', 'profession'); ?></td>
	<td id="profession"></td>
</tr>
<tr>
	<td><?php echo form_label('Charakter: ', 'nature'); ?></td>
	<td><?php echo form_dropdown('nature', $nature,1 ); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Wiek') ?></td>
	<td id="age">
	</td>
</tr>
<tr>
	<td><?php echo form_label('Wzrost: ', 'height'); ?></td>
	<td><?php echo form_input('height'); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Waga: ', 'weight'); ?></td>
	<td><?php echo form_input('weight'); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Włosy: ', 'hair'); ?></th>
	<td><?php echo form_input('hair'); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Oczy: ', 'eyes'); ?></th>
	<td><?php echo form_input('eyes'); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Opis: ', 'description'); ?></th>
	<td><?php echo form_input('description'); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Rodzina: ', 'family'); ?></td>
	<td><?php echo form_input('family'); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Pochodzenie: ', 'origin'); ?></td>
	<td><?php echo form_input('origin'); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Punkty przeznaczenia: ', 'pp'); ?></td>
	<td><?php echo form_input('pp', '', array('readonly' => 'readonly', 'size' => 1, 'id' => 'dp', 'class' => 'text-center')); ?></td>
</tr>
</table>
</div>
<div class="form-group">
<?php
echo form_input('', 'Sz', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //1
echo form_input('', 'WW', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //2
echo form_input('', 'US', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //3
echo form_input('', 'S', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //4
echo form_input('', 'Wt', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //5
echo form_input('', 'Żw', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //6
echo form_input('', 'I', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //7
echo form_input('', 'A', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //8
echo form_input('', 'Zr', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //9
echo form_input('', 'CP', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //10
echo form_input('', 'Int', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //11
echo form_input('', 'Op', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //12
echo form_input('', 'SW', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']); //13
echo form_input('', 'Ogd', ['size' => 2, 'readonly' => 'readonly', 'class' => 'name-stats']) . "<br>"; //14
//statystyki generowane losowo
echo form_input('rsz', '', ['size' => 2, 'id' => 'rsz', 'readonly' => 'readonly']); //1
echo form_input('rww', '', ['size' => 2, 'id' => 'rww', 'readonly' => 'readonly']); //2
echo form_input('rus', '', ['size' => 2, 'id' => 'rus', 'readonly' => 'readonly']); //3
echo form_input('rs', '', ['size' => 2, 'id' => 'rs', 'readonly' => 'readonly']); //4
echo form_input('rwt', '', ['size' => 2, 'id' => 'rwt', 'readonly' => 'readonly']); //5
echo form_input('rzw', '', ['size' => 2, 'id' => 'rzw', 'readonly' => 'readonly']); //6
echo form_input('ri', '', ['size' => 2, 'id' => 'ri', 'readonly' => 'readonly']); //7
echo form_input('ra', '', ['size' => 2, 'id' => 'ra', 'readonly' => 'readonly']); //8
echo form_input('rzr', '', ['size' => 2, 'id' => 'rzr', 'readonly' => 'readonly']); //9
echo form_input('rcp', '', ['size' => 2, 'id' => 'rcp', 'readonly' => 'readonly']); //10
echo form_input('rint', '', ['size' => 2, 'id' => 'rint', 'readonly' => 'readonly']); //11
echo form_input('rop', '', ['size' => 2, 'id' => 'rop', 'readonly' => 'readonly']); //12
echo form_input('rsw', '', ['size' => 2, 'id' => 'rsw', 'readonly' => 'readonly']); //13
echo form_input('rogd', '', ['size' => 2, 'id' => 'rogd', 'readonly' => 'readonly']) . "<br>"; //14
//statystyki pobrane z bazy
echo form_input('sz', '', ['size' => 2, 'id' => 'sz', 'readonly' => 'readonly']); //1
echo form_input('ww', '', ['size' => 2, 'id' => 'ww', 'readonly' => 'readonly']); //2
echo form_input('us', '', ['size' => 2, 'id' => 'us', 'readonly' => 'readonly']); //3
echo form_input('s', '', ['size' => 2, 'id' => 's', 'readonly' => 'readonly']); //4
echo form_input('wt', '', ['size' => 2, 'id' => 'wt', 'readonly' => 'readonly']); //5
echo form_input('zw', '', ['size' => 2, 'id' => 'zw', 'readonly' => 'readonly']); //6
echo form_input('i', '', ['size' => 2, 'id' => 'i', 'readonly' => 'readonly']); //7
echo form_input('a', '', ['size' => 2, 'id' => 'a', 'readonly' => 'readonly']); //8
echo form_input('zr', '', ['size' => 2, 'id' => 'zr', 'readonly' => 'readonly']); //9
echo form_input('cp', '', ['size' => 2, 'id' => 'cp', 'readonly' => 'readonly']); //10
echo form_input('int', '', ['size' => 2, 'id' => 'intel', 'readonly' => 'readonly']); //11
echo form_input('op', '', ['size' => 2, 'id' => 'op', 'readonly' => 'readonly']); //12
echo form_input('sw', '', ['size' => 2, 'id' => 'sw', 'readonly' => 'readonly']); //13
echo form_input('ogd', '', ['size' => 2, 'id' => 'ogd', 'readonly' => 'readonly']);  //14
?>
</div>
<p id="demo"></p>
<div class="form-group">
<?php
echo form_button('btn1', 'Generuj', ['id' => 'btn1', 'class' => 'btn btn-primary']);
echo form_submit('submit', 'Stwórz', ['class' => 'btn btn-primary']); ?>
</div>
<?php echo form_close(); ?>
<?php echo validation_errors('<p class="alert alert-danger">', '</p>'); ?>
</div>
<script>
$('document').ready(function() {
	$('#race').change(function() {
		var race = $('#race').val();
		$('#race option:selected').each(function() {
			$.ajax({
				url: 'destiny_points',
				type: 'post',
				data: {
					race: race
				},
				success: function(data) {
					$('#dp').val(data);
				}
			});
			$.ajax({
				url: 'get_race_age',
				type: 'post',
				data: {
					race: race
				},
				success: function(data) {
					$('#age').html(data);
				} 
			});
		});
		
	}).change();
	$('#classes').change(function() {
		var classes = $('#classes').val();
		$('#classes option:selected').each(function() {
			$.ajax({
				url: 'get_profession',
				type: 'post',
				data: {
					classes: classes
				},
				success: function(data) {
					$('#profession').html(data);
				}
			});
		});
	}).change();
	$('.show-table').click(function() {
		$('.character-table').slideToggle("slow");
	});
});
</script>