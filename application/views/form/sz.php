<?php

if (isset($_POST['race']) === true && empty($_POST['race']) === false)
{
	
	$sql = "SELECT * FROM rasa WHERE raceID = " . $_POST['race'];
	$result = $db->query($sql);
	
	if ($result->num_rows > 0)
	{
		$row = $result->fetch_assoc();
		$sz = $row['sz'];
		 echo $sz;
	} 
	else
		echo "Błąd";
}