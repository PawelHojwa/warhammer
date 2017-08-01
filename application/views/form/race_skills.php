<div class="container">
<?php 
echo $amount;
echo heading($title, 3); 
echo form_open('race_skills/choose_skills');
if ($amount > 1) {
	foreach ($skills as $skill) {
		if ($skill->options == 0) {
			echo $skill->skillName;
		}
	}
	echo br(2);
	echo "<p>Wybierze umiejętność</p>";
	foreach ($skills as $skill) {
		if ($skill -> options != 0) {
			echo form_radio('skill[1]', $skill -> skillid, false);
			echo form_label($skill -> skillName, '', array('style' => 'margin-right: 15px;'));
		}
	}
	$amount -= 2;
} else {
	foreach ($skills as $skill) {
		if ($skill->options == 0) {
			echo $skill->skillName;
		}
	}
	$amount--;
}

echo br(2);
echo form_submit('btn', 'Wyślij', array('class' => 'btn btn-primary'));
echo form_close();
$_SESSION['amount'] = $amount;
?>
</div>
