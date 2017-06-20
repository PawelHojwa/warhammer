<div id="wrapper">
<?php echo form_open('register/register', ['id' => 'reg_form']);
	echo form_label('Rejestracja', '', ['class' => 'form_caption']);
	echo form_label('Imie: ', 'name');
	echo form_input('name', '', ['id' => 'first']);
	echo form_label('Login: ', 'login');
	echo form_input('login');
	echo form_label('Hasło: ', 'password');
	echo form_password('pass');
	echo form_label('Powtórz hasło: ', 'pass');
	echo form_password('confpass');
	echo form_label('E-mail: ', 'email');
	echo form_input('email');
	echo form_submit('submit','Rejestracja', 'class="btn btn-primary"');
	echo form_close();
?>
<div id="anchors">
	<?php echo anchor('login/form_login', 'Powrót'); ?>
</div>
	<?php echo validation_errors('<p class="alert alert-danger">', '</p>'); ?>	
</div>