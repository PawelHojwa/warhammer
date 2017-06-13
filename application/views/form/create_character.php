<h1><?php echo $title; ?></h1>
<h3>Witaj <?php echo $user; ?></h3>
<p>Twoje postacie:</p>
<?php
//$list = $char_names;
//$att = array('style' => 'list-style: none; padding: 0');
//echo ul($list, $att);
echo anchor('login/logout', "Wyloguj", array('style' => 'display: block;')) . "<br><br>";
echo form_open('create_player/create');
echo form_label('Imie: ', 'name');
echo form_input('name');
echo form_error('name', '<span>', '</span>') . "<br>";
echo form_label('Rasa: ', 'race'); 
echo form_dropdown('race',$race, 1,['id' => 'select']) . "<br>";
echo form_label('Płeć: ', 'gender');
echo form_dropdown('gender', $gender, 1) . "<br>";
echo form_label('Klasa: ', 'classes');
echo form_dropdown('classes', $classes, 1, ['id' => 'classes']) . "<br>";
echo form_label('Charakter: ', 'nature');
echo form_dropdown('nature', $nature,1 ) . "<br>";
echo form_label('Wiek: ', 'age');
echo form_label('Młody ', 'age');
echo form_radio(array('name' => 'age', 'value' => 1));
echo form_label('Stary ', 'age');
echo form_radio(array('name' => 'age', 'value' => 2));
echo form_input('age', '', ['size' => 2, 'id' => 'page', 'readonly' => 'readonly']);
echo form_error('age', '<span>', '</span>') . "<br>";
echo form_label('Wzrost: ', 'height');
echo form_input('height');
echo form_error('height', '<span>', '</span>') . "<br>";
echo form_label('Waga: ', 'weight');
echo form_input('weight');
echo form_error('weight', '<span>', '</span>') . "<br>";
echo form_label('Włosy: ', 'hair');
echo form_input('hair');
echo form_error('hair', '<span>', '</span>') . "<br>";
echo form_label('Oczy: ', 'eyes');
echo form_input('eyes');
echo form_error('eyes', '<span>', '</span>') . "<br>";
echo form_label('Opis: ', 'description');
echo form_input('description') . "<br>";

//losowe statystyki
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>Sz</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>WW</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>US</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>S</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>Wt</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>Żw</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>I</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>A</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>Zr</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>CP</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>Int</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>Op</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>SW</spam>";
echo "<spam style='display: inline-block; text-align: center; width: 47px; margin-right: 4px;'>Ogd</spam><br>";
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
echo form_input('rogd', '', ['size' => 2, 'id' => 'rogd', 'readonly' => 'readonly']) . "<br>"; //14

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
echo form_input('int', '', ['size' => 2, 'id' => 'intel', 'readonly' => 'readonly']); //11
echo form_input('op', '', ['size' => 2, 'id' => 'op', 'readonly' => 'readonly']); //12
echo form_input('sw', '', ['size' => 2, 'id' => 'sw', 'readonly' => 'readonly']); //13
echo form_input('ogd', '', ['size' => 2, 'id' => 'ogd', 'readonly' => 'readonly']) . "<br>"; //14
echo form_submit('submit', 'Stwórz');
echo form_close();
echo form_button('btn1', 'Generuj', ['id' => 'btn1']);
?>
<p id="demo"></p>


<script>
function check_class() {
		var classes = $("#classes").val();
		var race = $("#select").val();
		var ww = parseInt($("#ww").val()) + parseInt($("#rww").val());
		var us = parseInt($("#us").val()) + parseInt($("#rus").val());
		var i = parseInt($("#i").val()) + parseInt($("#ri").val());
		var intel = parseInt($("#intel").val()) + parseInt($("#rint").val());
		var sw = parseInt($("#sw").val()) + parseInt($("#rsw").val());
		var path = "http://localhost/warhammer/create_player/check_class";
		$("#classes option:selected").each(function(){
		  $.post(path, {classes: classes, race: race}, function(data){
			if (classes == 1 && ww < 30)
			{
				$("#demo").text("Klasa: " + data + " : Minimalne WW 30");
			}
			else if (classes == 2 && us < 30)
				$("#demo").text("Klasa: " + data + " : Minimalne US 30");
			else if (classes == 3 && i < 30 && race != 2)
				$("#demo").text("Klasa: " + data + " : Minimalne I 30");
			else if (classes == 3 && race == 2 && i < 65)
				$("#demo").text("Klasa: " + data + " : Minimalne I 65");
			else if (classes == 4 && (intel < 30 || sw < 30))
				$("#demo").text("Klasa: " + data + " : Minimalne Int 30 i SW 30");
			else
				$("#demo").text("");
			 });
		})
	}
$("document").ready(function() {
	

	$("#btn1").click(function() {
		var sz = Math.floor((Math.random() * 3) + 1);
		var ww = Math.floor(((Math.random() * 10) + 1) + Math.floor((Math.random() * 10) + 1));
		var us = Math.floor(((Math.random() * 10) + 1) + Math.floor((Math.random() * 10) + 1));
		var s = Math.floor((Math.random() * 3) + 1);
		var wt = Math.floor((Math.random() * 3) + 1);
		var zw = Math.floor((Math.random() * 3) + 1);
		var a = 0;
		var i = Math.floor(((Math.random() * 10) + 1) + Math.floor((Math.random() * 10) + 1));
		var zr = Math.floor(((Math.random() * 10) + 1) + Math.floor((Math.random() * 10) + 1));
		var cp = Math.floor(((Math.random() * 10) + 1) + Math.floor((Math.random() * 10) + 1));
		var intel = Math.floor(((Math.random() * 10) + 1) + Math.floor((Math.random() * 10) + 1));
		var op = Math.floor(((Math.random() * 10) + 1) + Math.floor((Math.random() * 10) + 1));
		var sw = Math.floor(((Math.random() * 10) + 1) + Math.floor((Math.random() * 10) + 1));
		var ogd = Math.floor(((Math.random() * 10) + 1) + Math.floor((Math.random() * 10) + 1));
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
		
		check_class();		
	});
	
	
}); //ready	
//liczenie wieku postaci
$("#select").change(function () {
	$( ":radio" ).on( "click", function() {
		var race = $("#select").val();
		var age = 0;
		var Age = $("input:radio:checked").val();
		var	path = 'http"//localhost/warhammer/create_player/get_race';
		$("#select:selected").each(function() {
		$("input:radio").each(function () {
			$.post(path, {race: race}, function() {	
			}) //post
			}); //radio each
		}); //each
				if (race == 1)
				{ 
					if (Age == 1)
					{
						for (var i = 0; i < 6; i++)
							age += Math.floor((Math.random() * 6) + 1);
						$("#page").val(age);
					}
					else
					{
						for (var i = 0; i < 10; i++)
							age += Math.floor((Math.random() * 6) + 1);
						$("#page").val(age);
					}
				}
				else if (race == 2)
				{
					if (Age == 1)
					{
						for (var i = 0; i < 10; i++)
							age += Math.floor((Math.random() * 10) + 1);
						$("#page").val(age);
					}
					else
					{
						for (var i = 0; i < 10; i++)
							age += Math.floor((Math.random() * 20) + 1);
						$("#page").val(age);
					}
				}
				else if (race == 3)
				{
					if (Age == 1)
					{
						for (var i = 0; i < 10; i++)
							age += Math.floor((Math.random() * 6) + 1);
						$("#page").val(age);
					}
					else
					{
						for (var i = 0; i < 10; i++)
							age += Math.floor((Math.random() * 12) + 1);
						$("#page").val(age);
					}
				}
				else if (race == 4)
				{
					if (Age == 1)
					{
						for (var i = 0; i < 9; i++)
							age += Math.floor((Math.random() * 12) + 1);
						$("#page").val(age);
					}
					else
					{
						for (var i = 0; i < 9; i++)
							age += Math.floor((Math.random() * 20) + 1);
						$("#page").val(age);
					}
				}
  }); //onclick
}).change(); //change 

$("#select").change(function () {
	var race = $("#select").val();
	var path = 'http://localhost/warhammer/create_player/get_stat';
  $.post(path, {race: race}, function(data) {
    $.each(data, function(key, value) {
    	$("#" + key).val(value);	
    });  	
  }); //post
}).change();

$("#classes").change(function(){
	check_class();

	/*var wor = $("#classes").val();
	var race = $("#select").val();
	var ww = parseInt($("#ww").val()) + parseInt($("#rww").val());
	var us = parseInt($("#us").val()) + parseInt($("#rus").val());
	var i = parseInt($("#i").val()) + parseInt($("#ri").val());
	var intel = parseInt($("#int").val()) + parseInt($("#rint").val());
	var sw = parseInt($("#sw").val()) + parseInt($("#rsw").val());
	var path = "http://localhost/warhammer/create_player/check_class";
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
	})*/
}).change();
</script>