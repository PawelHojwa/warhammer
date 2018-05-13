<ul>
<?php
echo "<p>Profesja: " . $profession_name . "</p>";
echo "<p>Umiejętności:</p>";
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
$('p').css({'text-decoration': 'underline', 'font-weight' : 'bold'});
</script>