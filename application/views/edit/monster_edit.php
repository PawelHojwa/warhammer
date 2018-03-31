<div class="container">
<?php
$monster_stats = array('sz' => $sz, 'ww' => $ww, 'us' => $us, 's' => $s, 'wt' => $wt, 'zw' => $zw, 'ini' => $i, 'a' => $a, 'zr' => $zr, 'cp' => $cp, 'intel' => $int, 'op' => $op, 'sw' => $sw, 'ogd' => $ogd);
echo heading($title, 3);
echo anchor('admin_panel/add_monster', '<- Powrót', array('title' => 'Powrót do panelu administracyjnego'));
echo br(2);
echo form_input('', $categoryID, array('hidden' => 'hidden', 'id' => 'category-id'));
echo form_open('edit_panel/edit_monster_info');
echo form_input('name', $monsterName);
echo br();
echo form_label('Kategoria potwora', 'category');
echo form_dropdown('category', $category);
echo br();
echo "<p class='lead'>Statystyki</p>";
echo "<div class='items'>";
foreach ($monster_stats as $k => $v) {
	echo form_input('', $k, array('size' => 3, 'class' => 'text-center', 'readonly' => 'readonly'));
}
echo br();
foreach ($monster_stats as $row) {
	echo form_button('', '+', array('class' => 'add'));
}
echo br();
foreach ($monster_stats as $k => $v) {
	echo form_input($k, $v, array('size' => 3, 'class' => 'text-center stats', 'readonly' => 'readonly'));
}
echo br();
foreach ($monster_stats as $row) {
	echo form_button('', '-', array('class' => 'diff'));
} 
echo "<p class='hide-div'>Ukryj</p>";
echo "</div>";
echo form_submit('sub_btn', 'Zmień', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$('document').ready(function() {
	var mon_cat = $('#category-id').val();
	$('select').css('margin-left',10).val(mon_cat);
	var width = $('.text-center').css('width');
	var stats = [1, 10, 10, 1, 1, 1, 10, 1, 10, 10, 10, 10, 10, 10];
	var mon_stats = [];
	$('.stats').each(function(i) {
		mon_stats[i] = $(this).val();
	});
	$('button').css('width', width);
	$('.lead').css({'text-decoration' : 'underline', 'width' : 100}).hover(function() {
		$(this).css({'text-decoration' : 'none', 'color' : '#4169E1', 'cursor' : 'pointer'});
	}, function() {
		$(this).css({'text-decoration' : 'underline', 'color' : 'black'});
	});
	$('.hide-div').css({'margin-left' : 10, 'text-decoration' : 'underline'}).hover(function() {
		$(this).css({'color' : 'red', 'cursor' : 'pointer', 'text-decoration' : 'none'});
	}, function() {
		$(this).css({'color' : 'black', 'text-decoration' : 'underline'});
	});
	$('.items').hide();
	$('.lead').click(function() {
		$('.items').slideToggle('slow');
	});
	$('.hide-div').click(function() {
		$(this).parent().fadeOut(500);
	});
	$('.add').click(function() {
		var i = $('.add').index(this);
		mon_stats[i] = parseInt(mon_stats[i]) + parseInt(1);
		$('.stats').eq(i).val(mon_stats[i]);
	});
	$('.diff').click(function() {
		var i = $('.diff').index(this);
		if (mon_stats[i] > 0) {
			mon_stats[i] = parseInt(mon_stats[i]) - parseInt(1);
		} else {
			mon_stats[i] = 0;
		}
		$('.stats').eq(i).val(mon_stats[i]);
	});
	$('.add').dblclick(function() {
		var i = $('.add').index(this);
		mon_stats[i] = parseInt(mon_stats[i]) + parseInt(stats[i]);
		$('.stats').eq(i).val(mon_stats[i]);
	});
	$('.diff').dblclick(function() {
		var i = $('.diff').index(this);
		if (mon_stats[i] > 0) {
			if (mon_stats[i] < stats[i]) {
				mon_stats[i] = 0;
			} else {
				mon_stats[i] = parseInt(mon_stats[i]) - parseInt(stats[i]);
			}
		} else {
			mon_stats[i] = 0;
		}
		$('.stats').eq(i).val(mon_stats[i]);
	});
});
</script>