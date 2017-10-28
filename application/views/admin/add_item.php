<?php
echo heading($subtitle, 4);
echo "<p>" . $added . "</p>";
echo validation_errors("<p class='alert alert danger'>", "</p>");
echo form_open('admin_panel/add_items');
echo form_input('item_name', '', array('placeholder' => 'Nazwa przedmiotu...'));
echo br();
echo form_label('Kategoria przedmiotu');
echo form_dropdown('type', $item_type, 1, array('id' => 'type_item'));
?>
<div id="weapon-hand">
<?php
echo form_radio('weapon_hand', 1, false);
echo form_label("Jednoręczna");
echo form_radio('weapon_hand', 2, false);
echo form_label("Dwuręczna");
?>
</div>
<div id="one-hand-weapon">
<p>Wybierz typ broni:</p>
<?php
foreach ($weapon_type as $type) {
	if ($type['type'] == 1) {
		echo form_radio('weapon_type', $type['id'], false);
		echo form_label($type['name']);
		echo br();
	}
}
?>
</div>
<div id="two-hand-weapon">
<p>Wybierz typ broni:</p>
<?php
foreach ($weapon_type as $type) {
	if ($type['type'] == 2) {
		echo form_radio('weapon_type', $type['id'], false);
		echo form_label($type['name']);
		echo br();
	}
}
?>
</div>
<div id="ranged-weapon">
<p>Wybierz typ broni:</p>
<?php
foreach ($weapon_type as $type) {
	if ($type['type'] == 3) {
		echo form_radio('weapon_type', $type['id'], false);
		echo form_label($type['name']);
		echo br();
	}
}
?>
</div>
<div id="firearm">
<p>Wybierz typ broni:</p>
<?php
foreach ($weapon_type as $type) {
	if ($type['type'] == 4) {
		echo form_radio('weapon_type', $type['id'], false);
		echo form_label($type['name']);
		echo br();
	}
}
?>
</div>
<div id="armour-item">
<p>Umiejscowienie:</p>
<?php
foreach ($armour_placement as $row) {
	echo form_checkbox('armour_placement[]', $row['id'], false);
	echo form_label($row['placement_name']);
	echo br();
}
echo form_input('pp', '', array('placeholder' => 'Punkty pancerza...'));
?>
</div>
<?php
echo br();
echo form_label('Cena:');
echo br();
echo form_input('zk', '', array('placeholder' => 'zk...', 'size' => 3));
echo form_input('sz', '', array('placeholder' => '/...', 'size' => 3));
echo form_input('p', '', array('placeholder' => 'p...', 'size' => 3));
echo br();
echo form_input('weight', '', array('placeholder' => 'Waga...', 'size' => 5));
echo br();
echo form_label('Dostępność:');
echo form_dropdown('availability', $availability, 1);
echo br();
echo form_submit('submit-btn', 'Dodaj', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>

<script>
$('document').ready(function() {
	$('label').css('margin-right', 15);
	$('#one-hand-weapon, #two-hand-weapon, #ranged-weapon, #firearm, #armour-item, #weapon-hand, #ranged-type').hide();
	$('#type_item').change(function() {
		var type = $('#type_item option:selected').val();
		if (type == 3) {
			$('#armour-item').show();
			$('#one-hand-weapon, #two-hand-weapon, #ranged-weapon, #firearm').hide();
		} else if (type == 4){
			$('#weapon-hand').show();
			$('#armour-item').hide();
			$('#weapon-hand input:radio').change(function() {
				var hand = $('#weapon-hand input:radio:checked').val();
				if (hand == 1) {
					$('#one-hand-weapon').show();
					$('#two-hand-weapon, #ranged-weapon, #armour-item').hide();
				} else {
					$('#one-hand-weapon, #ranged-weapon, #armour-item').hide();
					$('#two-hand-weapon').show();
				}
			});
		} else if (type == 5) {
			$('#ranged-weapon').show();
			$('#one-hand-weapon, #two-hand-weapon, #firearm, #armour-item, #weapon-hand, #ranged-type').hide();
		} else if (type == 6) {
			$('#firearm').show();
			$('#one-hand-weapon, #two-hand-weapon, #ranged-weapon, #armour-item, #weapon-hand, #ranged-type').hide();
		} else {
			$('#one-hand-weapon, #two-hand-weapon, #ranged-weapon, #firearm, #armour-item, #weapon-hand, #ranged-type').hide();
		}
	}).change();
});
</script>