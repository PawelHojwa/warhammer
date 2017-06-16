<h1><?php echo $title; ?></h1>
<p class="lead">Witaj <?php echo $user; ?></p>
<p>Twoje postacie:</p>
<?php
echo anchor('login/logout', "Wyloguj", array('style' => 'display: inline-block;')) . "<br><br>";
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
	<td><?php echo form_label('Charakter: ', 'nature'); ?></td>
	<td><?php echo form_dropdown('nature', $nature,1 ); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Wiek: ', 'age'); ?></td>
	<td><?php echo form_input('age', '', ['size' => 2, 'id' => 'page', 'readonly' => 'readonly']); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Młody ', 'age'); ?> </td>
	<td><?php echo form_radio(array('name' => 'age', 'value' => 1)); ?></td>
</tr>
<tr>
	<td><?php echo form_label('Stary ', 'age'); ?> </td>
	<td><?php echo form_radio(array('name' => 'age', 'value' => 2)); ?></td>
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
</table>
</div>
<div class="form-group">
<?php
//losowe statystyki
echo "<span class='name-stats'>Sz</span>";
echo "<span class='name-stats'>WW</span>";
echo "<span class='name-stats'>US</span>";
echo "<span class='name-stats'>S</span>";
echo "<span class='name-stats'>Wt</span>";
echo "<span class='name-stats'>Żw</span>";
echo "<span class='name-stats'>I</span>";
echo "<span class='name-stats'>A</span>";
echo "<span class='name-stats'>Zr</span>";
echo "<span class='name-stats'>CP</span>";
echo "<span class='name-stats'>Int</span>";
echo "<span class='name-stats'>Op</span>";
echo "<span class='name-stats'>SW</span>";
echo "<span class='name-stats'>Ogd</span>" . "<br>";
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
<div class="form-group">
<?php
echo form_button('btn1', 'Generuj', ['id' => 'btn1', 'class' => 'btn btn-primary']);
echo form_submit('submit', 'Stwórz', ['class' => 'btn btn-primary']); ?>
</div>
<?php echo form_close(); ?>
<p id="demo"></p>
<?php echo validation_errors('<p class="alert alert-danger">', '</p>'); ?>


</script>