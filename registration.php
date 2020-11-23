<?php
        include("conect.php");

 $fname = $lname = $number = $zone = '';

        $fname = $_POST['firstname'];
        $lname = $_POST['lastname'];
        $number = $_POST['num'];
        $zone = $_POST['zone'];

 $sql = "INSERT INTO tbluser (firstname,lastname,num,zone)
        VALUES ('$fname','$lname','$number','$zone')";

 $result = mysqli_query($conn, $sql);

    if ($result) {

        header("Location: email.php");

    } else {

        echo "Error :".$sql;

    }


?>