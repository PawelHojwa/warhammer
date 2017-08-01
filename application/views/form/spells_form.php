<div class="container">
<?php
echo heading($sub_title, 3);
?>
<p class="moveBar">Wybrano czarów: <span id="spells" class="lead"><?php echo $amount; ?></span></p>
<?php
echo br(2);
echo form_open('spells/spell_form', array('id' => 'spell_form'));
foreach ($spells as $spell) {
	echo form_checkbox('spell[]', $spell['id'], FALSE, array('class' => 'spell'));
	echo form_label($spell['cast_name'], 'spell');
	echo br();
}
echo form_submit('btn', 'Wyślij', array('class' => 'btn btn-primary'));
echo form_close();
echo br();
echo validation_errors('<spam class="alert alert-danger">','</spam>')
?>
</div>
<script>
var am = $('#spells').text();
var boxCount = function() {
	var len = $('.spell:checked:not(:disabled)').length;
	console.log(len);
	if (len > am) {
		
		alert('Wybrałeś wszystkie możliwe czary!!');
		return false;
	}
	$('#spells').text(len + "/" + am);
};
boxCount();
$('.spell').on('click', boxCount);
$('#spell_form').submit(function() {
	var len = $('.spell:checked:not(:disabled)').length;
	var deff = am - len;
	if (len == am)
		return true;
	else {
		alert("Pozostało do wybrania: " + deff + (deff === 1? " czar": " czary"));
		return false;
	}
});
</script>