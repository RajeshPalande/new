<html>
<head>
<title>PHP Function</title>
</head>
<body>
<h2 style="text-decoration: underline;"  align="center">PHP Function</h2>
<div style="margin-left:20px;">


Explode :
<pre>
&lt;?PHP 
 $pizza  = "piece1,piece2,piece3,piece4,piece5,piece6";
  $pieces = explode(",", $pizza);
  
  <b>OUTPUT :</b>
  echo $pieces[0]; // piece1
  echo "&lt;br&gt;";
  echo $pieces[1]; // piece2
//The explode() function breaks a string into an array.
//Note: The "separator" parameter cannot be an empty string.
//Note: This function is binary-safe.
 ?&gt;
</pre>
<?PHP
  $pizza  = "piece1,piece2,piece3,piece4,piece5,piece6";
  $pieces = explode(",", $pizza);
  echo $pieces[0]; // piece1
  echo "<br>";
  echo $pieces[1]; // piece2

//The explode() function breaks a string into an array.
//Note: The "separator" parameter cannot be an empty string.
//Note: This function is binary-safe.
?>
<hr/>

Substr:
<pre>
&lt;?PHP 
  echo $rest = substr("abcdef", 0, -1);  // returns "abcde"
  echo "&lt;br&gt;";
  echo $rest = substr("abcdef", 2, -1);  // returns "cde"
  echo "&lt;br&gt;";
  echo $rest = substr("abcdef", -3, -1); // returns "de"
  echo "&lt;br&gt;";
  echo $rest = substr("abcdef", 4, -4);  // returns false
//The substr() function returns a part of a string.
//Note: If the start parameter is a negative number and length is less than or equal to start, length becomes 0.
 ?&gt;
</pre>
<b>OUTPUT :</b>
<br/>
<?PHP
  echo $rest = substr("abcdef", 0, -1);  // returns "abcde"
  echo "<br>";
  echo $rest = substr("abcdef", 2, -1);  // returns "cde"
  echo "<br>";
  echo $rest = substr("abcdef", -3, -1); // returns "de"
  echo "<br>";
  echo $rest = substr("abcdef", 4, -4);  // returns false
  
//The substr() function returns a part of a string.
//Note: If the start parameter is a negative number and length is less than or equal to start, length becomes 0.
?>
<hr/>

Array Reverse:
<pre>
&lt;?PHP 
$a=array("a"=>"Volvo","b"=>"BMW","c"=>"Toyota");
  print_r(array_reverse($a));
//<b>OUTPUT :</b>  Array ( [c] => Toyota [b] => BMW [a] => Volvo );
//The array_reverse() function returns an array in the reverse order.
 ?&gt;
</pre>
<?PHP
  $a=array("a"=>"Volvo","b"=>"BMW","c"=>"Toyota");
  print_r(array_reverse($a));

  //Output:  Array ( [c] => Toyota [b] => BMW [a] => Volvo );
 //The array_reverse() function returns an array in the reverse order.
?>
<hr/>

Array Unique:
<pre>
&lt;?PHP 
$a=array("a"=>"red","b"=>"green","c"=>"red");
  print_r(array_unique($a));
// <b>OUTPUT :</b>  Array ( [a] => red [b] => green );
//The array_unique() function removes duplicate values from an array.
 ?&gt;
</pre>
<?PHP
  $a=array("a"=>"red","b"=>"green","c"=>"red");
  print_r(array_unique($a));

 // Output:  Array ( [a] => red [b] => green );
 //The array_unique() function removes duplicate values from an array.
?>
</div>
</body>
</html>