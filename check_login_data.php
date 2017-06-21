<?PHP
session_start();
$con=mysql_connect("localhost","root","");
if(!$con)
{
	die("can not connect".mysql_error());
}

mysql_select_db("plan",$con);

	
	$data=mysql_query("select * from login_details where email_id='".$_POST['email_id']."' and password='".($_POST['password'])."'");
	$data_n=mysql_num_rows($data);
	
		if($data_n==1){
			$nameid=mysql_fetch_array($data);
				$_SESSION['plan']=true;
				$_SESSION['email_id']=$_POST['email_id'];
				$_SESSION['full_name']=$_POST['full_name'];
				header('location:insert_form.php');
		} else  { 
			$errormsg ="Check User name and password";
			header('location:login.php');
		}
?>