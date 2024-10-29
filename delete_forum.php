<?php include './partials/connect.php';
$catid = $_GET['catid'];

$sql = "DELETE FROM `category` WHERE `category_id`='$catid'";
$result = mysqli_query($conn,$sql);
header("Location: ./index.php");
?>