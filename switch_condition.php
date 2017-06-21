<html>
<head>
<title>Switch Condition</title>
</head>
<body>
<h2 style="text-decoration: underline;"  align="center">Switch Condition</h2>
<div style="margin-left:20px;">
<pre>
&lt;?PHP 
$favcolor = "5";

switch ($favcolor) {
    case "5":
        echo "Number is 5.";
        break;
    case "10":
        echo "Number is 10.";
        break;
    case "15":
        echo "Number is 15.";
        break;
    default:
        echo "No Number Selected.";
}
 ?&gt;
</pre>
Output :

<?PHP
$favcolor = "5";

switch ($favcolor) {
    case "5":
        echo "Number is 5.";
        break;
    case "10":
        echo "Number is 10.";
        break;
    case "15":
        echo "Number is 15.";
        break;
    default:
        echo "No Number Selected.";
}
?>
</div>
</body>
</html>