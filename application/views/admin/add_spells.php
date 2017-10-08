<?php
echo heading($subtitle, 4);
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
echo validation_errors('<p class="alert alert-danger"', '</p>');
echo br();
?>
<div class='result'>
<?php
echo "<table>";
echo "<tr>";
echo "<th>Nazwa czaru</th><th>Typ</th><th>Poziom czaru</th><th>Koszt PM</th><th>Czas trwania</th><th>Zasięg</th><th>Składniki</th><th>Efekt</th>";
echo "</tr>";
foreach ($spells as $spell) {
	echo "<tr>";
	echo "<td>" . $spell -> cast_name . "</td>";
	echo "<td>" . $spell -> type . "</td>";
	echo "<td>" . $spell -> spell_lvl . "</td>";
	echo "<td class='text-center'>" . $spell -> spell_cost_pm . "</td>";
	echo "<td>" . $spell -> spell_duration . "</td>";
	echo "<td>" . $spell -> spell_range . "</td>";
	echo "<td>" . $spell -> spell_components  . "</td>";
	echo "<td>" . $spell -> spell_effect . "</td>";
	echo "<tr>";
 }
echo "</table>";
?>
</div>
</div>
