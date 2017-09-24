<html>
<?php
	include 'connection.php';
	session_start();
	error_reporting(E_ALL ^ E_NOTICE);
		$name= $_POST["name"];
		$pass= $_POST["password"];
		$email= $_POST["email"];
		$tname= $_POST["tname"];
		if($email==null or $pass==null or $name==null or $tname==null)
		{
			$_SESSION['signup_error'] = "You might not fulfil all the fields.please try again to sign up ";
			
			include 'index.html';
            		
		}
		else{
			$check_email_for_duplicates = mysql_query("select * from user where Email = '".$email."'");

			if(mysql_num_rows($check_email_for_duplicates) > 0) //Email address is unique within this system and must not be more than one
			{
				$_SESSION['duplicate_error'] = 'Sorry, the  email <b>'.$email.'</b> is already in use. Please enter a different email.';
			}
			else {
			 //some code
		 
					$sql1 = "INSERT INTO user(UserID,Name,Email,Password,TeamName)
					VALUES ('', '$name','$email','$pass','$tname')";
					$records=mysql_query("$sql1");
					echo" you have signed up successfully";
			}
			include 'index.html';
		}
				
			
	?>
</html>