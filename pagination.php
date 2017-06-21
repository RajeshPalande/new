<html>
<head>
<title>Pagination</title>
</head>
<body>

<h2 style="text-decoration: underline;"  align="center">Pagination</h2>
<div style="margin-left:20px;">
<?php 
$num_rec_per_page=5;
mysql_connect('localhost','root','');
mysql_select_db('plan');
if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; }; 
$start_from = ($page-1) * $num_rec_per_page; 
$sql = "SELECT * FROM user_details LIMIT $start_from, $num_rec_per_page"; 
$rs_result = mysql_query ($sql); //run the query
?> 
<table width="100%" border="1">
		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Number</th>
			<th>DOB</th>
			<th>Gender</th>
			<th>Action</th>
		</tr>
<?php 
while ($row = mysql_fetch_assoc($rs_result)) { 
    $user_id=$row['user_id'];
	$user_name=$row['user_name'];
	$user_email=$row['user_email'];
	$user_number=$row['user_number'];
	$user_dob=$row['user_dob'];
	$gender=$row['gender'];
?> 
            <tr>
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
<?php 
 }
?> 
</table>
<?php 
$sql1 = "SELECT * FROM user_details"; 
$rs_result1 = mysql_query($sql1); //run the query
$total_records = mysql_num_rows($rs_result1);  //count number of records
$total_pages = ceil($total_records / $num_rec_per_page); 

echo "<a href='pagination.php?page=1'>".'|<'."</a> "; // Goto 1st page  

for ($i=1; $i<=$total_pages; $i++) { 
            echo "<a href='pagination.php?page=".$i."'>".$i."</a> "; 
}; 
echo "<a href='pagination.php?page=$total_pages'>".'>|'."</a> "; // Goto last page
?>
</div>
</body>
</html>