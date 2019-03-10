#!/usr/bin/php
<?php
//
ini_set("display_errors", 1);
ini_set("log_errors",1);
//
require_once('path.inc');
require_once('get_host_info.inc');
require_once('rabbitMQLib.inc');

function loginAuth($usrName, $usrPassword) {
	//echo "loginAuth method run";
	$db = mysqli_connect("192.168.1.5", "asif2", "njit123", "490db");

	if  (!$db) {
	     die("MySQL Connection Failed: " . mysqli_connect_error() );
	} else {
	     $authUser = "SELECT * FROM login WHERE username='$usrName' AND password='$usrPassword'";
             $confirmAuth = mysqli_query($db, $authUser);
             if (mysqli_num_rows($confirmAuth) == 1) {
                 echo "\nusername and password found in table\n";
                 return true;
             } else {
                 echo "\nusername and password NOT found in table\n";
                 return false;
             }
	}
}

function registerAuth($usrName,$usrPassword,$usrEmail) {
	$db = mysqli_connect("192.168.1.5", "asif2", "njit123", "490db");
        if  (!$db) {
             die("MySQL Connection Failed: " . mysqli_connect_error() );
        } else {
             $searchUser = "SELECT * FROM login WHERE username='$usrName'";
	     $searchEmail = "SELECT * FROM login WHERE email='$usrEmail'";
             $checkUserExist = mysqli_query($db, $searchUser);
             $checkEmailExist = mysqli_query($db, $searchEmail);
	     if (mysqli_num_rows($checkUserExist) == 1 || mysqli_num_rows($checkEmailEixst) == 1 ) {
		echo "\nusername or password already exist\n";
	        return false;
	     } else {
	        mysqli_query($db,"INSERT INTO login (username, password, email) VALUES ('$usrName', '$usrPassword', '$usrEmail')");
                echo "\naccount created\n";
                return true;
             }
       }
}


function requestProcessor($request)
{
  echo "received request".PHP_EOL;
  var_dump($request);
  if(!isset($request['type']))
  {
    return "ERROR: unsupported message type";
  }
  switch ($request['type'])
  {
    case "login":
      //return doLogin($request['username'],$request['password']);
      return loginAuth($request['usrName'],$request['usrPassword']);
    case "register":
      return registerAuth($request['usrName'],$request['usrPassword'],$request['usrEmail'];
    //case "validate_session":
      //return doValidate($request['sessionId']);
  }
  return array("returnCode" => '0', 'message'=>"Server received request and processed");
}

$server = new rabbitMQServer("testRabbitMQ.ini","testServer");

echo "testRabbitMQServer BEGIN".PHP_EOL;
$server->process_requests('requestProcessor');
echo "testRabbitMQServer END".PHP_EOL;
exit();
?>

