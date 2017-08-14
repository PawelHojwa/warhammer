<div class="container"></div>
	<?php
	echo heading($title, 3);
	echo anchor('create_player/create', 'Powrót');
	echo form_open('edit_character/edit', array('id' => 'edit_basic_form'));
	?>
	<div class="form-container">
		<div class="form-group">
		<?php
		echo form_label('Imię:', 'name');
		echo form_input('name',$name, array('readonly' => 'readonly'));
		?>
		</div>
		<div class="form-group">
		<?php
		echo form_label('Rasa:', 'race');
		echo form_input('race', $raceName, array('readonly' => 'readonly'));
		?>
		</div>
		<div class="form-group">
		<?php
		echo form_label('Płeć:', 'gender');
		echo form_input('gender', $genderName, array('readonly' => 'readonly'));
		?>
		</div>
		<div class="form-group">
		<?php
		echo form_label('Klasa:', 'classes');
		echo form_input('classes', $className, array('readonly' => 'readonly'));
		?>
		</div>
		<div class="form-group">
		<?php
		echo form_label('Charakter:', 'nature');
		echo form_input('nature', $natureName, array('readonly' => 'readonly'));
		?>
		</div>
		<div class="form-group">
		<?php
		echo form_label('Wiek:', 'age');
		echo form_input('age', $age, array('readonly' => 'readonly'));
		?>
		</div>
		<div class="form-group">
		<?php
		echo form_label('Waga:', 'weight');
		echo form_input('weight', $weight);
		?>
		</div>
		<div class="form-group">
		<?php
		echo form_label('Włosy:', 'hair');
		echo form_input('hair', $hair);
		?>
		</div>
		<div class="form-group">
		<?php
		echo form_label('Oczy:', 'eyes');
		echo form_input('eyes', $eyes, array('readonly' => 'readonly'));
		?>
		</div>
		<div class="form-group">
		<?php
		echo form_label('Opis:', 'description');
		echo form_input('description', $description);
		?>
		</div>
		<div class="form-group">
		<?php
		echo form_label('Doświadczenie:', 'exp');
		echo form_input('exp', '');
		?>
		</div>
	</div>
	<?php
	echo form_submit('btn', 'Wyślij', array('class' => 'btn btn-primary'));
	echo form_close();
	echo validation_errors('<p class="alert alert-danger">', '</p>');
	?>
</div>