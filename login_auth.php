<?php
	session_start();
	include('testRabbitMQClient2.php');

	$usrName = $_POST['usrName'];
	$usrPassword = $_POST['usrPassword'];
	$response = loginAuth($usrName, $usrPassword);

	if ($response == true) {
	     $_SESSION['username'] = $usrName;
	     header("location: homepage.html");
	} else {
             echo "\nlogin_auth.php: Incorrect Username/Password";
	}
exit();
?>
