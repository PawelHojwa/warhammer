<?php
echo heading($subtitle, 4);
echo "<table>";
echo "<tr>";
echo "<th>Użytkownik</th><th>Imię postaci</th>";
echo "</tr>";
foreach ($chars as $char) {
	echo "<tr>";
	echo "<td>" . $char -> login . "</td><td>" . $char -> name . "</td>";
	echo "<td class='text-center'>" . anchor('show_char/page_1?id=' . $char -> id,  'Pokaż') . "</td>";
	echo "<td class='text-center'>" . anchor('edit_character/edit?id=' . $char -> id, 'Edytuj') . "</td>";
	echo "<td class='text-center'>" . anchor('delete/del_char?id=' . $char -> id, 'Usuń') . "</td>";
	echo "</tr>";
}
echo "</table>";
