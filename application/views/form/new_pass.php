<h1><?php $title; ?></h1>
<?php
echo form_open('change_password/new_pass');
echo form_label('E-mail', 'email') . "<br>";
echo form_input('email');
echo form_error('email', '<span>', '</span>') . "<br>";
echo form_label('Hasło', 'pass') . "<br>";
echo form_password('pass');
echo form_error('pass', '<span>', '</span>') . "<br>";
echo form_label('Powtórz hasło', 'confpass') . "<br>";
echo form_password('confpass');
echo form_error('confpass', '<span>', '</span>') . "<br>";
echo form_submit('submit' , 'Zmień hasło');
echo form_close();