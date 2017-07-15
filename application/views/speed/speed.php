<div class="container">
<?php
echo heading('Wyświetlanie szybkości', 4);
?>
<small><?php echo anchor(base_url(), 'Powrot'); ?></small>
<br>
<p>Wybierz wartość szybkości:</p>
<?php
echo form_dropdown('speed', $speed, 1, array('id' => 'speed'));
?>
<div id="speed_table"></div>
<?php
?>
</div>

<script>
$('document').ready(function() {
	$('#speed').change(function() {
		$('#speed option:selected').each(function() {
			var speed = $('#speed').val();
			var path = 'choice_speed';
			$.ajax({
				url : path,
				type : "post",
				data : {
					choice : speed
				},
				success : function(data) {
					$('#speed_table').html(data);
				}
			});
		});
	}).change();
});
</script>