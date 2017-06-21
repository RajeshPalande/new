<html>
    <head>
        <title>City</title>
        <script src="js/jquery-1.8.3.js"></script> 
        <script>
            function addCity() {
                var country_id=$('#country_id').val();                
                if (!country_id) {
                    $('#country_id').css({"border-color": "red"});
                    $('#country_id').focus();
                    return false;
                } else {
                    $('#country_id').css({"border-color": "#a9a9a9"});
                }
                
                var state_id=$('#state_id').val();                
                if (!state_id) {
                    $('#state_id').css({"border-color": "red"});
                    $('#state_id').focus();
                    return false;
                } else {
                    $('#state_id').css({"border-color": "#a9a9a9"});
                }
                
                var city_name=$('#city_name').val();                
                if (!city_name) {
                    $('#city_name').css({"border-color": "red"});
                    $('#city_name').focus();
                    return false;
                } else {
                    $('#city_name').css({"border-color": "#a9a9a9"});
                }
            }
            
            function getStateData(country_id){
                var datastring = "countryID=" + country_id;
                $.ajax({
                    url: "http://localhost/plan/ajax_get_state_data.php",
                    type: 'POST',
                    data: datastring,
                    success: function(msg) {
                        $("#stateDiv").html(msg);
                    }
                });
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

        $sql=  mysql_query("select s.state_name,c.city_name,c.country_id from state_details as s join city_details as c on s.state_id = c.state_id"); 
        $countrySql=  mysql_query("select * from country_details"); 
        ?>
        <h2 style="text-decoration: underline;"  align="center">Add City</h2>
        <div style="margin-left:20px;">
            <form action="add_city_data.php" onsubmit="return addCity();" method="post">
                Country Name : 
                <span style="margin-left: 10px;">
                    <select name="country_id" id="country_id" onclick="getStateData(this.value);">
                        <option value="">-- Select Country --</option>
                        <?PHP while($countryRow = mysql_fetch_array($countrySql)){ ?>
                             <option value="<?PHP echo $countryRow['country_id']; ?>"><?PHP echo $countryRow['country_name']; ?></option>
                        <?PHP } ?>
                    </select>
                </span>
                <br/>
                State Name : 
                <span style="margin-left: 10px;">
                    <span id="stateDiv">
                        <select name="state_id" id="state_id">
                            <option value="">-- Select State --</option>
                        </select>
                    </span>
                </span>
                <br/>
                City Name : 
                <span style="margin-left: 10px;">
                    <input type="text" name="city_name" id="city_name" />
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
			<th>City Name</th>
		</tr>
<?PHP $i=1;
 while($row = mysql_fetch_array($sql)){
	$country_id=$row['country_id'];
        $countryData="select * from country_details where country_id = '$country_id'";				
        $countrySql=mysql_query($countryData);
        $countryRow = mysql_fetch_array($countrySql);
	$city_name=$row['city_name'];
	$state_name=$row['state_name'];
        ?>
        <tr>
            <td><?PHP echo $i; ?>.</td>
            <td><?PHP echo $countryRow['country_name']; ?></td>
            <td><?PHP echo $state_name; ?></td>
            <td><?PHP echo $city_name; ?></td>
        </tr>
	<?PHP $i++; } ?>
	
	</table>
    </body>
</html>