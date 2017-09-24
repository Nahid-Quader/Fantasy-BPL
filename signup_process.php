<html>
	<head>
		<title>  project  </title>
	</head>
	<body>
<?php

error_reporting(E_ALL ^ E_NOTICE);
if($_POST['1'])
{
	include 'signin_process.php';
}
else
{
   ?>
	<form action="usersignup.php" method="post">
  		    Your Name: <input type="text" name="name">*<br>
			Your Team Name:<input type="text" name="tname">*<br>
			Email: <input type="text" name="email">*<br>
			Password: <input type="text" name="password">*<br>
			<input type="submit" value="Signup">
		</form>
	<?php
}
?>
</body>
</html>