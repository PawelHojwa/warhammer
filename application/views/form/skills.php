<div class="container">
<?php echo heading($title, 1); ?>
<p class="lead">Imie postaci: <?php echo $player_name; ?></p>
<p class="moveBar">Wybrano umiejętności: <span id="amount" class="lead"><?php echo $amount; ?></span></p>
<?php
echo form_open('player_skills/skill',['id' => 'skill_form']);
echo '<input name="p_id" value="' . $id .  '" id="p_id" hidden>';
echo form_label('Profesje: ', 'prof');
echo form_dropdown('prof', $profession, 1 , ['id' => 'profession']) . "<br>";
echo form_label('Umiejętności: ', 'skills') . "<br>";
foreach ($skills as $skill_id => $skill) {
	echo "<span style='display: inline-block; width: 320px; margin-bottom: 5px;'>" 
	. form_checkbox('skills[]', $skill_id, false, ['class' => 'skill']);
	echo form_label($skill, 'skills[]'). "</span>";
}

echo "<br>";
echo form_submit('btn', 'Wyślij', ['class' => 'btn btn-primary']);

echo form_close();

?>
</div>
<script>
$('document').ready(function() {
	$('#profession').change(function() {
	$('.skill').prop('checked', false);
	$('.skill').prop('disabled', false);
	$("input[type='text']").remove();
	var prof_id = $(this).val();
	var id = $('#p_id').val();
	var skill_name = $('label').text();
	$.ajax({
		url : 'get_prof',
		type : 'post',
		data : {
			prof : prof_id,
			id : id
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(key, value) {
				$('.skill[value="' + value + '"]').prop('checked', true);
		$('.skill[value="' + value + '"]').prop('disabled', true);
		$('form').add("<input type='text' value='" + value + "' hidden name='s[]'>").appendTo('form');
		});
		//each
			}
		});
	//ajax
	}).change();
	//change
	
	var am = $('#amount').text();
	var boxCount = function() {
		var len = $('.skill:checked:not(:disabled)').length;
		/*if (len > am) {
			alert('Wybrałeś wszystkie możliwe umiejętności!!');
			return false;
		}*/
		$('#amount').text(len + "/" + am);
		if (am == len) {
			$('.moveBar').hide();
		} else {
			$('.moveBar').show();
		}
	};
	boxCount();
	$('.skill').on('click', boxCount);
	$('#skill_form').submit(function() {
		var len = $('.skill:checked:not(:disabled)').length;
		var deff = am - len;
		if (len == am)
			return true;
		else {
			alert("Pozostało do wybrania: " + deff + (deff === 1? " umiejętność": " umiejętności"));
			return false;
		}
	});
	
});

</script>
