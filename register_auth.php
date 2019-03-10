<?php
	//session_start();
	include('testRabbitMQClient2.php');

	$usrName = $_POST['usrName'];
	$usrPassword = $_POST['usrPassword'];
	$usrEmail = $_POST['usrEmail'];	
	$response = registerAuth($usrName,$usrPassword,$usrEmail);

	if ($response == true) {
	     //header("location: home.html");
	     echo "Account created"; 
	} else {
             //echo "\nregister_auth.php: ";
	}

?>
