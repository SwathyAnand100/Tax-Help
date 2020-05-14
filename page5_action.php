<?php

include 'page1_action.php'
include 'page2_action.php'

$host = "localhost";
$user = "root";
$password = '';
$db_name = "tax";

$con = mysqli_connect($host, $user, $password, $db_name);
if(mysqli_connect_errno())
{
	die("Failed to connect with MySQL : ".mysqli_connect_error());
}

	
		$e1 = $_POST["e1"];
		$e2 = $_POST["e2"];
		$e3 = $_POST["e3"];

$sql="insert into bank values('$pan','$e1','$e2','$e3');

if(mysqli_query($con, $sql)){
	header('location: Page7.html');
}  
else{  
	header('location: Page5.html'); 
} 
	

?>