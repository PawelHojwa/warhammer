function check_class() {
	var classes = $("#classes").val();
	var race = $("#race").val();
	var ww = parseInt($("#ww").val()) + parseInt($("#rww").val());
	var us = parseInt($("#us").val()) + parseInt($("#rus").val());
	var i = parseInt($("#i").val()) + parseInt($("#ri").val());
	var intel = parseInt($("#intel").val()) + parseInt($("#rint").val());
	var sw = parseInt($("#sw").val()) + parseInt($("#rsw").val());
	var path = "check_class";
	$("#classes option:selected").each(function() {
		$.post(path, {
			classes : classes,
			race : race
		}, function(data) {
			if (classes == 1 && ww < 30) {
				$("#demo").text("Klasa: " + data + " : Minimalne WW 30");
				return false;
			} else if (classes == 2 && us < 30) {
				$("#demo").text("Klasa: " + data + " : Minimalne US 30");
				return false;
			} else if (classes == 3 && i < 30 && race != 2) {
				$("#demo").text("Klasa: " + data + " : Minimalne I 30");
				return false;
			} else if (classes == 3 && race == 2 && i < 65) {
				$("#demo").text("Klasa: " + data + " : Minimalne I 65");
				return false;
			} else if (classes == 4 && (intel < 30 || sw < 30)) {
				$("#demo").text("Klasa: " + data + " : Minimalne Int 30 i SW 30");
				return false;
			} else
				$("#demo").text("");
		});
	});
}


$("document").ready(function() {
	$('#first').focus();

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
	//click

	$("#race").change(function() {
		var race = $("#race").val();
		var path = 'get_stat';
		$.post(path, {
			race : race
		}, function(data) {
			$.each(data, function(key, value) {
				$("#" + key).val(value);
			});
		});
		//post
	}).change();

	$("#classes").change(function() {
		check_class();
	}).change();


	
	var num = 96;
	$(window).bind('scroll', function() {
		if ($(window).scrollTop() > num) {
			$('.moveBar').addClass('fixed');
		} else {
			$('.moveBar').removeClass('fixed');
		}
	});
});
//ready

