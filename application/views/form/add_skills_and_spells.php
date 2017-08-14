<div class="container">
<?php
echo "<p id='profession'>Profesja: <span class='lead'>" . $profName . "</span></p>";
echo "<p class='moveBar'>Punkty do wykorzystania: <span id='amounts' class='lead'>" . $amount . "</span></p>";
echo form_open('edit_skills/edit', array('id' => 'add_spell_skill'));
echo "<div class='show-spells'>";
echo "<p class='lead'>Czary</p>";
if (!empty($spells)) {
	foreach ($spells as $spell) {
		echo form_checkbox('spell[]', $spell['id'], FALSE, array('class' => 'spell'));
		echo form_label($spell['cast_name'], 'spell[]');
		echo br();
	}
}
echo "</div>";
echo "<div class='show_skills'>";
echo "<p class='lead text-center'>Umiejętności</p>";
foreach ($skills as $skill_id => $skill) {
	echo "<span style='display: inline-block; width: 320px; margin-bottom: 5px;'>" 
	. form_checkbox('skills[]', $skill_id, false, ['class' => 'skills']);
	echo form_label($skill, 'skills[]'). "</span>";
}

echo "</div>";
echo form_input('exp', 0);
echo form_submit('btn', 'Wyślij', array('class' => 'btn btn-primary'));
echo form_close();
echo validation_errors("<p class='alert alert-danger'>", "</p>")
?>
</div>
<p id="prof_id"><?php echo $prof_id; ?></p>
<p id="char_id"><?php echo $char_id; ?></p>
<script>
$('document').ready(function() {
	$('#prof_id').hide();
	$('#char_id').hide();
	var char_id = $('#char_id').text();
	var p_id = $('#prof_id').text();
	if (p_id != 69) {
		$('.show-spells').hide();
	} else {
		$('.show-spells').show();
		$.ajax({
			url: 'character_spells',
			type: 'post',
			data: {
				id: char_id
			},
			dataType: 'json',
			success : function(data) {
				$.each(data, function(key, value) {
					$('.spell[value="' + value + '"]').prop('checked', true);
					$('.spell[value="' + value + '"]').prop('disabled', true);
				});
				//each
			}	
		});
	}
	$.ajax({
		url: 'character_skills',
		type: 'post',
		data: {
			id: char_id
		},
		dataType: 'json',
		success : function(data) {
			$.each(data, function(key, value) {
				$('.skills[value="' + value + '"]').prop('checked', true);
				$('.skills[value="' + value + '"]').prop('disabled', true);
			});
			//each
		}	
	});
	
	var am = $('#amounts').text();
	var diff_exp;
	var counts = function() {
		var len = $('input:checked:not(:disabled)').length;
		if (len == am) {
			$('.moveBar').hide();
		} else {
			$('.moveBar').show();
		}
		if (len > am) {
			return false;
		}
		diff_exp = len * 100;
		$('#amounts').text(len + "/" + am);
		$('form input[name=exp]').val(diff_exp).hide();
	}
	counts();
	$('.skills, .spell').on('click', counts);
	
	var num = 25;
	$('.moveBar').css('top', '25px');
	$(window).bind('scroll', function() {
		
		if ($(window).scrollTop() > num) {
			$('.moveBar').addClass('fixed');
		} else {
			$('.moveBar').removeClass('fixed');
		}
	});
});
</script>