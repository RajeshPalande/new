<html>
<head>
<title>print_r</title>
</head>
<body>
<h2 style="text-decoration: underline;"  align="center">print_r</h2>
<div style="margin-left:20px;">
<pre>
&lt;?PHP 
$name = array("Rajesh", "Dinesh", "Ganesh");
echo "Name : " . $name[0] . ", " . $name[1] . " and " . $name[2] . ".";
 ?&gt;
</pre>
Output :

<?PHP
$name = array("Rajesh", "Dinesh", "Ganesh");
print_r($name);
?>
</div>
</body>
</html>