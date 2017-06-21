<html>
    <head>
        <title>Sorting Arrays</title>
    </head>
    <body>
        <h2 style="text-decoration: underline;"  align="center">Sorting Arrays</h2>
        <div style="margin-left:20px;">


            <p>sort()</p>
            <p>The sort() function sorts an indexed array in ascending order.</p>
            <pre>
&lt;?PHP 
$name = array("Rajesh", "Dinesh", "Ganesh");
sort($name);
echo "&lt;pre&gt;";
print_r($name);
 ?&gt;
            </pre>
            Output :
            <?PHP
            $name = array("Rajesh", "Dinesh", "Ganesh");
            sort($name);
            echo "<pre>";
            print_r($name);
            ?>
            <hr/>
            <p>rsort()</p>
            <p>Use the rsort() function to sort an indexed array in descending order.</p>
            <pre>
&lt;?PHP
$name_de = array("Rajesh", "Dinesh", "Ganesh");
rsort($name_de);
echo "&lt;pre&gt;";
print_r($name_de);
 ?&gt;
            </pre>
            Output :
            <?PHP
            $name_de = array("Rajesh", "Dinesh", "Ganesh");
            rsort($name_de);
            echo "<pre>";
            print_r($name_de);
            ?>
        </div>
    </body>
</html>