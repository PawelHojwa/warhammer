<?php
echo heading($subtitle, 4);
echo "<p>" . $added . "</p>";
echo form_open('admin_panel/add_skill');
echo form_input('skill_name', '', array('id' => 'skill_name', 'placeholder' => 'Nazwa umiejętności...'));
echo form_submit('', 'Dodaj', array('class' => 'btn btn-primary', 'id' => 'submit'));
echo form_close();
echo validation_errors('<p class="alert alert-danger">', '</p>');
echo br(2);
?>
<div class='result'></div>
</div>
<script>
$('document').ready(function() {
	$.get('get_skills', function(data) {
		$('.result').html(data);
	});
});
</script>