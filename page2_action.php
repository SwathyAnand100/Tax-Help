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

	$b1ia = $_POST["b1ia"];
	$b1ib = $_POST["b1ib"];
	$b1ic = $_POST["b1ic"];

	$la1 = $_POST["la1"];
	$la2 = $_POST["la2"];
	$la3 = $_POST["la3"];
	$la4 = $_POST["la4"];
	$la5 = $_POST["la5"];
	$la6 = $_POST["la6"];
	$la7 = $_POST["la7"];
	$la8 = $_POST["la8"];
	$la9 = $_POST["la9"];
	$la10 = $_POST["la10"];
	$la11 = $_POST["la11"];
	$la12 = $_POST["la12"];
	$la13 = $_POST["la13"];
	$la14 = $_POST["la14"];

	$b1iva = $_POST["b1iva"];
	$b1ivb = $_POST["b1ivb"];
	$b1ivc = $_POST["b1ivc"];



	$b2 = $_POST["b2"];

	$b2i = $_POST["b2i"];
	$b2ii = $_POST["b2ii"];
	$b2v = $_POST["b2v"];
	$b2vi = $_POST["b2vi"];


	
	$b3i = $_POST["b3i"];
	$b3ii = $_POST["b3ii"];
	$b3iii = $_POST["b3iii"];
	$b3iv = $_POST["b3iv"];
	$b3v = $_POST["b3v"];

	$b3family = $_POST["b3family"];


$pan = $_SESSION["pan"];


$b1i = $b1ia + $b1ib + $b1ic;

$b1iii = $b1i - ( $la1 + $la2 + $la3 + $la4 + $la5 + $la6 + $la7 + $la8 + $la9 + $la10 + $la11 + $la12
	+ $la13 + $la14 );

$b1iv = $b1iva + $b1ivb + $b1ivc;

$b1v = $b1iii - $b1iv;
	
$sqla = "insert into incfromsal values('$pan','$b1ia','$b1ib','$b1ic','$b1i','$la1','$la2','$la3','$la4',
'$la5','$la6','$la7','$la8','$la9','$la10','$la11','$la12','$la13','$la14','$b1iii','$b1iv','$b1iva',
'$b1ivb','$b1ivc','$b1v')";


$b2iii = $b2i - $b2ii;

$b2iv = 0.3*$b2iii;

$b2vii = ($b2iii - $b2iv - $b2v) + $b2vi;


$sqlb = "insert into houseprop values('$pan','$b2','$b2i','$b2ii','$b2iii','$b2iv','$b2v','$b2vi',
'$b2vii')";

$sqlc = "insert into othersrcs values('$pan','$b3i','$b3ii','$b3iii','$b3iv','$b3v','$b3family')";

$b4 = $b1v + $b2vii + $b3i + $b3ii + $b3iii + $b3iv + $b3v + $b3family;

$sqld = "insert into grosstotalincome values('$pan','$b4')";


if((mysqli_query($con,$sqla)) and (mysqli_query($con,$sqlb)) and (mysqli_query($con,$sqlc)) and
(mysqli_query($con,$sqld))){
	header('location: Page3.html');
}
else{
	header('location: Page2.html');
}


?>


