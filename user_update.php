<?PHP
$con = mysql_connect("localhost","root","");
if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }
  
mysql_select_db("plan", $con);

$user_id = $_REQUEST["user_id"];
$user_name = $_REQUEST["user_name"];
$user_email = $_REQUEST["user_email"];
$user_number = $_REQUEST["user_number"];
$user_dob = $_REQUEST["user_dob"];
$gender = $_REQUEST["gender"];
$address = $_REQUEST["address"];

$q  = "update user_details SET user_name='$user_name',user_email='$user_email',user_number='$user_number',user_dob='$user_dob',gender='$gender',address='$address' WHERE user_id='$user_id'";

$query=mysql_query($q);

header( 'Location: display.php' ) ;	

mysql_close($con);
?>