<h3><?php echo $title; ?></h3>
<?php
echo form_open('form/register', 'style="width:180px"');
echo form_label('Imie', 'name');
echo form_input('name');
echo form_error('name', '<p>', '</p>');
echo form_label('Login', 'login');
echo form_input('login');
echo form_error('login', '<p>', '</p>');
echo form_label('Hasło', 'password');
echo form_password('pass');
echo form_error('pass', '<p>', '</p>');
echo form_label('Powtórz hasło', 'pass');
echo form_password('confpass');
echo form_error('confpass', '<p>', '</p>');
echo form_label('E-mail', 'email');
echo form_input('email');
echo form_error('email', '<p>', '</p>');
echo form_submit('submit','Rejestracja');
echo form_close();
?>
