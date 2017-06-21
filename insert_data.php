<form action="insert.php" method="post">
	<label>Name</label>
	<input type="text" name="user_name_f" id="user_name" /> <br/>
	<label>Email</label>
	<input type="text" name="user_email" id="user_email" /> <br/>
	<label>Mobile Number</label>
	<input type="text" name="user_number" id="user_number" /> <br/>
	<label>DOB</label>
	<input type="text" name="user_dob" id="user_dob" /> <br/>
	<label>Gender</label>
	<input type="radio" name="gender" id="gender" value="Male" /> Male 
	<input type="radio" name="gender" id="gender" value="Female" /> Female
	<br/>
	<label>Address</label>
	<textarea name="address" id="address"></textarea> <br/>

	<input type="submit" value="Submit" /> <br/>
</form>