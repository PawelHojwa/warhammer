<h2><?php echo $title; ?></h2>
<h3><?php echo $sub_title; ?></h3>


<?php echo form_open('login/form_login');;
echo form_label('Nazwa użytkownika: ', 'username') . "<br>"; 
echo form_input('username');
echo form_error('username','<span>', '</span>') . "<br>";
echo form_label('Hasło: ', 'password') . "<br>";
echo form_password('password'); 
echo form_error('password','<span>', '</span>') . "<br>";
echo "<p>" . $error . "</p>";
echo form_submit('submit', 'Zaloguj');
echo form_close();
echo anchor('register/register', 'Rejestracja', 
	array('title' => 'Rejestracja', 'style' => 'font-size:12px'));
echo anchor('change_password/new_pass', 'Zapomniałem hasła', 
	array('title' => 'Zapomniałem hasła', 'style' => 'font-size:12px'));
?>