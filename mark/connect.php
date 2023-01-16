<?php
$conn=mysqli_connect("localhost","root","","mtk");
if(!$conn)
{
    echo "connection error".mysqli_connect_error();
    exit();
}
else
{
echo"CONNECTED";
}
?>