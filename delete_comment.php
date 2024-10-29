<?php include './partials/connect.php';
$thread_id = $_GET['thread_id'];
$sql = "SELECT `thread_cat_id` FROM `threads` WHERE `thread_id`='$thread_id'";
$result = mysqli_query($conn,$sql);
$id = mysqli_fetch_assoc($result)['thread_cat_id'];
$sql = "DELETE FROM `threads` WHERE `thread_id`='$thread_id'";
$result = mysqli_query($conn,$sql);
header("location: threadlist.php?catid=$id");
?>