<?PHP
$con=mysql_connect("localhost","root","");
if(!$con)
{
	die("can not connect".mysql_error());
}

mysql_select_db("plan",$con);

	$q="insert into state_details (state_name,country_id) values ('$_POST[state_name]','$_POST[country_id]')";				
	$sql=mysql_query($q);
	if(!$q){
		die("database not fount".mysql_error());
	}

header ('location:state.php');

?>