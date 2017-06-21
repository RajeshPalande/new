<?PHP
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
  
mysql_select_db("plan", $con);

$user_id = $_REQUEST["Id"];
$q= "DELETE FROM user_details WHERE user_id ='$user_id'";

mysql_query($q);

header( 'Location: display.php' );	

mysql_close($con);
?>