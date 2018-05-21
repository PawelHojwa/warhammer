<div>
<p>Profesja: <span class="show-thing"><?php echo $profession_name?></span></p>
<p><span class="show-thing">Profesje wyjściowe:</span></p>
<?php
if (!empty($exit) && is_array($exit)) {
	echo "<ul class='show-ul'>";
	foreach ($exit as $row) {
		echo "<li>" . $row . "</li>";
	}
	echo "</ul>";
} else {
	echo "<p>Brak</p>";
}
?>
</div>
<script>
if ($('.show-ul li').eq(0).text() == "") {
	var txt = "Brak profesji wyjściowych";
	$('.show-ul li').eq(0).text(txt);
}
</script>