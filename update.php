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
$Drate = $_POST["udrate"];
$Wrate = $_POST["uwrate"];
$Ctype = $_POST["Ctype"];
$vid = $_POST["vid"];
if (isset($_POST["udrate"]) AND isset($_POST["uwrate"])) {
    $res = "UPDATE car SET Drate=$Drate,Wrate=$Wrate WHERE Ctype='$Ctype' AND Vehicle_id='$vid' ";
}
$result = mysqli_query($connection, $res);
echo "<h1 style='text-align: center;'>" . $Ctype . "&nbsp;Rates updated</h1><br><br>";

echo "<script>
	var hi='$Ctype';
          alert(hi+' Rates Updated ');
          location.href = 'cars.php';
          </script>";
?>

</table>
</body>
</html>


