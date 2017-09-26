<?php
echo heading($subtitle, 4);
echo form_open('admin_panel/add_skill');
echo form_input('skill_name', '', array('id' => 'skill', 'placeholder' => 'Nazwa umiejętności...'));
echo form_submit('', 'Dodaj', array('class' => 'btn btn-primary'));
echo form_close();
echo validation_errors('<p class="alert alert-danger">', '</p>');
echo br(2);
$lp = 0;
foreach ($skills as $row) {
	echo ++$lp . ". ";
	echo $row -> skillName . " ";
	echo anchor('delete/del_skill?=' . $row -> skillid, 'Usuń');
	echo br();
}
?>