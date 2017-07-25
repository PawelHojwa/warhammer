<div class="container">
<?php
	echo "<small>" . anchor('login/logout', 'Wyloguj') . "</small>";
	echo br();
?>
	<div class="text-center">
  <?php
		echo br();
		echo "<small>" . anchor('show_char/page_1?id='.$id, 'Poprzednia strona') . "</small>";
		echo " | ";
		echo "<small>" . anchor('show_char_3/page_3', 'Następna strona') . "</small>";
		echo br(2);
	?>
	</div>
	<div id="mainPage">
		<div id="ramka_gora"></div>
		<div id="ramka_lewa"></div>
		<div id="ramka_prawa"></div>
		<div id="top_2">
			<table id="skill_2">
				<tr>
					<th>Umiejętności</th>
					<th>Umiejętności</th>
					<th>Umiejętności</th>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
			<table id="other_info">
				<tr>
					<td colspan="2"><span>Przeznaczenie: </span><?php echo $pp; ?></td>
				</tr>
				<tr>
					<td colspan="2"><span>Doświadczenie: </span><?php echo $exp; ?></td>
				</tr>
				<tr>
					<td colspan="2"><span>Rodzina: </span>
					<?php
					if ($family != "") {
						echo $family;
					} else {
						echo "brak";
					}
					?>
					</td>
				</tr>
				<tr>
					<td id="blesses"><span>Bogosławieństwo:</span></td>
					<td id="modifier"><span>Modyfikator:</span></td>
				</tr>
			</table>
		</div>
		<div id="middle_page_2">
			<table id="inventory">
				<tr>
					<th>Ekwipunek</th>
					<th>Miejsce:</th>
					<th>Obc:</th>
					<th>Ekwipunek</th>
					<th>Miejsce:</th>
					<th>Obc:</th>
					<th>Ekwipunek</th>
					<th>Miejsce:</th>
					<th>Obc:</th>
				</tr>
				<tr>
					<td class="inv text-top">
					<?php
					if (!empty($inventory)) {
						foreach ($inventory as $item) {
							if ($item['items_group_id'] == 4) {
								echo "<span class='shows'>" . $item['item'] . "</span>";
							}
						}
					} else {
						echo "";
					}
					?>
					</td>
					<td class="place"></td>
					<td class="obc text-top text-center">
					<?php
					if (!empty($inventory)) {
						foreach ($inventory as $item) {
							if ($item['items_group_id'] == 4) {
								echo "<span class='shows'>" . $item['weight'] . "</span>";
							}
						}
					} else {
						echo "";
					}
					?>
					</td>
					<td class="inv"></td>
					<td class="place"></td>
					<td class="obc"></td>
					<td class="inv"></td>
					<td class="place"></td>
					<td class="obc"></td>
				</tr>
			</table>
			<table id="inv_sum">
				<tr>
					<th>Plecak:</th>
					<td></td>
					<th>Broń</th>
					<td></td>
					<th>Pancerz:</th>
					<td></td>
					<th>Łącznie</th>
					<td></td>
				</tr>
			</table>
		</div>
		<div id="bottom_2">
			<div id="bottom_left_2">
			<?php
				echo "<table id='movement'>";
				echo "<tr>";
				echo "<th>Tempo ruchu</th>";
				echo "<th class='speed'>m/10s</th>";
				echo "<th class='speed'>m/min</th>";
				echo "<th class='speed'>km/h</th>";
				echo "</tr>";
				echo "<tr>";
				echo "<th>Ostrożnie</th>";
				foreach ($speed as $val) {
					echo "<td class='text-center'>" . $val['carefully'] . "</td>";
				}
				echo "</tr>";
				echo "<tr>";
				echo "<th>Normalnie</th>";
				foreach ($speed as $val) {
					echo "<td class='text-center'>" . $val['normal'] . "</td>";
				}
				echo "</tr>";
				echo "<tr>";
				echo "<th>Trucht</th>";
				foreach ($speed as $val) {
					echo "<td class='text-center'>" . $val['run'] * 0.75 . "</td>";
				}
				echo "</tr>";
				echo "<tr>";
				echo "<th>Biegiem</th>";
				foreach ($speed as $val) {
					echo "<td class='text-center'>" . $val['run'] . "</td>";
				}
				echo "</tr>";
				echo "</table>";
			?>
				<table id="tracking">
					<tr>
						<th></th>
						<th id="a">Podstawa</th>
						<th id="b">Umiejętność</th>
					</tr>
					<tr>
						<th>Wypatrywanie</th>
						<td class="text-center">
						<?php
							echo ceil(($i + $intel) / 2);
						?>
						</td>
						<td class='text-top text-left tracking'>
						<?php
						foreach ($skills as $skill) {
							if ($skill == "Ukrywanie się na wsi") {
								echo "<span class='text-top'>Ukrywanie się na wsi</span>";
							} else if ($skill == "Ukrywanie się w mieście") {
								echo "<span class='text-top'>Ukrywanie się w mieście</span>";
							} else if ($skill == "Bystry wzrok") {
								echo "<span class='text-top'>Bystry wzrok</span>";
							}
						}
						?>
						</td>
					</tr>
					<tr>
						<th>Ukrywanie się</th>
						<td class="text-center">
						<?php
							echo ceil(($op + $intel) / 2);
						?>
						</td>
						<td class='text-top text-left tracking'>
						<?php
						foreach ($skills as $skill) {
							if ($skill == "Ukrywanie się na wsi") {
								echo "<span class='text-top'>Ukrywanie się na wsi </span>";
							} else if ($skill == "Ukrywanie się w mieście") {
								echo "<span class='text-top'>Ukrywanie się w mieście </span>";
							} else if ($skill == "Cichy chód na wsi") {
								echo "<span class='text-top'>Cichy chód na wsi </span>";
							} else if ($skill == "Cichy chód w mieście") {
								echo "<span class='text-top'>Cichy chód w mieście </span>";
							}
						}
						?>
						</td>
					</tr>
					<tr>
						<th>Nasłuchiwanie</th>
						<td class="text-center">
						<?php
							echo ceil(($i + $intel) / 2);
						?>
						</td>
						<td class='text-top text-left tracking'>
						<?php
						foreach ($skills as $skill) {
							if ($skill == "Cichy chód się na wsi") {
								echo "<span class='text-top'>Cichy chód się na wsi </span>";
							} else if ($skill == "Cichy chód w mieście") {
								echo "<span class='text-top'>Cichy chód w mieście </span>";
							} else if ($skill == "Czuły słuch") {
								echo "<span class='text-top'>Czuły słuch </span>";
							}
						}
						?>
						</td>
					</tr>
					<tr>
						<th>Skradanie się</th>
						<td class="text-center">
						<?php
							echo ceil(($op + $intel) / 2);
						?>
						</td>
						<td class='text-top text-left tracking'>
						<?php
						foreach ($skills as $skill) {
							if ($skill == "Cichy chód na wsi") {
								echo "<span class='text-top'>Cichy chd na wsi</span>";
							} else if ($skill == "Cichy chód w mieście") {
								echo "<span class='text-top'>Cichy chód w mieście</span>";
							} else if ($skill == "Śledzenie") {
								echo "<span class='text-top'>Śledzenie</span>";
							}
						}
						?>
						</td>
					</tr>
				</table>
			</div>
			<div id="bottom_middle">
				<table id="range_of_motion">
					<tr>
						<th>Zasięg ruchu</th>
						<th>Krotki (Sz*4)</th>
						<th>Długi (Sz*8)</th>
						<th>Maks (Sz*16)</th>
					</tr>
					<tr>
						<th>Odległość (m)</th>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th>Modyfikator inicjatywy ataków</th>
						<td>-10</td>
						<td>-20</td>
						<td>-30</td>
					</tr>
					<tr>
						<th>Modyfikator ataków</th>
						<td>Bez zmian</td>
						<td>-1</td>
						<td>-2</td>
					</tr>
				</table>
				<table id="languages">
				 	<tr>
				 		<td><span>Znane języki: </span></td>
				 	</tr>
				</table>
				<table id="psyche_mutation">
					<tr>
						<td><span>Psychika: </span></td>
						<td><span>Obłęd:</span></td>
					</tr>
					<tr>
						<th>Mutacje:</th>
						<th>Ptk. mt:</th>
					</tr>
				</table>
			</div>
			<div id="bottom_right"></div>
		</div>
		<div id="ramka_dol"></div>
	</div>
	<div class="text-center">
  <?php
		echo br();
		echo "<small>" . anchor('show_char/page_1?id='.$id, 'Poprzednia strona') . "</small>";
		echo " | ";
		echo "<small>" . anchor('show_char_3/page_3', 'Następna strona') . "</small>";
	?>
	</div>
</div>
<p id="result"></p>
<script>
$('documnet').ready(function() {
	var list = $('.inv .shows');
	var a = [];
	var list2 = $('.obc .shows');
	list.each(function(index) {
		a[index] = $(this).css('height');
	});
	list2.each(function(index) {
		$(this).css('height', a[index]);
	});
});
</script>