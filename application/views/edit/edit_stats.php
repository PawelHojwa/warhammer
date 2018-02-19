<?php
echo heading($title, 3);
?>
<div class="container">
<?php
echo validation_errors("<p class='alert alert-danger'>", "</p>");
echo form_open('edit_panel/edit_stats');
echo form_input('',$raceID, array('id' => 'race-name', 'hidden' => 'hidden'));
echo form_input('', 'Sz', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'WW', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'US', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'S', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Wt', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Żw', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'I', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'A', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Zr', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'CP', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Int', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Op', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'SW', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('', 'Ogd', array('readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo br();
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo form_button('', '+1', array('class' => 'add'));
echo br();
echo form_input('sz', $sz, array('id' => 'sz','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('ww', $ww, array('id' => 'ww','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('us', $us, array('id' => 'us','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('s', $s, array('id' => 's','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('wt', $wt, array('id' => 'wt','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('zw', $zw, array('id' => 'zw','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('i', $i, array('id' => 'i','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('a', $a, array('id' => 'a','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('zr', $zr, array('id' => 'zr','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('cp', $cp, array('id' => 'cp','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('int', $intel, array('id' => 'intel','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('op', $op, array('id' => 'op','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('sw', $sw, array('id' => 'sw','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo form_input('ogd', $ogd, array('id' => 'ogd','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center stats'));
echo br();
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo form_button('', '-1', array('class' => 'diff'));
echo br();
echo form_input('rsz', '', array('id' => 'rsz','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rww', '', array('id' => 'rww','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rus', '', array('id' => 'rus','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rs', '', array('id' => 'rs','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rwt', '', array('id' => 'rwt','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rzw', '', array('id' => 'rzw','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('ri', '', array('id' => 'ri','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('ra', '', array('id' => 'ra','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rzr', '', array('id' => 'rzr','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rcp', '', array('id' => 'rcp','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rint', '', array('id' => 'rintel','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rop', '', array('id' => 'rop','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rsw', '', array('id' => 'rsw','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo form_input('rogd', '', array('id' => 'rogd','readonly' => 'readonly', 'size' => 2, 'class' => 'text-center'));
echo br(2);
echo form_submit('submit', 'Edytuj', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$('document').ready(function() {
	var width = $('.text-center').css('width');
	$('button').css('width', width);
	var race_id = $('#race-name').val();
	$.ajax({
				url : 'get_stat',
				type : 'post',
				data : {
					race : race_id
				},
				dataType : 'json',
				success : function(data) {
					$.each(data, function(key, value) {
						$('#r' + key).val(value);
					});
				}
			});
	var stats = [];
	$('.stats').each(function(x) {
		stats[x] = $('.stats').eq(x).val();
	});
	$('.add').click(function() {
		var index = $('.add').index(this);
		stats[index] = parseInt(stats[index]) + parseInt(1);
		$('.stats').eq(index).val(stats[index]);
	});
	$('.diff').click(function() {
		var index = $('.diff').index(this);
		stats[index] = parseInt(stats[index]) - parseInt(1);
		$('.stats').eq(index).val(stats[index]);
		if (stats[index] <= 0) {
			stats[index] = 0;
			$('.stats').eq(index).val(stats[index]);
		}
	});
});
</script>