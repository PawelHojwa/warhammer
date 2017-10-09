<?php
echo heading($subtitle, 4);
echo "<p>" . $added . "</p>";
echo form_open('admin_panel/add_class');
echo form_input('class_name', '', array('placeholder' => 'Nazwa klasy...'));
echo br(2);
?>
<div class="class-items">
<p class="lead">Ekwipunek:</p>
<?php
echo "<p>Broń jednoręczna:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 1) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo br();
echo "<p>Broń dwuręczna:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 2) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo br();
echo "<p>Broń strzelecka/palna:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 3) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo br();
echo "<p>Przedmioty codziennego użytku:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 4) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo br();
echo "<p>Uzbrojenie:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 5) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
echo br();
echo "<p>Zwierzęta:</p>";
foreach ($items as $item) {
	if ($item -> items_group_id == 6) {
		echo "<span>";
		echo form_checkbox('item[]', $item -> id, false);
		echo form_label($item -> item, 'item[]');
		echo "</span>";
	}
}
?>
</div>
<?php
echo form_submit('submit_btn', 'Dodaj', array('class' => 'btn btn-primary'));
echo validation_errors("<p class='alert alert-danger'", "</p>");
echo br(2);
?>
<div class='result'>
<?php
echo "<table class='class-table'>";
echo "<tr>";
echo "<th>Nazwa klasy</th><th></th>";
foreach ($classes as $row) {
	echo "<tr>";
	echo "<td>" . $row -> className . "</td>";
	echo "<td>" . anchor('delete/del_class?=' . $row -> classId, "Usuń") . "</td>";
	echo "</tr>";
}
echo "</table>";
?>
</div>
</div>
<script>
$('document').ready(function() {
	$('span').css({'width': 305, 'display' : 'inline-block'});
});
</script>