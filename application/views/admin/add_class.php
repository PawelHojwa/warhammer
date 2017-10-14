<?php
echo heading($subtitle, 4);
echo "<p>" . $added . "</p>";
echo validation_errors("<p class='alert alert-danger'>", "</p>");
echo form_open('admin_panel/add_class');
echo form_input('class_name', '', array('id' => 'class_name', 'placeholder' => 'Nazwa klasy...'));
echo br(2);
?>
<p class="lead c-items">Ekwipunek:</p>
<div class="class-items">
<?php
echo "<p id='one-hand'>Broń jednoręczna:</p>";
echo "<div class='one-hand'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 1) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo br();
echo "<p id='two-hand'>Broń dwuręczna:</p>";
echo "<div class='two-hand'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 2) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo br();
echo "<p id='ranged'>Broń strzelecka/palna:</p>";
echo "<div class='ranged'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 3) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo br();
echo "<p id='daily'>Przedmioty codziennego użytku:</p>";
echo "<div class='daily'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 4) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo br();
echo "<p id='prof-armour'>Uzbrojenie:</p>";
echo "<div class='prof-armour'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 5) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo br();
echo "<p id='pets'>Zwierzęta:</p>";
echo "<div class='pets'>";
foreach ($items as $item) {
	if ($item -> items_group_id == 6) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo "<p class='hide-items'>Ukryj</p>";
echo "</div>";
echo "<p class='hide-items'>Ukryj</p>";
?>
</div>
<?php
echo form_submit('submit_btn', 'Dodaj', array('class' => 'btn btn-primary'));
echo form_close();

echo br(2);
?>
<p class="show-result" title="Kliknij aby rozwinąć">Pokaż klasy</p>
<div class='result'></div>
</div>
<script>
$('document').ready(function() {
	$('span').css({'width': 305, 'display' : 'inline-block'});
	$('.result').hide();
	$('.class-items').hide();
	$('.c-items').click(function() {
		$('.class-items').slideToggle('slow');
	});
	$('.show-result').click(function() {
		$('.result').slideToggle('slow', function() {
			if ($(this).css('display') == 'none') {
				$('.show-result').text('Pokaż klasy');
				$('.show-result').css({'color': 'black', 'text-decoration' : 'underline'});
			} else {
				$('.show-result').text('Ukryj klasy');
				$('.show-result').css({'color': '#4169E1', 'text-decoration' : 'none'});
			}
		});
	});
	$.get('get_classes', function(data) {
		$('.result').html(data);
	});
	$('.hide-items').click(function() {
		$(this).parent().hide();
	});
	$('.one-hand, .two-hand, .ranged, .daily, .prof-armour, .pets').hide();
	$('#one-hand').click(function() {
		$('.one-hand').slideToggle('slow');
	});
	$('#two-hand').click(function() {
		$('.two-hand').slideToggle('slow');
	});
	$('#ranged').click(function() {
		$('.ranged').slideToggle('slow');
	});
	$('#daily').click(function() {
		$('.daily').slideToggle('slow');
	});
	$('#prof-armour').click(function() {
		$('.prof-armour').slideToggle('slow');
	});
	$('#pets').click(function() {
		$('.pets').slideToggle('slow');
	});
});
</script>