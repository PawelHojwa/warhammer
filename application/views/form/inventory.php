<div class="container">
<?php
echo heading($sub_title, 3);
echo form_open('inventory/form_inventory');
$full_inv = array();
foreach ($b_inv as $item) {
	if ($item['options'] == 0) {
		$full_inv[] = $item['item'];
	}
}
echo ul($full_inv, array('class' => 'inventory-list'));
echo br();
echo '<p>Wybierz ekwipunek:</p>';
foreach ($b_inv as $item) {
	if ($item['options'] == 1 && $item['items_group_id'] == 1) {
			echo form_radio(array('name' => 'inv[1]', 'value' =>$item['inventory_id']));
			echo form_label($item['item'], '', array('style'=> 'margin-right: 15px;'));
	}
}
echo br();
foreach ($b_inv as $item) {	
	if ($item['options'] == 1 && $item['items_group_id'] == 2) {
			echo form_radio(array('name' => 'inv[2]', 'value' =>$item['inventory_id']));
			echo form_label($item['item'], '', array('style'=> 'margin-right: 15px;'));
	}
}
//echo br();
foreach ($b_inv as $item) {	
	if ($item['options'] == 1 && $item['items_group_id'] == 3) {
			echo form_radio(array('name' => 'inv[3]', 'value' =>$item['inventory_id']));
			echo form_label($item['item'], '', array('style'=> 'margin-right: 15px;'));
	}
}
//echo br();
foreach ($b_inv as $item) {	
	if ($item['options'] == 1 && $item['items_group_id'] == 4) {
			echo form_radio(array('name' => 'inv[4]', 'value' =>$item['inventory_id']));
			echo form_label($item['item'], '', array('style'=> 'margin-right: 15px;'));
	}
}
//echo br();
foreach ($b_inv as $item) {	
	if ($item['options'] == 1 && $item['items_group_id'] == 5) {
			echo form_radio(array('name' => 'inv[5]', 'value' =>$item['inventory_id']));
			echo form_label($item['item'], '', array('style'=> 'margin-right: 15px;'));
	}
}
echo br(2);
echo form_submit('submit', 'Wyślij', ['class' => 'btn btn-primary']);
echo form_close();
echo form_error();
?>
</div>