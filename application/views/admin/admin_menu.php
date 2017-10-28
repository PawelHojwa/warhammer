<?php

echo heading($title, 1);
?>
<div class="container">
<?php
	echo anchor('home/index', '<- Menu główne', array('title' => 'Powrót do menu głównego'));
	echo br(2);
	$char = anchor('admin_panel/show_list',$char_names, array('id' => 'char'));
	$classes = anchor('admin_panel/add_class',$add_class, array('id' => 'add_class'));
	$race = anchor('admin_panel/add_race',$add_race, array('id' => 'add_race'));
	$profession = anchor('admin_panel/add_profession',$add_profession, array('id' => 'add_profession'));
	$skill = anchor('admin_panel/add_skill',$add_skill, array('id' => 'skill'));
	$spell = anchor('admin_panel/add_spell',$add_spell, array('id' => 'add_spell'));
	$monster = anchor('admin_panel/add_monster', $add_monster, array('id' => 'add_monster'));
	$items = anchor('admin_panel/add_items', $add_item, array('id' => 'add_items'));
	$list = array($char, $classes, $race, $profession, $skill, $spell, $monster, $items);
	$attr = array('id' => 'menu');
	echo ul($list, $attr);
?>
<div style="clear:both"></div>