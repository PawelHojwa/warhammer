<?php
echo "<p class='show-thing'>Rasa: " . $race_name . "</p>";

	echo "<p class='show-thing'>Umiejętności:</p>";
	echo "<ul id='show'>";
	foreach ($skills as $skill) {
		echo "<li>" . $skill . "</li>";
	}
	echo "</ul>";

?>
<script>
$('document').ready(function() {
	$('#show').css({'margin' : 0, 'padding' : 0, 'list-style' : 'none'});
	$('.show-thing').css({'text-decoration': 'underline', 'font-weight' : 'bold'});
	if ($('#show li').eq(0).text() == "") {
		$('#show li').eq(0).text('Brak umiejętności');
	}
});
</script>