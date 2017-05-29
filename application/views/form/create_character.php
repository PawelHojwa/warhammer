<h1><?php echo $title; ?></h1>
<?php
echo form_open('characters/character');
echo form_label('Imie: ', 'name');
echo form_input('name') . "<br>";
echo form_error('name', '<p>', '</p>');
echo form_label('Rasa: ', 'race'); 
echo form_dropdown('race',$race, 1,['id' => 'select']). "<br>";
echo form_label('Płeć: ', 'gender');
echo form_dropdown('gender', $gender). "<br>";
echo form_label('Klasa: ', 'class');
echo form_dropdown('class', $classes). "<br>";
echo form_label('Charakter: ', 'nature');
echo form_dropdown('nature', $nature). "<br>";
echo form_label('Wiek: ', 'age');
echo form_input('age'). "<br>";
echo form_label('Wzrost: ', 'height');
echo form_input('height'). "<br>";
echo form_label('Waga: ', 'weight');
echo form_input('weight'). "<br>";
echo form_label('Włosy: ', 'hair');
echo form_input('hair'). "<br>";
echo form_label('Oczy: ', 'eyes');
echo form_input('eyes'). "<br>";
echo form_label('Opis: ', 'description');
echo form_input('description'). "<br>";
?>
<input type="text" id="rsz" readonly size="2" name="rsz">
<input type="text" id="rww" readonly size="2" name="rww">
<input type="text" id="rus" readonly size="2" name="rus">
<input type="text" id="rs" readonly size="2" name="rs">
<input type="text" id="rwt" readonly size="2" name="rwt">
<input type="text" id="rzw" readonly size="2" name="rzw">
<input type="text" id="ri" readonly size="2" name="ri">
<input type="text" id="ra" readonly size="2" name="ra">
<input type="text" id="rzr" readonly size="2" name="rzr">
<input type="text" id="rcp" readonly size="2" name="rcp">
<input type="text" id="rint" readonly size="2" name="rint">
<input type="text" id="rop" readonly size="2" name="rop">
<input type="text" id="rsw" readonly size="2" name="rsw">
<input type="text" id="rogd" readonly size="2" name="rogd">
<br>
<input type="text" name="sz" value="<?php echo $sz; ?>" readonly size="2" id="sz">
<span id="sz"></span>
<span id="ww"></span>
<span id="us"></span>
<span id="s"></span>
<span id="wt"></span>
<span id="zw"></span>
<span id="i"></span>
<span id="a"></span>
<span id="zr"></span>
<span id="cp"></span>
<span id="int"></span>
<span id="op"></span>
<span id="sw"></span>
<span id="ogd"></span><br>
<?php echo form_submit('submit', 'Stwórz') ?>
</form>
<button id="btn1">Generuj</button>


<script>
$("document").ready(function() {
	
	$("#btn1").click(function() {
		var sz = Math.floor((Math.random() * 3) + 1);
		var ww = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		var us = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		var s = Math.floor((Math.random() * 3) + 1);
		var wt = Math.floor((Math.random() * 3) + 1);
		var zw = Math.floor((Math.random() * 3) + 1);
		var a = 1;
		var i = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		var zr = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		var cp = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		var intel = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		var op = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		var sw = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		var ogd = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		$("#rsz").val(sz);
		$("#rww").val(ww);
		$("#rus").val(us);
		$("#rs").val(s);
		$("#rwt").val(wt);
		$("#rzw").val(zw);
		$("#ra").val(a);
		$("#ri").val(i);
		$("#rzr").val(zr);
		$("#rcp").val(cp);
		$("#rint").val(intel);
		$("#rop").val(op);
		$("#rsw").val(sw);
		$("#rogd").val(ogd);
	});
}); //ready	
	$( "#select" ).change(function () {
	var sz = $("select").val();
    $( "#select option:selected" ).each(function() {
      //$.post('../models/form_model.php', {race: sz}, function(data) {
      	$("#sz").val(sz);
      //}); //post
      
    }); // each
    
  }).change();

/*$("document").ready(function() {
	$( "select" ).change(function () {
	var ww = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/ww.php', {race: ww}, function(data) {
      	$("#ww").html ('<input type="text" value="' + data + 
      	'" name="ww" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var us = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/us.php', {race: us}, function(data) {
      	$("#us").html ('<input type="text" value="' + data + 
      	'" name="us" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var s = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/s.php', {race: s}, function(data) {
      	$("#s").html ('<input type="text" value="' + data + 
      	'" name="s" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var wt = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('warhammer/views/charachters/stats/wt.php', {race: wt}, function(data) {
      	$("#wt").html ('<input type="text" value="' + data + 
      	'" name="wt" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var zw = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/zw.php', {race: zw}, function(data) {
      	$("#zw").html ('<input type="text" value="' + data + 
      	'" name="zw" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var i = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/i.php', {race: i}, function(data) {
      	$("#i").html ('<input type="text" value="' + data + 
      	'" name="i" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var a = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/a.php', {race: a}, function(data) {
      	$("#a").html ('<input type="text" value="' + data + 
      	'" name="a" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var zr = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/zr.php', {race: zr}, function(data) {
      	$("#zr").html ('<input type="text" value="' + data + 
      	'" name="zr" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var cp = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/cp.php', {race: cp}, function(data) {
      	$("#cp").html ('<input type="text" value="' + data + 
      	'" name="cp" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var intel = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/int.php', {race: intel}, function(data) {
      	$("#int").html ('<input type="text" value="' + data + 
      	'" name="intel" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var op = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/op.php', {race: op}, function(data) {
      	$("#op").html ('<input type="text" value="' + data + 
      	'" name="op" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var sw = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/sw.php', {race: sw}, function(data) {
      	$("#sw").html ('<input type="text" value="' + data + 
      	'" name="sw" readonly size="2">');
      });
    });
  }).change();
});

$("document").ready(function() {
	$( "select" ).change(function () {
	var ogd = $("select").val();
    $( "select option:selected" ).each(function() {
      $.post('stats/ogd.php', {race: ogd}, function(data) {
      	$("#ogd").html ('<input type="text" value="' + data + 
      	'" name="ogd" readonly size="2">');
      });
    });
  }).change();
});*/
</script>