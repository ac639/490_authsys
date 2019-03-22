<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Page</title>
    </head>
    <body>
      <table border="1">
<?php
//ini_set('display_errors', 1);
//ini_set('display_startup_errors', 1);
//error_reporting(E_ALL);

     include('testRabbitMQClient2.php');

     session_start();

     $usrName = $_SESSION['username'];

     if (!isset($_SESSION['username'])) {
          echo "You are not logged in";
     } else {
          $sqlStatement = "SELECT * FROM login LEFT JOIN wallet ON login.id = wallet.id WHERE login.username='andre'";          
	  $record = fetchData($usrName, $sqlStatement);
	  print_r($record);

//////////////////////////////////////////
/*
	$myArray = ["1","2","3"];
	$html = "<table>";
	foreach($myArray as $row) {
	     $html .= "<tr>";
     	     foreach ($row as $cell) {
		$html .= "<td>" . $cell . "</td>";
	     }
	     $html .= "</tr>";
        }
	$html .= "</table>";
*/
///////////////////////
     }

exit();
?>

</body>

</html>


