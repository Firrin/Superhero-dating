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


	//- - - Add new movie - - -

// 	// First, prepare the SQL
// $sql = "UPDATE super_heroes
// SET Likes = Likes + 1
// WHERE super_heroes.User_id = 2";
// $sql = "INSERT INTO likes (Likes)
// 				VALUES ('Likes')";

//
// // First, prepare the SQL
//
// $heroName[]  = $_GET['User_id'];
//     $sql = 'UPDATE `likes` INNER JOIN `super_heroes` on likes.id=User.id SET likes.Likes=likes.Likes+1 WHERE super_heroes.Name = "'.$heroName[0].'";';
//     $types = $database->prepared($sql, $heroName);



	// // First, prepare the SQL

	$sql = "UPDATE `super_heroes` SET `Likes` = `Likes` + 1 WHERE User_id = " . htmlspecialchars($_GET["User_id"]);

	// function to execute the above
	$database->queryWithoutFetchAll($sql);

	header("Location: index.php");

	// Call prepared function to execute the above
	// $database->prepared($sql);






//
//  $sql = "INSERT INTO likes (Likes) VALUES (?)";
//
// // Secondly, add values
//  $values = array(
//    isset($_POST['Likes']),
//
//
// );
//
// // Call prepared function to execute the above
 //$database->prepared($sql,$values);







	// Secondly, add values


	// Call prepared function to execute the above


?>
<p class="notice success">Brilliant! This was added to the database
	<a href="index.php" class="notice">Back</a>
</p>
</body>
</html>
