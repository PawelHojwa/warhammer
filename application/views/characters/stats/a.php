<?php
include('../formObjects.php');

if (isset($_POST['race']) === true && empty($_POST['race']) === false)
{
	
	$sql = "SELECT * FROM rasa WHERE raceID = " . $_POST['race'];
	$result = $db->execute($sql);
	
	if ($result->num_rows > 0)
	{
		$row = $result->fetch_assoc();
		$a = $row['a'];
		 echo $a;
	} 
	else
		echo "Błąd";
}