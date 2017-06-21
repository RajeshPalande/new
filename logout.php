<?php
session_start();
$_SESSION['plan']=false;
header('location: login.php');
?>