<div class="formlog">
	<?php echo form_open('login/form_login');
		echo form_input('username', '', ['placeholder' => 'Nazwa użytkownika...', 'id' => 'first']);
		echo form_password('password', '', ['placeholder' => 'Hasło...']); 
		echo form_submit('submit', 'Zaloguj', ['class' => 'btn btn-primary']);	
	echo form_close();
	?>
	<div id="anchors" class="right clr">
		<?php
		echo anchor('register/register', 'Rejestracja', 
			array('title' => 'Rejestracja'));
		echo anchor('change_password/new_pass', 'Zapomniałem hasła', 
			array('title' => 'Zapomniałem hasła'));
		echo validation_errors('<p class="alert alert-danger">', '</p>');
		?>
	</div>
</div>