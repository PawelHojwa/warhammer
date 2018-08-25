<ul>
<?php
echo "<p>Profesja: <span class='show-thing'>" . $profession_name . "</span></p>";
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