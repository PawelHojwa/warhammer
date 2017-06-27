<div class="container">
<h1>Cennik</h1>
<p class="price_capt"><?php echo $capt_living; ?></p>
<table class="price_table">
<?php
echo "<tr>";
echo "<th>Nazwa</th>";
echo "<th>Cena</th>";
echo "<th>Obciążenie</th>";
echo "<th>Dostępność</th>";
foreach ($livings as $item) {
	echo "<tr>";
 	echo "<td>" . $item['nazwa'] . "</td>";
	echo "<td>" . $item['cena'] . "</td>";
	echo "<td>" . $item['obciazenie'] . "</td>";
	echo "<td>" . $item['dostepnosc'] . "</td>";
	echo "</tr>";
}
?>
</table>
<p class="price_capt"><?php echo $capt_clothes; ?></p>
<table class="price_table">
<?php
echo "<tr>";
echo "<th>Nazwa</th>";
echo "<th>Cena</th>";
echo "<th>Obciążenie</th>";
echo "<th>Dostępność</th>";
foreach ($clothes as $clothe) {
	echo "<tr>";
 	echo "<td>" . $clothe['nazwa'] . "</td>";
	echo "<td>" . $clothe['cena'] . "</td>";
	echo "<td>" . $clothe['obciazenie'] . "</td>";
	echo "<td>" . $clothe['dostepnosc'] . "</td>";
	echo "</tr>";
}
?>
</table>
<p class="price_capt"><?php echo $capt_armour; ?></p>
<table class="price_table">
<?php
echo "<tr>";
echo "<th>Nazwa</th>";
echo "<th>Cena</th>";
echo "<th>Obciążenie</th>";
echo "<th>Dostępność</th>";
foreach ($armours as $armour) {
	echo "<tr>";
 	echo "<td>" . $armour['nazwa'] . "</td>";
	echo "<td>" . $armour['cena'] . "</td>";
	echo "<td>" . $armour['obciazenie'] . "</td>";
	echo "<td>" . $armour['dostepnosc'] . "</td>";
	echo "</tr>";
}
?>
</table>
<p class="price_capt"><?php echo $capt_m_weapon; ?></p>
<table class="price_table">
<?php
echo "<tr>";
echo "<th>Nazwa</th>";
echo "<th>Cena</th>";
echo "<th>Obciążenie</th>";
echo "<th>Dostępność</th>";
foreach ($m_weapon as $weapon) {
	echo "<tr>";
 	echo "<td>" . $weapon['nazwa'] . "</td>";
	echo "<td>" . $weapon['cena'] . "</td>";
	echo "<td>" . $weapon['obciazenie'] . "</td>";
	echo "<td>" . $weapon['dostepnosc'] . "</td>";
	echo "</tr>";
}
?>
</table>
<p class="price_capt"><?php echo $capt_r_weapon; ?></p>
<table class="price_table">
<?php
echo "<tr>";
echo "<th>Nazwa</th>";
echo "<th>Cena</th>";
echo "<th>Obciążenie</th>";
echo "<th>Dostępność</th>";
foreach ($r_weapon as $weapon) {
	echo "<tr>";
 	echo "<td>" . $weapon['nazwa'] . "</td>";
	echo "<td>" . $weapon['cena'] . "</td>";
	echo "<td>" . $weapon['obciazenie'] . "</td>";
	echo "<td>" . $weapon['dostepnosc'] . "</td>";
	echo "</tr>";
}
?>
</table>
<p class="price_capt"><?php echo $capt_f_weapon; ?></p>
<table class="price_table">
<?php
echo "<tr>";
echo "<th>Nazwa</th>";
echo "<th>Cena</th>";
echo "<th>Obciążenie</th>";
echo "<th>Dostępność</th>";
foreach ($f_weapon as $weapon) {
	echo "<tr>";
 	echo "<td>" . $weapon['nazwa'] . "</td>";
	echo "<td>" . $weapon['cena'] . "</td>";
	echo "<td>" . $weapon['obciazenie'] . "</td>";
	echo "<td>" . $weapon['dostepnosc'] . "</td>";
	echo "</tr>";
}
?>
</table>
</div>