<!DOCTYPE html>
<html>
<head>
	<title>Dating for superheroes</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1>Dating for superheroes</h1>
<a href="addnew.php">Opret ny</a>
<?php

// ensure that php errors are displayed
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


	// Include and initiate the database class (you only have to do this once)
	include('classes/database.php');
	$database = new Database;
	$database->connect();



	// Loop through all titles

	$superhero_dating = $database->query('SELECT * FROM super_heroes');
	foreach ($superhero_dating as $superhero_dating) {
?>
	<article>
		<h3><?php echo $superhero_dating['Name'];?> </h3>

		<p>
			<img height="250" width="200" src="<?php echo $superhero_dating['Picture'];?>">
		<p>Special power: <?php echo $superhero_dating['superpower'];?></p>
		<p>Age: <?php echo $superhero_dating['Age'];?></p>




	<a href="like.php?User_id=<?php echo $superhero_dating['User_id']; ?>">Likes <small><?php echo $superhero_dating['Likes'];?></small></a>
		</p>






		<p>Comment <?php  echo $superhero_dating['comment'];?></p>
<form class="" action="comment.php" method="post">
		<input type="text" name="commment" value="">
		<button type="submit" name="button">Post</button>
</form>
	</article>
	<?php
}
?>
</body>
</html>
