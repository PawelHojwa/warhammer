<div class="container">
<?php
echo heading($title, 3);
echo anchor('home/index', 'Powrót');
echo br(2);
echo form_dropdown('category', $monster, 1, array('id' => 'monster'));
echo br(2);
?>
<div id="result"></div>
</div>
<script>
$('document').ready(function() {
	$('#monster').change(function() {
		$('#monster option:selected').each(function() {
		var cat = $('#monster').val();
			$.ajax({
				url: 'get_monsters',
				type: 'post',
				data: {
					cat: cat
				},
				success : function(data) {
					$('#result').html(data);
				}
			});
		});
	}).change();
});
</script>
