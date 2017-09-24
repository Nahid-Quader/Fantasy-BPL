<?php
	error_reporting(E_ALL ^ E_NOTICE);
	error_reporting(E_ALL ^ E_DEPRECATED);
	error_reporting(0);
mysql_connect('localhost','root','');
mysql_select_db("fantasibpl");
$email= $_POST["email"];
$pass= $_POST["password"];
$approved=0;
$success=0;
$ID = "";
/* setting up session variable,starting session */
    session_start();
	$_SESSION["email"] = "$email";	//setting variable to pass

if($email==null or $pass==null)
{
check();
}
else
{
	$approved=1;
}
function check()
{
		$_SESSION['check'] = "You might not fulfil all the fields.please try again to sign in ";
        include 'index.html';		
	
}
function unsuccessful()
{
	if($success==0)
	{
		$_SESSION['error'] = 'your username or password is not correct. Please try again';
	
	}
	include 'index.html';
}
if($approved==1)
{	
	$sql="SELECT UserID,Name from user where Email='".$email."' 
	AND password='".$pass."'";
	$records=mysql_query("$sql");
	while ($row = mysql_fetch_array($records)) 
	{
	  $ID .= $row['UserID'] . "\n";
	   $Fname .= $row['Name'] . "\n"; 
	}
	if($ID==NULL or $Fname==NULL)
	{
		unsuccessful();

	}
	else
	{
	
		
		 $_SESSION['welcome'] =  "$Fname";?>
		<?php
		$_SESSION["userkey"] = "$ID";
		?> 
		<?php   
		 include 'transfer.html'; 
	}
}
?>