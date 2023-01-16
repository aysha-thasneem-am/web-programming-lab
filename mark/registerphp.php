<?php
include "connect.php";
if(isset($_POST['submit']))
{
    $rollno=$_POST['rollno'];
    $name=$_POST['name'];
    $phno=$_POST['phno'];
    $q="insert into student (name,rollno,ph_no) values('".$name."','".$rollno."','".$phno."')";
    $res=mysqli_query($conn,$q);
    if($res){
        echo " Student Registered";
        header("location:entry.php");
    }
}
?>