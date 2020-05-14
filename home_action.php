<?php

$button1 = $_POST["button1"];
$button2 = $_POST["button2"];
$button3 = $_POST["button3"];

if($button1)
{
	header('location:Page1.html');
}
elseif($button2)
{
	header('location:Page1.html');
}
else
{
	header('location:Welcome.html');
}

?>