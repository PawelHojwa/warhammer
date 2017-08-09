<div class="container">
<?php
echo heading($title, 3);
echo anchor('home/index', 'Powrót');
echo br(2);
echo form_dropdown('category', $monster, 1, array('id' => 'monster'));
echo form_button('btn', 'Szukaj', array('class' => 'search-btn btn-primary', 'id' => 'search'));
echo form_input('monster_name', '', array('placeholder' => 'Nazwa potwora', 'id' => 'search_monster'));
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
	$('#search').click(function() {
		var name = $('input').val();
		$.ajax({
			url: 'search_monster',
			type: 'post',
			data: {
				monster: name
			},
			success: function(data) {
				$('#result').html(data);
			}
		});
	});
});
</script>
