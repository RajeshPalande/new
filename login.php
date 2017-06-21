<html>
<head>
<title>User Login Form</title>
<script src="js/jquery-1.8.3.js"></script> 
<script>
function userLogin() { 
    var email_id=$('#email_id').val();   
    var password=$('#password').val();   
       
    if (!email_id) {
        $('#email_id').css({"border-color": "red"});
        $('#email_id').focus();
        return false;
    } else {
        $('#email_id').css({"border-color": "#a9a9a9"});
    }

    if (!password) {                    
        $('#password').css({"border-color": "red"});
        $('#password').focus();
        return false;
    } else {                    
        $('#password').css({"border-color": "#a9a9a9"});
    }
}
</script>
</head>
<body>
<table border="1" width="100%">
<form action="check_login_data.php" onsubmit="return userLogin();" method="post">
<td>Email Id : </td>
<td><input type="text" name="email_id" id="email_id" /></td>
</tr>
<td>Password : </td>
<td><input type="password" name="password" id="password" /></td>
</tr>
<!--<tr>
<td colspan="2"><span id="massage"><?PHP //if($errormsg){ echo $errormsg; } ?></span></td>
</tr>-->
<tr>
<td colspan="2"><input type="submit" name="submit" value="Submit" id="submit" /></td>
</tr>
</form>
<tr>
<td colspan="2"><a href="register.php">Register</a></td>
</tr>
</table>
</body>
</html>