<div class="container">
<?php
echo heading($title, 1);
echo anchor('add_choose/show_options', '<- Powrót', array('title' => 'Powrót do opcji rozwoju'));
echo br();
echo "<p>Imię postaci: <span class='lead'>" . $character_name . "</span></p>";
echo "<p>Obecna klasa: <span class='lead'>" . $class_name . "</span></p>";
echo "<p>Obecna profesja: <span class='lead'>" . $profession . "</span></p>";
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
echo br();
echo "<span id='profession'></span>";
echo br(2);
echo "<p>Twoje punkty doświadczenia:</p>";
echo form_input('', $exp, array('id' => 'char_exp', 'readonly' => 'readonly'));
echo form_input('exp','', array('id' => 'exp', 'hidden' => 'hidden'));
echo br(2);
echo form_submit('submit_btn', 'Wyślij', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$('document').ready(function() {
	$('label').css('margin-right', 10);
	var exp = 0;
	$('input:radio').change(function() {
		var c_class = $('#c_class').val();
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
		if (choose == 'c' || choose == c_class) {
			exp = 100;
		} else {
			exp = 200;
		}
		$('#exp').val(exp);
	}).change();
	$('form').submit(function() {
		var exp = $('#exp').val();
		var char_exp = $('#char_exp').val();
		if (char_exp < exp) {
			alert("Za mała ilość punktów doświadczenia by przejść na tę profesję.");
			return false;
		} else {
			return true;
		}
	});
});
</script>