<h2><?php echo $title; ?></h2>
<p>Udane dodanie do bazy</p>
<p>Imie postaci: <?php echo $name; ?></p>
<p>Wiek: <?php echo $age; ?></p>
<p>Profesja: <?php echo $profession; ?></p>
<p>Umiejętności:</p>
<ul>
<?php
foreach ($sk as $value)
{
	echo "<li>" . $value . "</li>";
}
?>
</ul>
<p>Sukces!!</p>
