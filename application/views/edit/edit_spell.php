<div class='container'>
<?php
echo heading($title, 3);
echo anchor('admin_panel/add_spell', '<- Powrót', array('title' => 'Powrót do panelu administracyjnego'));
echo br(2);
echo form_input('', $spell['spell_type'], array('id' => 'type'));
echo form_input('', $spell['spell_lvl'], array('id' => 'lvl'));
echo form_open('edit_panel/edit_spell_info');
echo form_input('spell_name', $spell_name, array('placeholder' => 'Nazwa czaru...'));
echo br();
echo form_label('Typ czaru', 'spell_type');
echo form_dropdown('spell_type', $type, '', array('id' => 'select_type'));
echo br();
echo form_label('Poziom czaru');
echo form_dropdown('spell_lvl', $lvl, '', array('id' => 'select_lvl'));
echo br();
echo form_input('spell_cost', $spell['spell_cost'], array('placeholder' => 'Koszt czaru...'));
echo br();
echo form_input('spell_duration', $spell['spell_duration'], array('placeholder' => 'Czas trwania...'));
echo br();
echo form_input('spell_range', $spell['spell_range'], array('placeholder' => 'Zasięg czaru...'));
echo br();
echo form_input('spell_components', $spell['spell_components'], array('placeholder' => 'Składniki...'));
echo br();
echo form_input('spell_effect', $spell['spell_effect'], array('placeholder' => 'Efekt...'));
echo br(2);
echo form_submit('sub_btn', 'Zamień', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$('document').ready(function() {
	var type = $('#type').val();
	var lvl = $('#lvl').val();
	$('#select_type').val(type);
	$('#select_lvl').val(lvl);
});
</script>