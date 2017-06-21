<html>
<head>
<title>Search By Name</title>
</head>
<body>

<h2 style="text-decoration: underline;"  align="center">Search</h2>
<div style="margin-left:20px;">
<?PHP
$con = mysql_connect("localhost","root","");
if (!$con){
	die('Could not connect: ' . mysql_error());
}

mysql_select_db("plan", $con);

$sql=  mysql_query("select * from user_details"); ?>
    
        <div>
            <form action="search_data.php" method="post">
                Name : 
                <span style="margin-left: 10px;">
                    <input type="text" name="search" id="search" />
                </span>
                <span style="margin-left: 10px;">
                    <input type="submit" name="Submit" id="Submit" value="Submit" />
                </span>
            </form>
        </div>
    <br/>
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
			<td><?PHP echo $i; ?>.</td>
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
</div>
</body>
</html>