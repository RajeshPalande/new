<?PHP
$con=mysql_connect("localhost","root","");
if(!$con)
{
	die("can not connect".mysql_error());
}

mysql_select_db("plan",$con);

	$q="insert into country_details (country_name) values ('$_POST[country_name]')";				
	$sql=mysql_query($q);
	if(!$q){
		die("database not fount".mysql_error());
	}

header ('location:country.php');

?>