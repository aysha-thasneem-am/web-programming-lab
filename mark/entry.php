<body>
    <form action="markentry.php" method="POST">
       
       Student:<br>
       <select name="rollno">
            <?php
            include "connect.php";
            $q="select * from student ORDER BY `student`.`rollno` ASC";
            $res=mysqli_query($conn,$q);
            $op='';
            foreach($res as $r){
                $op.="<option values='".$r['rollno']."'>".$r['rollno']." - ".$r['name']." </option>";
            }
            echo $op;
            ?>
         </select><br>
        Subject:<br>
         <input type="text" name="subject" required><br>
         Mark:<br>
         <input type="number" name="mark" required><br>
         Total Mark:<br>
         <input type="number" name="totmark" required><br>
          <input type="submit" name="submit"/><br>
    <a href="register.php">Register Student</a>
    </form>
    <table border=1>
       <tr>
        <th>Name </th>
        <th>Rollno </th>
        <th>Subject </th>
        <th>Mark </th>
        <th>Total Mark </th></tr><tbody>
        <?php
        $q="SELECT *,(SELECT name FROM student WHERE student.rollno=marklist.rollno)as name FROM `marklist` ORDER BY `name` ASC";
        $columndata=mysqli_query($conn,$q);
        $op='';
        foreach($columndata as $r)
        {
            $op.="<tr>";
            $op.="<td>".$r['name']."</td>";
            $op.="<td>".$r['rollno']."</td>";
            $op.="<td>".$r['subject']."</td>";
            $op.="<td>".$r['mark']."</td>";
            $op.="<td>".$r['total_mark']."</td></tr></tbody>";
        }
        echo $op;
        ?>
    </table>
</body>