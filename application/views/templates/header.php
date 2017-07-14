<!Doctype HTML>
<html land="pl">
<head>
	<meta charset="UTF-8">
	<title><?php echo $title; ?></title>
	
	<?php
		echo link_tag(base_url() . 'other/css/style.css');
		echo link_tag(base_url() . 'other/css/style_2.css');
		echo link_tag(base_url() . 'other/css/forms.css');
		echo link_tag('https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css');
	?>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src='<?php echo base_url() . 'other/js/js_functions.js'; ?>'></script>
</head>
<body>