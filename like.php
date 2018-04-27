<!DOCTYPE html>
<html>
<head>
	<title>processing</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php

	// check what is received through POST
	 //var_dump($_POST); die();
	include('classes/database.php');
	$database = new Database;
	$database->connect();



	$sql = "UPDATE `super_heroes` SET `Likes` = `Likes` + 1 WHERE User_id = " . htmlspecialchars($_GET["User_id"]);

	// function to execute the above
	$database->queryWithoutFetchAll($sql);

	header("Location: index.php");










?>
<p class="notice success">Brilliant! This was added to the database
	<a href="index.php" class="notice">Back</a>
</p>
</body>
</html>
