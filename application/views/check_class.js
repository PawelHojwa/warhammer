$("#classes").change(function(){
	var cl = $("#classes").val();
	var st = $("#ww") + $("#rww");
	var path = "http://localhost/warhammer/create_character/check_class";
	$.post(path, function(data){
		alert(data);
	});
});