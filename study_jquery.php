<html>
<head>
<title>Study jQuery</title>

<script src="jqueryUI/js/jquery-1.8.3.js"></script>
<link rel="stylesheet" href="simpale_table/media/css/demo_page.css" type="text/css" />
<link rel="stylesheet" href="simpale_table/media/css/demo_table_jui.css" type="text/css" />
<!--<link rel="stylesheet" href="simpale_table/media/css/jquery-ui-1.8.4.custom.css" type="text/css" />-->
<script type="text/javascript" language="javascript" src="simpale_table/media/js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="simpale_table/media/js/jquery.dataTables.js"></script>

<link rel="stylesheet" href="jqueryUI/development-bundle/themes/base/jquery.ui.all.css">

<script src="jqueryUI/development-bundle/ui/jquery.ui.core.js"></script>
<script src="jqueryUI/development-bundle/ui/jquery.ui.widget.js"></script>
<script src="jqueryUI/development-bundle/ui/jquery.ui.datepicker.js"></script>

<script src="jqueryUI/development-bundle/ui/jquery.ui.dialog.js"></script>
<script src="jqueryUI/development-bundle/ui/jquery.ui.effect.js"></script>
<script src="jqueryUI/development-bundle/ui/jquery.ui.effect-blind.js"></script>
<script src="jqueryUI/development-bundle/ui/jquery.ui.effect-explode.js"></script>
<script type="text/javascript" charset="utf-8">
    $(document).ready(function() {        
        $( "#datepicker" ).datepicker();
        
        oTable = $('#example').dataTable({
                "bJQueryUI": true,
                "sPaginationType": "full_numbers"
        });
        
        $( "#dialog" ).dialog({
            autoOpen: false,
            show: "blind",
            hide: "explode"
        });

        $( "#opener" ).click(function() {
            $( "#dialog" ).dialog( "open" );
            return false;
        });
    });
</script>
</head>
<body>
<button id="opener">Open Dialog</button>
<h2 style="text-decoration: underline;"  align="center">Study jQuery</h2>
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
                Date : 
                <span style="margin-left: 10px;">
                    <input type="text" name="datepicker" id="datepicker" />
                </span>
                <span style="margin-left: 10px;">
                    <input type="submit" name="Submit" id="Submit" value="Submit" />
                </span>
            </form>
        </div>
    <br/>
	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
            <thead>
		<tr>
			<th>Sr. No.</th>
			<th>Name</th>
			<th>Email</th>
			<th>Number</th>
			<th>DOB</th>
			<th>Gender</th>
			<th>Action</th>
		</tr>
                </thead>
                <tbody>
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
	</tbody>
	</table>
    
    <div id="dialog" title="Basic dialog">
	<p>This is the default dialog which is useful for displaying information. The dialog window can be moved, resized and closed with the 'x' icon.</p>
</div>
<?PHP
	mysql_close($con);
?>
</div>
</body>
</html>