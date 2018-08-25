<div class="container">
	<?php
	echo heading($title, 1);
	echo br();
	echo anchor('home/index', 'Powrót', ['class' => 'anchor', 'title' => 'Powrót do strony głównej']);
	echo br(2);
	?>
	<div class="types">
	<?php
	foreach ($types as $k => $v) {
		echo form_radio('spell', $k, false);
		echo form_label($v, 'spell');
	}
	?>
	</div>
	<div class="lvl">
	<?php
	foreach ($lvl as $k => $v) {
		echo form_radio('lvl', $k, false);
		echo form_label($v, 'lvl');
	}
	?>
	</div>
	<div class="show-spells"></div>
	<p></p>
	<div class="show-div"></div>
</div>
<script>
	$('document').ready(function() {
		$('.lvl').hide();
		$('.show-div').hide();
		$('label').css('margin-right', 10);
		$('.types input:radio, .lvl input:radio').change(function() {
			var type = $('.types input:radio:checked').val();
			var lvl = $('.lvl input:radio:checked').val();
			if (type == 1) {
				$('.lvl').hide();
				lvl = 0;
			} else {
				$('.lvl').show();
			}
			$.ajax({
				url : 'get_spells',
				type : 'post',
				data : {
					spell_cat : type,
					spell_lvl : lvl
				},
				success : function(data) {
					$('.show-spells').html(data);
					$('.spell-desc').click(function() {
						var i = $('.spell-desc').index(this);
						var id = $('.hide').eq(i).text();
						$('.show-div').show().css({
							'left' : (window.innerWidth - 600) / 2,
							'top' : 150,
							'width' : 600,
						});
						$('.show-div').load('/index.php/show/spell_description?id=' + id);
						return false;
					}); //click function
					$('.show-div').click(function() {
						$('.show-div').hide();
					}); // click function
				} // ajax success 
			}); // ajax
		}); // change function
	});
</script>
