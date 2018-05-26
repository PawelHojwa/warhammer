<ul>
<?php
echo "<p class='show-thing'>Profesja: " . $profession_name . "</p>";
echo "<p class='show-thing'>Umiejętności:</p>";
foreach ($skills as $row) {
	echo "<li>" . $row . "</li>"; 
}
?>
</ul>
<script>
$('ul').css({
	'list-style' : 'none',
	'padding' : 0,
	'margin' : 0
});
$('.show-thing').css({'text-decoration': 'underline', 'font-weight' : 'bold'});
</script>