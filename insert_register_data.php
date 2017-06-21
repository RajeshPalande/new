<?PHP
session_start();
$con=mysql_connect("localhost","root","");
if(!$con)
{
	die("can not connect".mysql_error());
}

mysql_select_db("plan",$con);

	$q="insert into login_details (full_name,email_id,mobile_number,password) values ('$_POST[full_name]','$_POST[email_id]','$_POST[mobile_number]','$_POST[password]')";				
	$sql=mysql_query($q);
	if(!$q){
		die("database not fount".mysql_error());
	}
	
	$_SESSION['plan']=true;
	$_SESSION['emailId']=$_POST['email_id'];
	$_SESSION['full_name']=$_POST['full_name'];

header('location:insert_form.php');

?>