<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"  "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="icon" type="image/x-icon" href="./images/favicon.png">
</head>
<body>
<?php
$database_host = "carrental.cvn4jmb3rmul.us-east-1.rds.amazonaws.com";
$database_user = "Carrental";
$database_pass = "Carrental";
$database_name = "Carrental";
$connection = mysqli_connect($database_host, $database_user, $database_pass, $database_name);
if (mysqli_connect_errno()) {
    die("Failed connecting to MySQL database. Invalid credentials" . mysqli_connect_error() . "(" . mysqli_connect_errno() . ")");
}

$License_no = $_POST["lno"];
$Model = $_POST["model"];
$Year = $_POST["year"];
$Ctype = $_POST["Cartype"];


$result = "INSERT INTO car(License_no,Model,Year,Ctype) VALUES('$License_no','$Model','$Year','$Ctype')";
mysqli_query($connection, $result) or die(mysqli_error($connection));
echo "<script>
          alert('Car has been added successfully');
          location.href = 'cars.php';
          </script>";


?>

</body>
</html>
