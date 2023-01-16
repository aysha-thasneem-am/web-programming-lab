<?php
include "connection.php";
session_start();
if(isset($_POST["submit"]))
{
    $uname=$_POST["uname"];
    $pass=$_POST["pass"];
    $q="select * from chugav where chug_name='$uname'";
    $res=mysqli_query($c,$q);
    foreach($res as $r)
    {
        if($r["chug_name"]==$uname &&$r["chug_pass"]==$pass)
        {
            $_SESSION['baby']=$uname;
            header("location:profile.php");
        }
    }
}


?>