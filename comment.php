<!DOCTYPE html>
<html>
<head>
	<title>processing</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php

	// check what is received through POST
	// var_dump($_POST); die();
	include('classes/database.php');
	$database = new Database;
	$database->connect();


	//- - - Add new movie - - -

	// First, prepare the SQL
	$sql = "INSERT INTO comments WHERE User_id = Comment_id (
							comment,
              )
			VALUES (?,?)";

	// Secondly, add values
	$values = array(
		$_POST['comment'],
    

	);

	// Call prepared function to execute the above
	$database->prepared($sql,$values);

?>
<p class="notice success">Brilliant! This was added to the database
	<a href="index.php" class="notice">Back</a>
</p>
</body>
</html>
