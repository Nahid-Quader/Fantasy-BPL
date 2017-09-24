




<html>

<?php
mysql_connect('localhost','root','');
mysql_select_db("fantasibpl");
?>



<table width="600" border="2" cellspacing="1" >
					<tr>
					   
					   <th>Name</th>
					   <th>Speciality</th>
					   <th>Market Price</th>
					   
					</tr>
					   <?php
						
					     $sql="SELECT player.PlayerName, player.Speciality,player.MarketPrice FROM player 
	INNER JOIN team ON player.TeamId=team.Serial WHERE team.TeamName='". Dhaka ."'";
							$records=mysql_query("$sql");
							echo "$records";
							while ($row =mysql_fetch_assoc($records)) 
							{
								 
								 echo "<tr>";
								echo "<td>".$row['PlayerName']."</td>";
								echo "<td>".$row['Speciality']."</td>";
								echo "<td>".$row['MarketPrice']."</td>";
								echo "</tr>"; 
							}?>
						</table>
						
