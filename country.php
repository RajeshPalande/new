<html>
    <head>
        <title>Country</title>
        <script src="js/jquery-1.8.3.js"></script> 
        <script>
            function addCountry() {
                var country_name=$('#country_name').val();
                
                if (!country_name) {
                    $('#country_name').css({"border-color": "red"});
                    $('#country_name').focus();
                    return false;
                } else {
                    $('#country_name').css({"border-color": "#a9a9a9"});
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

        $sql=  mysql_query("select * from country_details"); ?>
        
        <h2 style="text-decoration: underline;"  align="center">Add Country</h2>
        <div style="margin-left:20px;">
            <form action="add_country_data.php" onsubmit="return addCountry();" method="post">
                Country Name : 
                <span style="margin-left: 10px;">
                    <input type="text" name="country_name" id="country_name" />
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
			<th>Country Name</th>
		</tr>
<?PHP $i=1;
 while($row = mysql_fetch_array($sql)){
	$country_name=$row['country_name'];
        ?>
        <tr>
            <td><?PHP echo $i; ?>.</td>
            <td><?PHP echo $country_name; ?></td>
        </tr>
	<?PHP $i++; } ?>
	
	</table>
    </body>
</html>