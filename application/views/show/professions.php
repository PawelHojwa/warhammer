<div class="container">
	<?php
	echo heading($title, 1);
	echo anchor('home/index', 'Powrót');
	echo br(2);
	echo form_radio('adv', 0, true);
	echo form_label('Profesje podstawowe', 'adv');
	echo form_radio('adv', 1, false);
	echo form_label('Profesje zaawansowane', 'adv');
	?>
	<div class="show-professions"></div>
	<div class="show-div"></div>
</div>
<script>
	$('document').ready(function() {
		$('.show-div').hide();
		$('input:not(input:radio:first-of-type)').css('margin-left', 15);
		var iWidth = window.innerWidth;
		var iHeight = window.innerHeight;
		function calculate(x, y) {
			return (x / 2) - (y / 2);  
		}
		$('input:radio').change(function() {
			var currentVal = $('input:radio:checked').val();
			$.ajax({
				url : 'get_professions',
				data : {
					adv : currentVal
				},
				type : 'post',
				success : function(data) {
					$('.show-professions').html(data);
					$('th:not(th:first-child)').css({
						'width' : 35
					});
					$('td').css('padding', '0 5px');
					$('td:not(td:nth-child(2))').css('text-align', 'center');
					$('.skill-list').click(function() {
						var i = $('.skill-list').index(this);
						var profId = $('.hide').eq(i).text();
						$('.show-div').show();
						var divHeight = $('.show-skills').css('height');
						$('.show-div').css({
							'top' : calculate(iHeight, iHeight / 2),
							'left' : calculate(iWidth, 300)
						});
						$('.show-div').load('/index.php/show/prof_skills?id=' + profId);
						$('.show-div').click(function() {
							$('.show-div').hide();
						});
						return false;
					});
					$('.exit').click(function() {
						var i = $('.exit').index(this);
						var profId = $('.hide').eq(i).text();
						$('.show-div').show();
						$('.show-div').css({
							'top' : calculate(iHeight, iHeight / 2),
							'left' : calculate(iWidth, 300),
						});
						$('.show-div').load('/index.php/show/prof_exit?id=' + profId);
						$('body:not(.show-div)').click(function() {
							$('.show-div').hide();
						});
						return false;
					});
				}
			});
		}).change();
	});
</script>