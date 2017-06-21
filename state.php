<html>
    <head>
        <title>State</title>
        <script src="js/jquery-1.8.3.js"></script> 
        <script>
            function addState() {
                var country_id=$('#country_id').val();                
                if (!country_id) {
                    $('#country_id').css({"border-color": "red"});
                    $('#country_id').focus();
                    return false;
                } else {
                    $('#country_id').css({"border-color": "#a9a9a9"});
                }
                
                var state_name=$('#state_name').val();                
                if (!state_name) {
                    $('#state_name').css({"border-color": "red"});
                    $('#state_name').focus();
                    return false;
                } else {
                    $('#state_name').css({"border-color": "#a9a9a9"});
                }
            }
        </script>
    </head>
    <body>
        <?PHP
        $con = mysql_connect("localhost","root","");
        if (!$con){
                die('Could not connect: ' . mysql_error());
        }

        mysql_select_db("plan", $con);

        $sql=  mysql_query("select s.state_name,c.country_name from state_details as s join country_details as c on s.country_id = c.country_id"); 
        $countrySql=  mysql_query("select * from country_details"); 
        ?>
        <h2 style="text-decoration: underline;"  align="center">Add State</h2>
        <div style="margin-left:20px;">
            <form action="add_state_data.php" onsubmit="return addState();" method="post">
                Country Name : 
                <span style="margin-left: 10px;">
                    <select name="country_id" id="country_id">
                        <option value="">-- Select Country --</option>
                        <?PHP while($countryRow = mysql_fetch_array($countrySql)){ ?>
                             <option value="<?PHP echo $countryRow['country_id']; ?>">
								<?PHP echo $countryRow['country_name']; ?>
							 </option>
                        <?PHP } ?>
                    </select>
                </span>
                <br/>
                State Name : 
                <span style="margin-left: 10px;">
                    <input type="text" name="state_name" id="state_name" />
                </span>
                <br/>
                <span style="margin-left: 10px;">
                    <input type="submit" name="Submit" id="Submit" value="Submit" />
                </span>
            </form>
        </div>
        <br/>
	<table width="100%" border="1">
		<tr>
			<th>Sr. No.</th>
			<th>Country Name</th>
			<th>State Name</th>
		</tr>
<?PHP $i=1;
 while($row = mysql_fetch_array($sql)){
	$country_name=$row['country_name'];
	$state_name=$row['state_name'];
        ?>
        <tr>
            <td><?PHP echo $i; ?>.</td>
            <td><?PHP echo $country_name; ?></td>
            <td><?PHP echo $state_name; ?></td>
        </tr>
	<?PHP $i++; } ?>
	
	</table>
    </body>
</html>