<?php
	//session_start();
	include('testRabbitMQClient2.php');

	$usrName = $_POST['usrName'];
	$usrPassword = $_POST['usrPassword'];
	$usrEmail = $_POST['usrEmail'];	
	$response = registerAuth($usrName,$usrPassword,$usrEmail);

	if ($response == true) {
	     echo "Account created...Redirecting";
	     //header("location: ../login.html");
	     header("refresh:2; url=../login.html");
	} else {
             //echo "\nregister_auth.php: ";
	     echo "Username/Email already exists...Redirecting";
	     header("refresh:2; url=../login.html");

	}

?>
