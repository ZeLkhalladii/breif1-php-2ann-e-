<?php
session_start();
include('conect.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js">
    <link rel="stylesheet" href="style.css">
    <title>Plat</title>

</head>
<body>
    <br>
        <div class="container" style="width:790px;">
        <h3 align="center" id="day"></h3><br>
        <div class="row">


        <?php
       
        $sql = "SELECT * FROM product ORDER BY RAND()   LIMIT 1";
        $result = mysqli_query($conn, $sql);
        if(mysqli_num_rows($result) > 0)
        {
            while($row = mysqli_fetch_array($result))
            {
        ?>
<center>
     <div class="col-md-6">
         <form  action="registrationput.php" method="POST">
            <div class="con" >
                <img src="<?php echo $row["image"]; ?>"/>
                <h4><?php echo $row["name"]; ?></h4>
                <h4 class="text-danger">$ <?php echo $row["price"]; ?></h4>
                <input type="text"   name="quantity"  class="form-control" value="1" />
                <input type="hidden" name="hidden_name"  value=" <?php echo $row["price"]; ?>" />
                <input type="hidden" name="hidden_price"    value=" <?php echo $row["price"]; ?>" />
                <input type="submit" name="add_to_cart"  class="btn btn-success" value="Add to Cart">

           </div>
       </form>
     </div>

<?php

    }

}
?>
</div>
</div>

 

    <script>

    var d = new Date();
    var days = ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
    document.getElementById("day").innerHTML = days[d.getDay()];


    </script>
</body>
</html>