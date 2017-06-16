<?php echo heading($sub_title, 3); ?>
<div id="wrapper">
	<?php echo form_open('login/form_login', 'id="login"');
		echo form_label('Nazwa użytkownika: ', 'username') . "<br>"; 
		echo form_input('username', '', 'id="first"');
		echo form_label('Hasło: ', 'password') . "<br>";
		echo form_password('password'); 
		echo form_submit('submit', 'Zaloguj', ['class' => 'btn btn-primary']);	
	echo form_close();
	?>
	<div id="anchors">
		<?php
		echo anchor('register/register', 'Rejestracja', 
			array('title' => 'Rejestracja'));
		echo anchor('change_password/new_pass', 'Zapomniałem hasła', 
			array('title' => 'Zapomniałem hasła'));
		echo validation_errors('<p class="alert alert-danger">', '</p>');
		?>
	</div>
</div>