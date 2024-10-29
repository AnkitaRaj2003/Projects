<?php include './partials/connect.php';
$comment_id = $_GET['comment_id'];
$thread_id = $_GET['thread_id'];
$sql = "DELETE FROM `comments` WHERE `comment_id`='$comment_id'";
$result = mysqli_query($conn,$sql);
header("location: thread_discussion.php?thread_id=$thread_id");
?>