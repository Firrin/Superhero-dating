<!DOCTYPE html>
<html>
<head>
	<title>Add new</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<?php
// Get all types from the database
	include('classes/database.php');
	$database = new Database;
	$database->connect();

	// Select all types
	$sql = "SELECT * FROM super_heroes";
	$types = $database->query($sql);
?>

  <form action="process.php" method="post">
  	<label for="Name">Name</label>
  	<input type="text" name="Name" placeholder="Batman">

  	<label for="superpower">superpower</label>
  	<textarea name="superpower"></textarea>

  	<label for="Picture">Image</label>
  	<input type="text" name="Picture" placeholder="absolute url to image">

  	<label for="Age">Age</label>
  	<input type="text" name="Age" placeholder="32">

  

  	<input type="submit" name="submit" value="Add">
  </form>
</body>
</html>
