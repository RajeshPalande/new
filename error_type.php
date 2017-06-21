<html>
<head>
<title>Error Type</title>
</head>
<body>
<h2 style="text-decoration: underline;"  align="center">Error Type</h2>
<div style="margin-left:20px;">
<pre>
<p>Here are three basic types of runtime errors in PHP: </p>

<p>1. Notices: These are trivial, non-critical errors that PHP encounters while executing a script - for example, 
accessing a variable that has not yet been defined. By default, such errors are not displayed to the 
user at all - although you can change this default behavior. </p>

<p>2. Warnings: These are more serious errors - for example, attempting to include() a file which does not exist.
 By default, these errors are displayed to the user, but they do not result in script termination. </p>

<p>3. Fatal errors: These are critical errors - for example, instantiating an object of a non-existent class, 
or calling a non-existent function. These errors cause the immediate termination of the script, and PHP's default
 behavior is to display them to the user when they take place. </p>

</pre>

</div>
</body>
</html>