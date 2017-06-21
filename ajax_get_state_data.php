<?PHP
$con=mysql_connect("localhost","root","");
if(!$con)
{
	die("can not connect".mysql_error());
}

mysql_select_db("plan",$con);

$StateData="select * from state_details where country_id = '$_POST[countryID]'";				
$stateSql=mysql_query($StateData);
?>
<select name="state_id" id="state_id">
    <option value="">-- Select State --</option>
    <?PHP  while($stateRow = mysql_fetch_array($stateSql)){ ?>
    <option value="<?PHP echo $stateRow['state_id']; ?>">
        <?PHP echo $stateRow['state_name']; ?>
    </option>
    <?PHP } ?>
</select>