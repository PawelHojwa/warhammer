<div class="container">
<h1><?php echo $title; ?></h1>
<small><?php echo anchor(base_url(), 'Powrót'); ?></small>
<?php
	
	echo br(2);
	echo form_dropdown('t_list', $trade_list, 1, array('id' => 'trade'));
	echo br(2);	
?>
<p>1 zk = 20/- = 240 p</p>
<div id="result"></div>
</div>
<script>
$('document').ready(function() {
	$('#trade').change(function() {
		$('#trade option:selected').each(function() {
			var trade = $('#trade').val();
			var path = 'get_trade_list';
			$.ajax({
				url : path,
				type : "post",
				data : {
					trade : trade
				},
				success : function(data) {
					$('#result').html(data);
				}
			});
		});
	}).change();
});
</script>