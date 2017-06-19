<h1><?php $title; ?></h1>
<?php
echo form_open('change_password/new_pass', ['id' => 'login']);
echo form_label('E-mail', 'email');
echo form_input('email');
echo form_label('Hasło', 'pass');
echo form_password('pass');
echo form_label('Powtórz hasło', 'confpass');
echo form_password('confpass');
echo form_submit('submit' , 'Zmień hasło', ['class' => 'btn btn-primary']);
echo form_close();
echo validation_errors('<p class="alert alert-danger"', '</p>');
echo anchor('login/form_login', 'Powrót');