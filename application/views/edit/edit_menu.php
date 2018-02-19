<?php
echo anchor('admin_panel/show_list', $menu, array('title' => 'Powrót do panelu'));
echo heading($title, 1);
?>
<div class="container">
<?php
$edit = 'edit_panel/';
if ($profession_id != 69) {
	echo anchor($edit . 'edit_character', $basic, array('class' => 'btn btn-primary', 'style' => 'margin-right: 10px'));
	echo anchor($edit . 'edit_stats', $stats, array('class' => 'btn btn-primary', 'style' => 'margin-right: 10px'));
	echo anchor($edit . 'edit_skills', $skills, array('class' => 'btn btn-primary', 'style' => 'margin-right: 10px'));
	echo anchor($edit . 'edit_inventory', $inventory, array('class' => 'btn btn-primary', 'style' => 'margin-right: 10px'));
} else {
	echo anchor($edit . 'edit_character', $basic, array('class' => 'btn btn-primary', 'style' => 'margin-right: 10px'));
	echo anchor($edit . 'edit_stats', $stats, array('class' => 'btn btn-primary', 'style' => 'margin-right: 10px'));
	echo anchor($edit . 'edit_skills', $skills, array('class' => 'btn btn-primary', 'style' => 'margin-right: 10px'));
	echo anchor($edit . 'edit_inventory', $inventory, array('class' => 'btn btn-primary', 'style' => 'margin-right: 10px'));
	echo anchor($edit . 'edit_spell', $spells, array('class' => 'btn btn-primary', 'style' => 'margin-right: 10px'));
}
?>
</div>