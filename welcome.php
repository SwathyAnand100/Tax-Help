<?php

$button1 = $_POST["button1"];
$button2 = $_POST["button2"];

if($button1)
{
	header('location:Register.html');
}
elseif($button2)
{
	header('location:Login.html');
}
else
{
	header('location:Welcome.html');
}

?>