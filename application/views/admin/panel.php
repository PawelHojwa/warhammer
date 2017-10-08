<div id="content">
	<?php
		$char = anchor('admin_panel/show_list',$char_names, array('id' => 'char'));
		$classes = anchor('admin_panel/add_class',$add_class, array('id' => 'add_class'));
		$race = anchor('admin_panel/add_race',$add_race, array('id' => 'add_race'));
		$profession = anchor('admin_panel/add_profession',$add_profession, array('id' => 'add_profession'));
		$skill = anchor('admin_panel/add_skill',$add_skill, array('id' => 'skill'));
		$spell = anchor('admin_panel/add_spell',$add_spell, array('id' => 'add_spell'));
		$list = array($char, $classes, $race, $profession, $skill, $spell);
		$attr = array('class' => 'menu');
	?>
	<div id="header">
	<?php
		echo heading($title, 2);
	?>
	</div>
	<div id="menu" style="float:left; width: 200px;">
	<?php
		echo ul($list, $attr);
	?>
	</div>
	<div class="main" style="margin-left: 200px; padding: 10px;">
		<div class="result"></div>
	</div>
	
</div>
<script>
$(document).ready(function() {
	var h = $('h2').css('height');
	$('#menu').css('margin-top', h);
	$('.main').load('show_list', function(data, status) {
		if (status == 'error') {
			$('.main').html('<p>Proszę odświeżyć stronę</p>');
		} else {
			$('.main').html(data);
		}
	});
	$('#skill').click(function() {
		$('.main').load('add_skill', function(data, status) {
			if (status == 'error') {
				$('.main').html('<p>Błąd</p>');
			} else {
				$('.main').html(data);
			}
		});
		return false;
	});
	$('#char').click(function() {
		$('.main').load('show_list', function(data) {
			$('.main').html(data);
		});
		return false;
	});
	$('#add_spell').click(function() {
		$('.main').load('add_spell', function(data) {
			$('.main').html(data);
		});
		return false;
	});
	$('#add_profession').click(function() {
		$('.main').load('add_profession', function(data) {
			$('.main').html(data);
		});
		return false;
	});
	$('#add_race').click(function() {
		$('.main').load('add_race', function(data) {
			$('.main').html(data);
		});
		return false;
	});
});
</script>