<?php

start_session();

$host = "localhost";
$user = "root";
$password = '';
$db_name = "tax";

$con = mysqli_connect($host, $user, $password, $db_name);
if(mysqli_connect_errno())
{
	die("Failed to connect with MySQL : ".mysqli_connect_error());
}


$pan = $_SESSION["pan"];

$result = "select TotalTaxpaid from comp where PAN = $pan";
$Tax = mysqli_query($con,$result);

echo "TOTAL TAX TO BE PAID: ".$Tax." rupees /-";

?>