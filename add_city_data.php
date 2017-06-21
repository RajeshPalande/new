<?PHP
$con=mysql_connect("localhost","root","");
if(!$con)
{
	die("can not connect".mysql_error());
}

mysql_select_db("plan",$con);

	$q="insert into city_details (city_name,country_id,state_id) values ('$_POST[city_name]','$_POST[country_id]','$_POST[state_id]')";				
	$sql=mysql_query($q);
	if(!$q){
		die("database not fount".mysql_error());
	}

header ('location:city.php');

?>