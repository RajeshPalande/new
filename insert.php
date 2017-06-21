<?PHP
$con=mysql_connect("localhost","root","");
if(!$con)
{
	die("can not connect".mysql_error());
}

mysql_select_db("plan",$con);

 $q="insert into user_details (user_name,user_email,user_number,user_dob,gender,address) values ('$_POST[user_name_f]','$_POST[user_email]','$_POST[user_number]','$_POST[user_dob]','$_POST[gender]','$_POST[address]')";				
	
	mysql_query($q);
	if(!$q){
		die("database not fount".mysql_error());
	}

header('location:display.php');

?>