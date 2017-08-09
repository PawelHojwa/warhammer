<div class="container">
	<h1><?php echo $title; ?></h1>
	<small><?php echo anchor(base_url(), 'Powrót'); ?></small>
	<?php
		
		echo br(2);
		echo form_dropdown('t_list', $trade_list, 1, array('id' => 'trade'));
		echo br(2);	
	?>
	<p>1 zk = 20/- = 240 p</p>
	<p id="demo"></p>
	<div id="quality">
	<?php
		echo form_radio(array('name' => 'quality', 'value' => 0.5));
		echo form_label('Niska jakość','', array('class' => 'trade-radio'));
		echo form_radio(array('name' => 'quality', 'value' => 1, 'checked' => TRUE));
		echo form_label('Zwykła jakość','', array('class' => 'trade-radio'));
		echo form_radio(array('name' => 'quality', 'value' => 3));
		echo form_label('Dobra jakość','', array('class' => 'trade-radio'));
		echo form_radio(array('name' => 'quality', 'value' => 10));
		echo form_label('Najwyższa jakość','', array('class' => 'trade-radio'));
	?>
	</div>
	<div id="result"></div>
</div>
<script>
$('document').ready(function() {
	$('input:radio').change(function() {
		$('input:radio').click(function() {
			var radio = $('input:radio:checked').val();
			
			$('#trade').change(function() {
				$('#trade option:selected').each(function() {
				
					var trade = $('#trade').val();
					var path = 'get_trade_list';
					if (trade > 1 && trade < 7) {
						$('input:radio').prop('disabled', false);
						
					} else {
						$('input:radio').prop('disabled', true);
					}
					$.ajax({
						url : path,
						type : "post",
						data : {
							trade : trade,
							radio : radio
						},
						success : function(data) {
							$('#result').html(data);
						}
					});
				});
			}).change();
			
		});
	});
	
	
});
</script>