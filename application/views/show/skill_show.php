<div class='container'>
<?php
echo heading($title, 1);
echo br();
echo anchor('home/index', '<- Powrót', ['class' => 'anchor']);
echo br();
?>
<div class="show-div"></div>
<div class="show-skill"></div>	
</div>
<script>
	$('document').ready(function() {
		$.get('get_skill', function(data) {
			$('.show-skill').html(data);
			$('.show-div').hide();
			$('.desc').click(function() {
				var i = $('.desc').index(this);
				var id = $('.hide').eq(i).text();
				$('.show-div').show().css({
					'left' : (window.innerWidth  - (1000 / 2)) / 2,
					'top' : 150,
					'min-width' : 500,
				});
				$('.show-div').load('/warhammer/index.php/show/skill_description?id=' + id);
				return false;
			});
			$('.show-div').click(function() {
				$('.show-div').hide();
			});
		});
});
</script>