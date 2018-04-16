<div class="container">
<?php
echo heading($title, 3);
echo anchor('admin_panel/add_items', '<- Powrót', array('title' => 'Powrót do panelu administracyjnego'));
echo br(2);
echo form_open('edit_panel/edit_item_info');
echo form_input('', $info['name'], array('id' => 'item-id', 'hidden' => 'hidden'));
echo form_input('name', $name['name'], array('placeholder' => 'Nazwa przedmiotu...'));
echo form_input('', $name['meele'], array('hidden' => 'hidden', 'id' => 'meele'));
echo form_input('', $name['ranged'], array('hidden' => 'hidden', 'id' => 'ranged'));
echo form_input('', $hand, array('hidden' => 'hidden', 'id' => 'hand'));
echo br();
echo form_label('Kategoria przedmiotu:', 'category');
echo form_dropdown('category', $types, $info['type'], array('id' => 'category'));
echo "<div id='hand-type'>";
echo "<p>Wybierze rodzaj broni:</p>";
echo form_radio('w_hand', 1, FALSE, array('class' => 'w-hand'));
echo form_label('Broń jednoręczna', 'w_hand');
echo form_radio('w_hand', 2, FALSE, array('class' => 'w-hand'));
echo form_label('Broń dwuręczna', 'w_hand');
echo "</div>";
echo "<div id='one-hand-type'>";
echo "<p>Typy broni:</p>";
foreach ($weapon_type as $row) {
	if ($row['type'] == 1) {
		echo form_radio('w_type', $row['id'], FALSE, array('class' => 'w-type'));
		echo form_label($row['name'], 'w_type');
		echo br();
	}
}
echo "</div>";
echo "<div id='two-hand-type'>";
echo "<p>Typy broni</p>";
foreach ($weapon_type as $row) {
	if ($row['type'] == 2) {
		echo form_radio('w_type', $row['id'], FALSE, array('class' => 'w-type'));
		echo form_label($row['name'], 'w_type');
		echo br();
	}
}
echo "</div>";
echo "<div id='ranged-weapon'>";
echo "<p>Broń strzelecka:</p>";
foreach ($weapon_type as $row) {
	if ($row['type'] == 3) {
		echo form_radio('w_type', $row['id'], FALSE, array('class' => 'w-type'));
		echo form_label($row['name'], 'w_type');
		echo br();
	}
}
echo "</div>";
echo "<div id='firearm'>";
echo "<p>Broń palna:</p>";
foreach ($weapon_type as $row) {
	if ($row['type'] == 4) {
		echo form_radio('w_type', $row['id'], FALSE, array('class' => 'w-type'));
		echo form_label($row['name'], 'w_type');
		echo br();
	}
}
echo "</div>";
echo "<div id='placement'>";
echo "<p>Umiejscowienie:</p>";
foreach ($placement as $k => $v) {
	echo form_checkbox('placement[]', $k, FALSE, array('class' => 'armour-box'));
	echo form_label($v, 'placement[]');
	echo br();
}
echo form_input('pp', $pp, array('placeholder' => 'Punkty pancerza...'));
echo "</div>";
echo br();
echo form_label('Cena:', 'price');
echo br();
if (!empty($price['zk'])) {
	echo form_input('zk', $price['zk'], array('size' => 3, 'placeholder' => 'zk...'));
} else {
	echo form_input('zk', '', array('size' => 3, 'placeholder' => 'zk...'));
}
if (!empty($price['sz'])) {
	echo form_input('sz', $price['sz'], array('size' => 3, 'placeholder' => 'sz...'));
} else {
	echo form_input('sz', '', array('size' => 3, 'placeholder' => 'sz...'));
}
if (!empty($price['p'])) {
	echo form_input('p', $price['p'], array('size' => 3, 'placeholder' => 'p...'));
} else {
	echo form_input('p', '', array('size' => 3, 'placeholder' => 'p...'));
}

echo br();
echo form_input('weight', $info['weight'], array('placeholder' => 'Waga...', 'size' => 3));
echo br();
echo form_label('Dostępność', 'availability');
echo form_dropdown('availability', $availability, $info['availability']);
echo br(2);
echo form_submit('sub_btn', 'Zmień', array('class' => 'btn btn-primary'));
echo form_close();
?>
</div>
<script>
$('document').ready(function() {
	$('label').css('margin-right', 15);
	$('#hand-type, #one-hand-type, #two-hand-type, #ranged-weapon, #firearm, #placement').hide();
	var w_type = 0;
	if ($('#meele').val() > 0) {
		w_type = $('#meele').val();
	} else if ($('#ranged').val() > 0) {
		w_type = $('#ranged').val();
	}
	console.log(w_type);
	$('#category').change(function() {
		var type = $('#category').val();
		var hand_t = $('#hand').val();
		if (type == 3) {
			$('#hand-type, #one-hand-type, #two-hand-type, #ranged-weapon, #firearm').hide();
			$('#placement').fadeIn(500);
		} else if (type == 4) {
			$('#one-hand-type, #two-hand-type, #ranged-weapon, #firearm, #placement').hide();
			$('#hand-type').fadeIn(500);
			$('.w-hand').change(function() {
				if (hand_t == 1) {
					$('.w-hand').eq(0).prop('checked', true);
				} else {
					$('.w-hand').eq(1).prop('checked', true);
				}
				var hand = $('.w-hand:checked').val();
				if (hand == 1) {
					$('#one-hand-type').fadeIn(500);
					$('#two-hand-type').hide();
				} else if (hand == 2) {
					$('#one-hand-type').hide();
					$('#two-hand-type').fadeIn(500);
				} 
			}).change();
		} else if (type == 5) {
			$('#hand-type, #one-hand-type, #two-hand-type, #firearm, #placement').hide();
			$('#ranged-weapon').fadeIn(500);
		} else if (type == 6) {
			$('#hand-type, #one-hand-type, #two-hand-type, #ranged-weapon, #placement').hide();
			$('#firearm').fadeIn(500);
		}
		$('.w-type').each(function(i) {
			if (w_type == $('.w-type').eq(i).val()) {
				$('.w-type').eq(i).prop('checked', true);
			}
		});
	}).change();
	
	var armour_id = $('#item-id').val();
	$.ajax({
		url : 'get_armour_placement',
		data : {
			armour : armour_id
		},
		dataType : 'json',
		type : 'post',
		success : function(data) {
			$.each(data, function(key, value) {
				$('.armour-box[value="' + value + '"]').prop('checked', true);
			});
		}
	});
});

</script>