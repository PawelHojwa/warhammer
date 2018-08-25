<div class="container">
<?php
echo heading('Wyświetlanie szybkości', 4);
?>
<small><?php echo anchor(base_url(), 'Powrot'); ?></small>
<br>
<p>Wybierz wartość szybkości:</p>
<?php
//echo form_dropdown('speed', $speed, 1, array('id' => 'speed'));
for ($i = 1; $i <= 20; $i++) {
	echo form_radio('speed', $i, false, ['class' => 'speed']);
	echo form_label($i, 'speed');
}
?>
<div id="speed_table"></div>
<?php
?>
</div>

<script>
$('document').ready(function() {
	$('label').css('margin-right', 10);
	$('.speed').click(function() {
		console.log($('.speed:checked').val());
			var speed = $('.speed:checked').val();
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
});
</script>