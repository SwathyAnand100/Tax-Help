<?php

session_start();

$host = "localhost";
$user = "root";
$password = '';
$db_name = "tax";

$con = mysqli_connect($host, $user, $password, $db_name);
if(mysqli_connect_errno())
{
	die("Failed to connect with MySQL : ".mysqli_connect_error());
}

	$cded1 = $_POST["cded1"];
	$cded2 = $_POST["cded2"];
	$cded3 = $_POST["cded3"];
	$cded4 = $_POST["cded4"];
	$cded5 = $_POST["cded5"];
	$cded6 = $_POST["cded6"];
	$cded7 = $_POST["cded7"];
	$cded8 = $_POST["cded8"];
	$cded9 = $_POST["cded9"];
	$cded10 = $_POST["cded10"];
	$cded11 = $_POST["cded11"];
	$cded12 = $_POST["cded12"];
	$cded13 = $_POST["cded13"];
	$cded14 = $_POST["cded14"];
	$cded15 = $_POST["cded15"];
	$cded16 = $_POST["cded16"];
	$cded17 = $_POST["cded17"];
	$cded18 = $_POST["cded18"];

	$c2b1 = $_POST["c2b1"];
	$c2b2 = $_POST["c2b2"];
	$c2b3 = $_POST["c2b3"];
	$c2b4 = $_POST["c2b4"];
	$c2b5 = $_POST["c2b5"];
	$c2b6 = $_POST["c2b6"];
	$c2b7 = $_POST["c2b7"];
	$c2b8 = $_POST["c2b8"];
	$c2b9 = $_POST["c2b9"];
	$c2b10 = $_POST["c2b10"];
	$c2b11 = $_POST["c2b11"];
	$c2b12 = $_POST["c2b12"];
	$c2b13 = $_POST["c2b13"];
	$c2b14 = $_POST["c2b14"];
	$c2b15 = $_POST["c2b15"];
	$c2b16 = $_POST["c2b16"];
	$c2b17 = $_POST["c2b17"];

$pan = $_SESSION["pan"];

$c1 = $cded1 + $cded2 + $cded3 + $cded4 + $cded5 + $cded6 + $cded7 + $cded8 + $cded9
              	+ $cded10 + $cded11 + $cded12 + $cded13 + $cded14 + $cded15 + $cded16 
	+ $cded17 + $cded18;

$getc2a = "select GrossTotalIncome from grosstotalincome where PAN = $pan";
$result = mysqli_query($con,$getc2a);
$c2a = $result - $c1;

$c2b = $c2b1 + $c2b2 + $c2b3 + $c2b4 + $c2b5 + $c2b6 + $c2b7 + $c2b8 + $c2b9 + $c2b10
	 + $c2b11 + $c2b12 + $c2b13 + $c2b14 + $c2b15 + $c2b16 + $c2b17;

$sql = "insert into ded values('$pan','$cded1','$cded2','$cded3','$cded4','$cded5','$cded6',
'$cded7','$cded8','$cded9','$cded10','$cded11','$cded12','$cded13','$cded14','$cded15','$cded16',
'$cded17','$cded18','$c1','$c2a','$c2b','$c2b1','$c2b2','$c2b3','$c2b4','$c2b5','$c2b6','$c2b7',
'$c2b8','$c2b9','$c2b10','$c2b11','$c2b12','$c2b13','$c2b14','$c2b15','$c2b16','$c2b17')";


if(mysqli_query($con, $sql)){
	header('location: Page4.html');
}  
else{  
	header('location: Page3.html'); 
}  

?>