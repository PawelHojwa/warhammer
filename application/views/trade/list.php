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
$('#quality').hide();
$('#trade').change(function() {
	$('#trade').each(function() {
		var list = $('#trade option:selected').val();
		$.ajax({
			url : 'get_trade_list',
			type : 'post',
			data : {
				trade : list
			},
			success : function(data){
				$('#result').html(data);
				if (list > 1 && list < 7) {
					$('#quality').show();
					$('input:radio').change(function() {
						var times = $('input:radio:checked').val();
						$.ajax({
							url : 'compute_price',
							type : 'post',
							data : {
								trade : list,
								radio : times
							},
							dataType : 'json',
							success : function (data) {
								$('.item-price').each(function(index) {
									$(this).text(data[index]);
								});
							}
						});
					}).change();
				} else {
					$('#quality').hide();
				}
			}
		});
		
	});
	
}).change();
	
	
});
</script>