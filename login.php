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

$pan = $_POST["pan"];
$pwd = $_POST["pwd"];

$pan = stripcslashes($pan);
$pwd = stripcslashes($pwd);

$pan = mysqli_real_escape_string($con, $pan);
$pwd = mysqli_real_escape_string($con, $pwd);

$sql = "select * from login where pan = '$pan' and password = '$pwd'";  
$result = mysqli_query($con, $sql);  
$row = mysqli_fetch_array($result, MYSQLI_ASSOC);  
$count = mysqli_num_rows($result);  

$_SESSION["pan"] = $pan;
          
if($count == 1){  
     header('location: Home.html');
}  
else{  
     header('location: Login.html');
}     

?>
