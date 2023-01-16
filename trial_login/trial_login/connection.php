<?php
$c=mysqli_connect("localhost","root","","baby");
if(!$c)
{
    echo "connection failed".mysqli_connect_error();
    exit();
}
else
echo "connected successfull";
?>