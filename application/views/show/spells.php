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
		$('.types input:radio').change(function() {
			var type = $('.types input:radio:checked').val();
			var lvl = 0;
			if (type > 1) {
				$('.lvl').show();
				$('.lvl input:radio').change(function() {
					lvl = $('.lvl input:radio:checked').val();
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
									'left' : (window.innerWidth  - (1000 / 2)) / 2,
									'top' : 150,
									'min-width' : 500,
								});
								$('.show-div').load('/warhammer/index.php/show/spell_description?id=' + id);
								return false;
							});
							$('.show-div').click(function() {
								$('.show-div').hide();
							});
						}
					});
				}).change();
			} else {
				$('.lvl').hide();
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
							'left' : (window.innerWidth  - (1000 / 2)) / 2,
							'top' : 150,
							'min-width' : 500,
						});
						$('.show-div').load('/warhammer/index.php/show/spell_description?id=' + id);
						return false;
					});
					$('.show-div').click(function() {
						$('.show-div').hide();
					});
				}
			});
		});
	});
</script>
