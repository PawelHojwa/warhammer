<h1><?php echo $title; ?></h1>
<?php
echo form_open('characters/character');
echo form_label('Imie: ', 'name');
echo form_input('name') . "<br>";
echo form_error('name', '<p>', '</p>');
echo form_label('Rasa: ', 'race'); 
echo form_dropdown('race',$race, 1,['id' => 'select']) . "<br>";
echo form_label('Płeć: ', 'gender');
echo form_dropdown('gender', $gender, 1) . "<br>";
echo form_label('Klasa: ', 'classes');
echo form_dropdown('classes', $classes, 1, ['id' => 'classes']) . "<br>";
echo form_label('Charakter: ', 'nature');
echo form_dropdown('nature', $nature,1 ) . "<br>";
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

//losowe statystyki
echo form_input('rsz', '', ['size' => 2, 'id' => 'rsz', 'readonly' => 'readonly']); //1
echo form_input('rww', '', ['size' => 2, 'id' => 'rww', 'readonly' => 'readonly']); //2
echo form_input('rus', '', ['size' => 2, 'id' => 'rus', 'readonly' => 'readonly']); //3
echo form_input('rs', '', ['size' => 2, 'id' => 'rs', 'readonly' => 'readonly']); //4
echo form_input('rwt', '', ['size' => 2, 'id' => 'rwt', 'readonly' => 'readonly']); //5
echo form_input('rzw', '', ['size' => 2, 'id' => 'rzw', 'readonly' => 'readonly']); //6
echo form_input('ri', '', ['size' => 2, 'id' => 'ri', 'readonly' => 'readonly']); //7
echo form_input('ra', '', ['size' => 2, 'id' => 'ra', 'readonly' => 'readonly']); //8
echo form_input('rzr', '', ['size' => 2, 'id' => 'rzr', 'readonly' => 'readonly']); //9
echo form_input('rcp', '', ['size' => 2, 'id' => 'rcp', 'readonly' => 'readonly']); //10
echo form_input('rint', '', ['size' => 2, 'id' => 'rint', 'readonly' => 'readonly']); //11
echo form_input('rop', '', ['size' => 2, 'id' => 'rop', 'readonly' => 'readonly']); //12
echo form_input('rsw', '', ['size' => 2, 'id' => 'rsw', 'readonly' => 'readonly']); //13
echo form_input('rogd', '', ['size' => 2, 'id' => 'rogd ', 'readonly' => 'readonly']) . "<br>"; //14

//statystyki pobrane z bazy
echo form_input('sz', '', ['size' => 2, 'id' => 'sz', 'readonly' => 'readonly']); //1
echo form_input('ww', '', ['size' => 2, 'id' => 'ww', 'readonly' => 'readonly']); //2
echo form_input('us', '', ['size' => 2, 'id' => 'us', 'readonly' => 'readonly']); //3
echo form_input('s', '', ['size' => 2, 'id' => 's', 'readonly' => 'readonly']); //4
echo form_input('wt', '', ['size' => 2, 'id' => 'wt', 'readonly' => 'readonly']); //5
echo form_input('zw', '', ['size' => 2, 'id' => 'zw', 'readonly' => 'readonly']); //6
echo form_input('i', '', ['size' => 2, 'id' => 'i', 'readonly' => 'readonly']); //7
echo form_input('a', '', ['size' => 2, 'id' => 'a', 'readonly' => 'readonly']); //8
echo form_input('zr', '', ['size' => 2, 'id' => 'zr', 'readonly' => 'readonly']); //9
echo form_input('cp', '', ['size' => 2, 'id' => 'cp', 'readonly' => 'readonly']); //10
echo form_input('int', '', ['size' => 2, 'id' => 'int', 'readonly' => 'readonly']); //11
echo form_input('op', '', ['size' => 2, 'id' => 'op', 'readonly' => 'readonly']); //12
echo form_input('sw', '', ['size' => 2, 'id' => 'sw', 'readonly' => 'readonly']); //13
echo form_input('ogd', '', ['size' => 2, 'id' => 'ogd ', 'readonly' => 'readonly']) . "<br>"; //14
echo form_submit('submit', 'Stwórz');
echo form_close();
?>
<button id="btn1">Generuj</button>
<p id="demo"></p>


<script>
$("document").ready(function() {
	$("#btn1").click(function() {
		var sz = Math.floor((Math.random() * 3) + 1);
		var ww = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		var us = Math.floor(((Math.random() * 10) + 1) + ((Math.random() * 10) + 1));
		var s = Math.floor((Math.random() * 3) + 1);
		var wt = Math.floor((Math.random() * 3) + 1);
		var zw = Math.floor((Math.random() * 3) + 1);
		var a = 0;
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
		
		//$("#classes").change(function(){
			var wor = $("#classes").val();
			var race = $("#select").val();
			var ww = parseInt($("#ww").val()) + parseInt($("#rww").val());
			var us = parseInt($("#us").val()) + parseInt($("#rus").val());
			var i = parseInt($("#i").val()) + parseInt($("#ri").val());
			var intel = parseInt($("#int").val()) + parseInt($("#rint").val());
			var sw = parseInt($("#sw").val()) + parseInt($("#rsw").val());
			var path = "http://localhost/warhammer/create_character/check_class";
			$("#classes option:selected").each(function(){
			  $.post(path, {classes: wor, race: race}, function(data){
				if (wor == 1 && ww < 30)
				{
					$("#demo").text("Klasa: " + data + " : Minimalne WW 30");
					return false;
				}
				else if (wor == 2 && us < 30)
					$("#demo").text("Klasa: " + data + " : Minimalne US 30");
				else if (wor == 3 && i < 30 && race != 2)
					$("#demo").text("Klasa: " + data + " : Minimalne I 30");
				else if (wor == 3 && race == 2 && i < 65)
					$("#demo").text("Klasa: " + data + " : Minimalne I 65");
				else if (wor == 4 && intel < 30 && sw < 30)
					$("#demo").text("Klasa: " + data + " : Minimalne Int 30 i SW 30");
				else
					$("#demo").text("");
			  });
			})
		//}).change();
	});
}); //ready	

//1
$("#select").change(function () {
	var sz = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_sz';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: sz}, function(data) {
      	$("#sz").val(data);
      }); //post
    }); // each
}).change();

//2
$("#select").change(function () {
	var ww = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_ww';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: ww}, function(data) {
      	$("#ww").val(data);
      }); //post    
    }); // each    
}).change();

//3
$("#select").change(function () {
	var us = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_us';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: us}, function(data) {
      	$("#us").val(data);
      }); //post
    }); // each
}).change();

//4
$("#select").change(function () {
	var s = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_s';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: s}, function(data) {
      	$("#s").val(data);
      }); //post
    }); // each
}).change();

//5
$("#select").change(function () {
	var wt = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_wt';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: wt}, function(data) {
      	$("#wt").val(data);
      }); //post
    }); // each
}).change();

//6
$("#select").change(function () {
	var zw = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_zw';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: zw}, function(data) {
      	$("#zw").val(data);
      }); //post
    }); // each
}).change();

//7
$("#select").change(function () {
	var a = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_a';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: a}, function(data) {
      	$("#a").val(data);
      }); //post
    }); // each
}).change();


//8
$("#select").change(function () {
	var i = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_i';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: i}, function(data) {
      	$("#i").val(data);
      }); //post
    }); // each
}).change();

//9
$("#select").change(function () {
	var zr = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_zr';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: zr}, function(data) {
      	$("#zr").val(data);
      }); //post
    }); // each
}).change();

//10
$("#select").change(function () {
	var cp = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_cp';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: cp}, function(data) {
      	$("#cp").val(data);
      }); //post
    }); // each
}).change();

//11
$("#select").change(function () {
	var intel = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_int';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: intel}, function(data) {
      	$("#int").val(data);
      }); //post
    }); // each
}).change();

//12
$("#select").change(function () {
	var op = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_op';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: op}, function(data) {
      	$("#op").val(data);
      }); //post
    }); // each
}).change();

//13
$("#select").change(function () {
	var sw = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_sw';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: sw}, function(data) {
      	$("#sw").val(data);
      }); //post
    }); // each
}).change();

//14
$("#select").change(function () {
	var ogd = $("#select").val();
	var path = 'http://localhost/warhammer/create_character/get_ogd';
    $( "#select option:selected" ).each(function() {
      $.post(path, {race: ogd}, function(data) {
      	$("#ogd").val(data);
      }); //post
    }); // each
}).change();


$("#classes").change(function(){
	var wor = $("#classes").val();
	var race = $("#select").val();
	var ww = parseInt($("#ww").val()) + parseInt($("#rww").val());
	var us = parseInt($("#us").val()) + parseInt($("#rus").val());
	var i = parseInt($("#i").val()) + parseInt($("#ri").val());
	var intel = parseInt($("#int").val()) + parseInt($("#rint").val());
	var sw = parseInt($("#sw").val()) + parseInt($("#rsw").val());
	var path = "http://localhost/warhammer/create_character/check_class";
	$("#classes option:selected").each(function(){
	  $.post(path, {classes: wor, race: race}, function(data){
		if (wor == 1 && ww < 30)
		{
			$("#demo").text("Klasa: " + data + " : Minimalne WW 30");
			return false;
		}
		else if (wor == 2 && us < 30)
			$("#demo").text("Klasa: " + data + " : Minimalne US 30");
		else if (wor == 3 && i < 30 && race != 2)
			$("#demo").text("Klasa: " + data + " : Minimalne I 30");
		else if (wor == 3 && race == 2 && i < 65)
			$("#demo").text("Klasa: " + data + " : Minimalne I 65");
		else if (wor == 4 && intel < 30 && sw < 30)
			$("#demo").text("Klasa: " + data + " : Minimalne Int 30 i SW 30");
		else
			$("#demo").text("");
	  });
	})
}).change();
</script>