<div class="container">
<?php
echo heading($title, 3);
echo anchor('admin_panel/add_class', '<- Powrót', array('title' => 'Powrót panelu administracyjnego'));
echo br(2);
echo validation_errors("<p class='alert alert-danger'>", "</p>");
echo form_open('edit_panel/edit_skill_info');
echo form_input('skill_name', $skillName, array('placeholder' => 'Nazwa umiejętności...'));
echo br(2);
echo form_textarea('description', $skill_description, array('placeholder' => 'Opis umiejętności...'));
echo br();
echo form_submit('submit_btn', "Edytuj umiejętność", array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>