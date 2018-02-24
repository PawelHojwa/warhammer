<div class="container">
<?php
echo heading('Wybierz opcję do podwyższenia:', 3);
echo anchor('login/logout', 'Wyloguj');
echo br(2);
if ($profession_id == 69) {
	echo anchor('add_stats/add', $add_stats, array('class' => 'btn btn-primary anchor'));
	echo anchor('add_skill/add', $add_skill, array('class' => 'btn btn-primary anchor'));
	echo anchor('change_profession/change', $change_profession, array('class' => 'btn btn-primary anchor'));
	echo anchor('add_spells/add', $add_spell, array('class' => 'btn btn-primary anchor'));
} else {
	echo anchor('add_stats/add', $add_stats, array('class' => 'btn btn-primary anchor'));
	echo anchor('add_skill/add', $add_skill, array('class' => 'btn btn-primary anchor'));
	echo anchor('change_profession/change', $change_profession, array('class' => 'btn btn-primary anchor'));
}
?>
</div>