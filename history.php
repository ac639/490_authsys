<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Page</title>
    </head>
    <body>
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
          $sqlStatement = "SELECT * FROM login LEFT JOIN wallet ON login.id = wallet.id WHERE login.username='$usrName'";          
	  $record = fetchData($usrName, $sqlStatement);
	  //print_r($record);

          $html = "<table>";

          foreach($record as $key => $row) {
               $html .= "<tr>";
               $html .= "<td>" . $key . ': ' . $row . "</td>";
               $html .= "</tr>";
          }

          $html .= "</table>";
	  //Important part below          
          echo $html;
     } //else statement

exit();
?>

</body>

</html>



