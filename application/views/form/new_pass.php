<div id="wrapper">
	<?php 
		echo form_open('change_password/new_pass', ['id' => 'login']);
		echo form_label('Nowe hasło', '', ['class' => 'form_caption']);
		echo form_label('E-mail', 'email');
		echo form_input('email', '', ['id' => 'first']);
		echo form_label('Hasło', 'pass');
		echo form_password('pass');
		echo form_label('Powtórz hasło', 'confpass');
		echo form_password('confpass');
		echo form_submit('submit', 'Zmień hasło', ['class' => 'btn btn-primary']);
		echo form_close();
		echo validation_errors('<p class="alert alert-danger"', '</p>');
	?>
	<div id="anchors">
		<?php echo anchor('login/form_login', 'Powrót'); ?>
	</div>
</div>