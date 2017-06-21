<?PHP
$con=mysql_connect("localhost","root","");
if(!$con)
{
	die("can not connect".mysql_error());
}

mysql_select_db("plan",$con);
$search = $_POST['search'];
    //$q = "select * from user_details where user_name like '%$search%' or  user_email like '%$search%'";
    $q="select * from user_details where user_name like '%$search%'";				
    $sql=mysql_query($q);
    if(!$q){
            die("database not fount".mysql_error());
    }
    ?>

<table width="100%" border="1">
		<tr>
			<th>Sr. No.</th>
			<th>Name</th>
			<th>Email</th>
			<th>Number</th>
			<th>DOB</th>
			<th>Gender</th>
			<th>Action</th>
		</tr>
<?PHP $i=1;
 while($row = mysql_fetch_array($sql)){
	$user_id=$row['user_id'];
	$user_name=$row['user_name'];
	$user_email=$row['user_email'];
	$user_number=$row['user_number'];
	$user_dob=$row['user_dob'];
	$gender=$row['gender']; ?>
	
		<tr>
			<td><?PHP echo $i; ?></td>
			<td><?PHP echo $user_name; ?></td>
			<td><?PHP echo $user_email; ?></td>
			<td><?PHP echo $user_number; ?></td>
			<td><?PHP echo $user_dob; ?></td>
			<td><?PHP echo $gender; ?></td>
			<td>
				<a href='user_edit.php?Id=<?PHP echo $user_id; ?>'>
					Edit
				</a>
				/
				<a href="user_delete.php?Id=<?PHP echo $user_id; ?>" onclick="return confirm('Are you sure you want to delete?');">
					Delete
				</a>
			</td>
		</tr>
	<?PHP $i++; } ?>
	
	</table>
<?PHP
	mysql_close($con);
?>