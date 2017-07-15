<div class="container">
<h1><?php echo $title; ?> </h1>
<?php
echo br();
	echo anchor('create_player/create', $create, array('class' => 'btn_anchor btn btn-primary anchor'));
	echo anchor('trade/price_list', $price_list, array('class' => 'btn_anchor btn btn-primary anchor'));
	echo anchor('speed/speed_tables', $speed, array('class' => 'btn_anchor btn btn-primary anchor'));
?>
</div>