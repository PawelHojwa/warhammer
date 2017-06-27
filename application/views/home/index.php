<h1><?php echo $title; ?> </h1>
<?php
echo br();
echo anchor('trade/price_list', $price_list, array('class' => 'btn_anchor btn btn-primary'));
echo anchor('create_player/create', $create, array('class' => 'btn_anchor btn btn-primary'));
