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
$pwd = $_POST["pwd"];

$pan = stripcslashes($pan);
$pwd = stripcslashes($pwd);

$pan = mysqli_real_escape_string($con, $pan);
$pwd = mysqli_real_escape_string($con, $pwd);

$sql = "insert into login(Pan, Password) values ('$pan', '$pwd')";  

if(mysqli_query($con, $sql)){
	header('location: Home.html');
}  
else{  
	header('location: Register.html'); 
}     

?>
