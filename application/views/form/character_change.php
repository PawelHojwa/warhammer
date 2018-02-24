<div class="container">
<?php
echo heading($title, 1);
echo br();
echo "<p>Imię postaci: <span class='lead'>" . $character_name . "</span></p>";
echo "<p>Obecna klasa: <span class='lead'>" . $class_name . "</span></p>";
echo "<p>Obecna profesja: <span class='lead'>" . $profession . "</span></p>";
echo anchor('add_choose/show_options', '<- Powrót', array('title' => 'Powrót do opcji rozwoju'));
echo br();
echo form_open('change_profession/change');
echo form_input('', $class_id, array('hidden' => 'hidden', 'id' => 'c_class'));
echo form_input('', $profession_id, array('hidden' => 'hidden', 'id' => 'c_prof'));
echo "<span>";
echo form_radio('choose', 'c', true);
echo form_label('Profesje wyjściowe', 'choose');
foreach ($classes as $key => $value) {
	echo "<span>";
	echo form_radio('choose', $key, false);
	echo form_label($value, 'choose');
	echo "</span>";
}
echo "<span id='profession'></span>";
echo br(2);
echo form_submit('submit_btn', 'Wyślij', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$('document').ready(function() {
	$('span').not('.lead, #profession').css({
		'width' : 150,
		'display' : 'block'
	});
	$('#profession').css('width', 300);
	//$('.lead').css('display', 'inline');
	var c_class = $('#c_class').val();
	$('input:radio').change(function() {
		var choose = $('input:radio:checked').val();
		var c_prof = $('#c_prof').val();
		$.ajax({
			url : 'next_profession',
			type : 'post',
			data : {
				classes : choose,
				c_prof : c_prof
			},
			success : function(data) {
				$('#profession').html(data)
			} 
		});
	}).change();
});
</script>