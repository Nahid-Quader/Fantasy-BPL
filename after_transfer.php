<!DOCTYPE html>
<html lang="en">
<?php
error_reporting(E_ALL ^ E_NOTICE);
error_reporting(0);
mysql_connect('localhost','root','');
mysql_select_db("fantasibpl");
?>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<title>Fantasy BPL</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<style>
	.navbar{
		margin-bottom: 0;
		border-radius: 0;
	}
	.footer{
		background-color: black;
	}
	
	</style>

</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Fantasy BPL</a>
			</div><!-- /.navbar-header -->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="#">Home</a></li>
					<li><a href="#">My Team</a></li>
					<li><a href="#">Points</a></li>
					<li class="active"><a href="#">Transfer <span class="sr-only">(current)</span></a></li>
					<li><a href="#">League</a></li>
					<li><a href="#">Rules</a></li>
					<li><a href="#">Prize</a></li>
					<li><a href="#">Stat</a></li>
					<li><a href="#">Log Out</a></li>
				</ul>
				
					
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container -->
	</nav>
	<div class="container">
		<div class="welcome">
			<h1 class="page-header">Welcome <small> to the fantasy game of BPL!</small></h1>	
			<p class="lead">Transfers</p>
		</div>
		<hr>
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="panel panel-default">
  <!-- Default panel contents -->
 

  <!-- Table -->
 						 <table class="table">
    						<tr>
							   <th>Free Transfer</th>
							   <th>Cost</th>
							   <th>Bank</th>
							</tr>
							<tr>
							    <td>here is free one</td>
							    <td>give cost</td>
							    <td>amount in bank</td>
							</tr>

  						</table>
						
					</div>
					<div class="panel panel-default">
  <!-- Default panel contents -->
  						<div class="panel-heading">My Team
  						</div>

  <!-- Table -->
 						<table class="table">
    						<tr>
							   <th>Player No.</th>
							   <th>Player Name</th>
							   <th>Team Name</th>
							</tr>
							<tr>
							    <td>Alfreds Futterkiste</td>
							    <td>Maria Anders</td>
							    <td>Germany</td>
							</tr>
							  
  						</table>
					</div>

				</div>


			<!-- dropdown in right side-->	
				<div class="col-md-4">
					<p>Players</p>
					
					<?php
					if (isset($_POST['team']))
					{
						 
						?>
						<table width="450" border="2" cellspacing="1" >
					<tr>
					   
					   <th>Name</th>
					   <th>Speciality</th>
					   <th>Market price</th>
					    <th>Add Player</th>
					</tr>
					   <?php
						$name= $_POST["team"];
					     $sql="SELECT player.PlayerID,player.PlayerName, player.Speciality,player.MarketPrice FROM player INNER JOIN team ON player.TeamId=team.Serial 
	WHERE team.TeamName='".$name."'";
							$records=mysql_query("$sql");
							while ($row =mysql_fetch_assoc($records)) 
							{
								$pid .= $row['PlayerID'] . "\n";
								echo "<tr>";
								echo "<td>".$row['PlayerName']."</td>";
								echo "<td>".$row['Speciality']."</td>";
								echo "<td>".$row['MarketPrice']."</td>";?>
								<td><input type="checkbox" name=<?php echo "$pid"; ?> />    &nbsp;   </td>
								<?php
								echo "</tr>";
							}?>
						</table> <?php
					}
					else
					{
						$t  .=$_POST['team']."\n";
						echo "$t";
						echo "painai";
					}
					?>
					
						 
				</div>	
			</div>	
		</div>			

	<footer>

		<div class="panel-footer">
			<div class=container>
				<div class="col-md-4"  style="list-style-type:none">
					
					<li><a href="#">Home</a></li>
					<li><a href="#">My Team</a></li>
					<li><a href="#">Points</a></li>
					<li class="active"><a href="#">Transfers</a></li>
					<li><a href="#">League</a></li>
					<li><a href="#">Rules</a></li>
					<li><a href="#">Prize</a></li>
					<li><a href="#">Stat</a></li>
					<li><a href="#">Log out</a></li>

				</div>
				<div class="col-md-4">
					<p>Contact Us </p>
					<p>Email: ateeqzwindow@gmail.com</p>
					<p>Address: 123,asdasd,Dhaka,Bangladesh</p>
				</div>
				<div class="col-md-4">
					<p><a href="#">Social </p>
					<p><a href="#">Facebook</p>
					<p><a href="#">Twitter</p>
					<p>Copyright &copy; ANTStech</p>
				</div>
			</div>
		</div>
		</footer>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
		</body>
		</html>