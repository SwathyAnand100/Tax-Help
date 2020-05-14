<?php

$host = "localhost";
$user = "root";
$password = '';
$db_name = "tax";

$con = mysqli_connect($host, $user, $password, $db_name);
if(mysqli_connect_errno())
{
	die("Failed to connect with MySQL : ".mysqli_connect_error());
}


	$pan = $_POST["pan"];
	$fname = $_POST["fname"];
	$aadhaar = $_POST["aadhaar"];
	$dob = $_POST["dob"];
	$phno = $_POST["phno"];
	$mailid = $_POST["mailid"];
	$blockno = $_POST["blockno"];
	$buildingname = $_POST["buildingname"];
	$roadname = $_POST["roadname"];
	$areaname = $_POST["areaname"];
	$cityname = $_POST["cityname"];
	$statename = $_POST["statename"];
	$countryname = $_POST["countryname"];
	$pincode = $_POST["pincode"];
	$employment = $_POST["employment"];
	$filed = $_POST["filed"];
	$filedor = $_POST["filedor"];
	$receiptno = $_POST["receiptno"];
	$dateoffiling = $_POST["dateoffiling"];
	$noticeno = $_POST["noticeno"];
	$dateofnotice = $_POST["dateofnotice"];
	
$sql = "insert into geninfo values('$pan', '$fname', '$dob', '$aadhaar',
'$phno', '$mailid', '$blockno', '$buildingname' , '$roadname', '$areaname', '$cityname',
'$statename', '$countryname', '$pincode', '$employment', '$filed', '$filedor',
'$receiptno', '$dateoffilling', '$noticeno', '$dateofnotice')";

  
if(mysqli_query($con, $sql)){
	header('location: Page2.html');
}  
else{  
	header('location: Page1.html'); 
}     

?>