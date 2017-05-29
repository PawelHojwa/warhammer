<h2><?php echo $title; ?></h2>
<h3><?php echo $sub_title; ?></h3>


<?php echo form_open('login/login', 'style="width:200px"');;
echo form_label('Nazwa użytkownika: ', 'username'); 
echo form_input('username');
echo form_error('username','<p>', '</p>');
echo form_label('Hasło: ', 'password');
echo form_password('password'); 
echo form_error('password','<p>', '</p>');
echo $error;
echo form_submit('submit', 'Zaloguj');
echo form_close();
echo anchor('form/register', 'Rejestracja', array('title' => 'Rejestracja', 'style' => 'font-size:12px'));

?>