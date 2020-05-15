<?php

$host = "localhost";
$user = "root";
$password = '';
$db_name = "taxhelp";

$con = mysqli_connect($host, $user, $password, $db_name);
if(mysqli_connect_errno())
{
	die("Failed to connect with MySQL : ".mysqli_connect_error());
}

	$pan = $_POST["pan"];
	$d2 = $_POST["d2"];
	$d6 = $_POST["d6"];
	$d7 = $_POST["d7"];
	$d8 = $_POST["d8"];
	$d9 = $_POST["d9"];
	$d10 = $_POST["d10"];


$r1 = "SELECT Totalinc from ded where PAN = '$pan'";
$result = mysqli_query($con,$r1);
$totalinc = 0;
if( $result = mysqli_query($con,$r1) )
{
	$row_cnt = mysqli_num_rows($result);

	while($row = mysqli_fetch_assoc($result))
	{
		$totalinc = $row["Totalinc"];
	}
}

$r2 = "select extract(year from sysdate()) - extract(year from DOB) as age from geninfo 
	where PAN = '$pan'";
$result = mysqli_query($con,$r2);
$age = 0;
if( $result = mysqli_query($con,$r2) )
{
	$row_cnt = mysqli_num_rows($result);
	
	while($row = mysqli_fetch_assoc($result))
	{
		$age = $row["age"];
	}
}


if($age < 60){
	if( $totalinc <= 250000 ){
		$d1 = 0;
	}
	else if( $totalinc <= 500000 ){
		$d1 = ($totalinc - 250000)*0.05;
	}
	else if( $totalinc <= 1000000 ){
		$d1 = ($totalinc - 500000)*0.2 + 12500;
	}
	else{
		$d1 = ( $totalinc - 1000000)*0.3 + 112500;
	}
}
else if( $age < 80 ){
	if( $totalinc <= 300000 ){
		$d1 = 0;
	}
	else if( $totalinc <= 500000 ){
		$d1 = ($totalinc - 300000)*0.05;
	}
	else if( $totalinc <= 1000000 ){
		$d1 = ($totalinc - 500000)*0.2 + 10000;
	}
	else{
		$d1 = ( $totalinc - 1000000)*0.3 + 110000;
	}
}
else{
	if( $totalinc <= 500000 ){
		$d1 = 0;
	}
	else if( $totalinc <= 1000000 ){
		$d1 = ($totalinc - 500000)*0.2;
	}
	else{
		$d1 = ( $totalinc - 1000000)*0.3 + 100000;
	}
}


$d3 = $d1 - $d2;

$d4 = 0.04*d3;

$d5 = $d4 + $d3;

$TotalTax = $d5 + $d7 + $d8 + $d9 + $d10 - $d6;	


$sql="insert into comp values('$pan','$d1','$d2','$d3','$d4','$d5','$d6','$d7','$d8','$d9','$d10',
	'$TotalTax')";


if(mysqli_query($con, $sql)){
	header('location: Page5.html');
}  
else{  
	header('location: Page4.html'); 
} 

mysqli_close($con);	
?>
