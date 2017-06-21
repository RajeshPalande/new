<?PHP
session_start();

echo $_SESSION['emailId']; 
echo "<br>";
echo $_SESSION['full_name'];
?>
&nbsp;
<a href="logout.php">
LogOut
</a>