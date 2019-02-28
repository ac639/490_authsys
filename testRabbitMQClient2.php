#!/usr/bin/php
<?php
require_once('path.inc');
require_once('get_host_info.inc');
require_once('rabbitMQLib.inc');

function loginAuth($usrName, $usrPassword) {
	$client = new rabbitMQClient("testRabbitMQ.ini","testServer");
	if (isset($argv[1]))
	{
  		$msg = $argv[1];
	}
	else
	{
  		$msg = "test message";
	}

	$request = array();
	//$request['type'] = "Login";
	$request['type'] = "login";
	//$request['username'] = "steve";
	//$request['password'] = "password";
	$request['usrName'] = $usrName;
	$request['usrPassword'] = $usrPassword;
	$request['message'] = $msg;
	$response = $client->send_request($request);
	//$response = $client->publish($request);

	echo "client received response: ".PHP_EOL;
	print_r($response);
	//return for test
	return $response;
	//
	//echo "\n\n";

	echo $argv[0]." END".PHP_EOL;
}

