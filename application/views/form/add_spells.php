<div class="container">
<?php
echo heading ($title, 3);
echo anchor('add_choose/show_options', 'Powrót');
echo "<p>Profesja: <span class='lead'>" . $profession_name . "</span></p>"; 
echo "<p class='moveBar'>Punkty do wydania: <span class='lead'>" . $amount . "</span></p>";
echo form_open('add_spells/add');
foreach ($spells as $key => $spell) {
	echo form_checkbox('spell[]', $key, FALSE, array('class' => 'spell'));
	echo form_label($spell);
	echo br();
}
echo form_hidden('exp', 0);
echo form_submit('btn', 'Wyślij', array('class' => 'btn btn-primary'));
?>
</div>
<p id="char_id"><?php echo $char_id; ?></p>
<script>
$('document').ready(function() {
	var am = $('.moveBar span').text();
	
	$('#char_id').hide();
	var char_id = $('#char_id').text();
	$.ajax({
		url: 'character_spells',
		data : {
			char_id : char_id
		},
		dataType: 'json',
		type : 'post',
		success : function(data) {
			$.each(data, function(key, value) {
				$('.spell[value="' + value + '"]').prop('checked', true);
				$('.spell[value="' + value + '"]').prop('disabled', true);
			});
			//each
		}	
	}); 
	console.log(am);
	$('.moveBar span').text(0 + "/" + am);
	$('.spell').click(function() {
		var len = $('input:checked:not(:disabled)').length;
		var exp = len * 100;
		if (len > am) {
			alert('Wykorzystałeś wszystkie punkty!');
			return false;
		} else {
			$('.moveBar span').text(len + "/" + am);
			$('input[name=exp]').text(exp);
		}
		if (len == am) {
		$('.moveBar').hide();
	} else {
		$('.moveBar').show();
	}
		console.log(len);
	});
	
});

</script>