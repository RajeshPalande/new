<?PHP
$con=mysql_connect("localhost","root","");
if(!$con)
{
	die("can not connect".mysql_error());
}

mysql_select_db("plan",$con);

$id = $_REQUEST['Id'];

if ($id){
	$sql = "SELECT * FROM user_details WHERE user_id =$id";
	$result = mysql_query($sql);
	$myrow = mysql_fetch_array($result);
	$user_id = $myrow["user_id"];
	$user_name = $myrow["user_name"];
	$user_email = $myrow["user_email"];
	$user_number = $myrow["user_number"];
	$user_dob = $myrow["user_dob"];
	$gender = $myrow["gender"];
	$address = $myrow["address"]; ?>
	
<form action="user_update.php" method="post">
<input type="hidden" name="user_id" id="user_id" value="<?PHP echo $user_id; ?>" />
<label>Name</label>
<input type="text" name="user_name" id="user_name" value="<?PHP echo $user_name; ?>" /> <br/>
<label>Email</label>
<input type="text" name="user_email" id="user_email" value="<?PHP echo $user_email; ?>" /> <br/>
<label>Mobile Number</label>
<input type="text" name="user_number" id="user_number" value="<?PHP echo $user_number; ?>" /> <br/>
<label>DOB</label>
<input type="text" name="user_dob" id="user_dob" value="<?PHP echo $user_dob; ?>" /> <br/>
<label>Gender</label>
<input type="radio" name="gender" id="gender" <?PHP if($gender == 'Male'){ ?> Checked <?PHP } ?> value="Male" /> Male 
<input type="radio" name="gender" id="gender" <?PHP if($gender == 'Female'){ ?> Checked <?PHP } ?> value="Female" /> Female
<br/>
<label>Address</label>
<textarea name="address" id="address"><?PHP echo $address; ?></textarea> <br/>

<input type="submit" value="Submit" /> <br/>
</form>
	
<?PHP 
}
mysql_select_db("plan",$con);
?>