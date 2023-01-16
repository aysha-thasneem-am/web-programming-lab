<?php
include "connect.php";
if(isset($_POST['submit']))
{
    $rollno=$_POST['rollno'];
    $subject=$_POST['subject'];
    $mark=$_POST['mark'];
    $totmark=$_POST['totmark'];
    $q="insert into marklist (rollno,subject,mark,total_mark) values('".$rollno."','".$subject."','".$mark."','".$totmark."')";
    $res=mysqli_query($conn,$q);
    if($res) {
        echo " Student's Mark Entered";
        header("location:entry.php");
    }
}
?>