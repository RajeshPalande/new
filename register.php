<html>
<head>
<title>User Registration Form</title>
<script src="js/jquery-1.8.3.js"></script> 
<script>
    $(document).ready(function() { 
        jQuery('.onlyNumber').keyup(function () {
           this.value = this.value.replace(/[^0-9\.]/g,'');
        }); 
     }); 
     
function checkEmailger() {
	//alert("hi");
    /*var email = $(".emailvalidate").val();
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email)) {
        $(".emailvalidate").css({"border": "1px solid red"});
        $("#email_id").focus();        
        return false;
    } else {
        $('.emailvalidate').css({"border-color": "#a9a9a9"});
    }*/
}

function userReg() {
    var full_name=$('#full_name').val();   
    var email_id=$('#email_id').val();  
    var mobile_number=$('#mobile_number').val();  
    var password=$('#password').val();   
    
	if (!full_name) {
		$('#full_name').css({"border-color": "red"});
		$('#full_name').focus();
		return false;
	} else {
		$('#full_name').css({"border-color": "#a9a9a9"});
	}
       
    if (!email_id) {
        $('#email_id').css({"border-color": "red"});
        $('#email_id').focus();
        return false;
    } else {
        $('#email_id').css({"border-color": "#a9a9a9"});
    }

    var form_lenth = $("#mobile_number").val().length;
    if (form_lenth == '10') {
        $("#mobile_number").css({"border": "0px solid #a9a9a9"});
        $("#mobileMsg").html("");
    } else {
        $("#mobile_number").css({"border": "red"});
        $("#mobileMsg").html("10 digit required");
        $("#mobile_number").focus();
        return false;
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
<form action="insert_register_data.php" onsubmit="return userReg();" method="post">
<tr>
<td>Full Name : </td>
<td><input type="text" name="full_name" id="full_name" /></td>
</tr>
<tr>
<td>Email Id : </td>
<td><input type="text" class="emailvalidate" name="email_id" id="email_id" onblur="return checkEmailger();" /></td>
</tr>
<tr>
<td>Mobile Number : </td>
<td>
<input type="text" class="onlyNumber" name="mobile_number" id="mobile_number" maxlength="10" />
<span id="mobileMsg"></span>
</td>
</tr>
<tr>
<td>Password : </td>
<td><input type="password" name="password" id="password" /></td>
</tr>
<tr>
<td colspan="2"><input type="submit" name="submit" value="Submit" id="submit" /></td>
</tr>
</form>
<tr>
<td colspan="2"><a href="login.php">Login</a></td>
</tr>
</table>
</body>
</html>