<div class="container">
<?php
echo heading($title, 3);
echo anchor('edit_panel/edit', '<- Powrót do panelu edycji', array('title' => 'Powrót do panelu edycji'));
echo br(2);
echo "<p class='lead'>Ekwipunek</p>";
echo "<p class='lead'>Klasa: " . $class_name . "</p>";
echo "<p class='lead'>Profesja: " . $profession_name . "</p>";
$full_inventory = array();
foreach ($inventory as $item) {
	if ($item['options'] == 0) {
		$full_inventory[] = $item['item'];
	}
}
echo ul($full_inventory, array('class' => 'inventory-list'));
echo br();
echo "<p class='lead'>" . $subtitle . "</p>";
echo form_open('edit_panel/edit_inventory');
foreach ($inventory as $item) {
	if ($item['options'] == 1 && $item['items_group_id'] == 1) {
			echo form_radio('inv[0]', $item['inventory_id'], FALSE);
			echo form_label($item['item'], 'inv[0]');
	}
}
echo br();
foreach ($inventory as $item) {
	if ($item['options'] == 1 && $item['items_group_id'] == 2) {
		echo form_radio('inv[1]', $item['inventory_id'], FALSE);
		echo form_label($item['item'], 'inv[1]');
	}
}
foreach ($inventory as $item) {
	if ($item['options'] == 1 && $item['items_group_id'] == 3) {
		echo form_radio('inv[2]', $item['inventory_id'], FALSE);
		echo form_label($item['item'], 'inv[2]');
	}
}
foreach ($inventory as $item) {
	if ($item['options'] == 1 && $item['items_group_id'] == 4) {
		echo form_radio('inv[3]', $item['inventory_id']);
		echo form_label($item['item'], 'inv[3]');
	}
}
foreach ($inventory as $item) {
	if ($item['options'] == 1 && $item['items_group_id'] == 5) {
		echo form_radio('inv[4]', $item['inventory_id']);
		echo form_label($item['item'], 'inv[4]');
	}
}
foreach ($inventory as $item) {
	if ($item['options'] == 1 && $item['items_group_id'] == 6) {
		echo form_radio('inv[5]', $item['inventory_id']);
		echo form_label($item['item'], 'inv[5]');
	}
}
echo br(2);
echo form_submit('btn', 'Zmień', array('class' => 'btn btn-primary'));
?>
</div>
<script>
$('document').ready(function() {
	$('label').css('margin-right', 10);
});
</script>