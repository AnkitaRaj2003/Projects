<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        h5:hover{
            text-decoration: underline;
        }
    </style>
</head>
<body>
    
    <?php include "partials/header.php";
include "./partials/connect.php";

// For comments
$catid = $_GET['catid'];
$sql = "SELECT * FROM `category` WHERE `category_id`=$catid";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$title = $row['category_title'];
$description = $row['category_description'];
$deletetheforum = false;
// Extract Current user info 
$formsubmit_username = $_SESSION['username'];
$sql = "SELECT * FROM `login` WHERE `username`='$formsubmit_username'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$user_id = $row['user_id'];
//When user submits the form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $thread_title = $_POST['title'];
    $thread_title = str_replace("<","&lt;",$thread_title);
    $thread_title = str_replace(">","&gt;",$thread_title,);
    $thread_description = $_POST['detail'];
    $thread_description = str_replace("<","&lt",$thread_description);
    $thread_description = str_replace(">","&gt",$thread_description);
    $sql = "INSERT INTO `threads`(`thread_title`,`thread_description`,`thread_user_id`,`thread_cat_id`) VALUES('$thread_title','$thread_description','$user_id','$catid')";
    $result = mysqli_query($conn, $sql);
}
?>

<div class="container my-4">
    <div class="jumbotron p-4 bg-secondary bg-opacity-25">
        <h1 class="display-4">Welcome to <?php echo $title ?> Forum!</h1>
        <p class="lead"><?php echo $description ?></p>
        <hr class="my-4">
        <p>This is a peer to peer discuss forum. Please maintain the decorum</p>
        <p class="lead">
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
        </p>
    </div>
</div>
<!-- Main Body -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-5 col-md-6 col-12 pb-4">
                <h1>Comments</h1>
                <?php
                $sql = "SELECT * FROM `threads` WHERE `thread_cat_id`=$catid";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_num_rows($result);
                if ($row == 0) {
                    echo '<div class="alert alert-secondary" role="alert">
                    Oops! There is no comment right now...
                    </div>';
                } else {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $thread_title = $row['thread_title'];
                        $thread_description = $row['thread_description'];
                        $thread_timestamp = $row['thread_timestamp'];
                        $thread_user_id = $row['thread_user_id'];
                        $thread_id = $row['thread_id'];
                        
                        $sql = "SELECT * FROM `login` WHERE `user_id`=$thread_user_id";
                        $result1 = mysqli_query($conn, $sql);
                        $row = mysqli_fetch_assoc($result1);
                        $username = $row['username'];
                        
                        echo '<div class="comment mt-4 text-justify float-left">
                        <img src="https://i.imgur.com/yTFUilP.jpg" alt="" class="rounded-circle" width="40" height="40">
                        <h4>' . $username . '</h4>
                        <a href="thread_discussion.php?thread_id='.$thread_id.'" style="color:black; text-decoration:none;"><h5>' . $thread_title . '</h5></a>
                        <p>' . $thread_description . '</p>
                        <span style="display:block;">Posted at ' . $thread_timestamp . '</span>';
                        
                        if($_SESSION['username']=='admin' || $thread_user_id == $user_id){
                            echo '<a href="delete_comment.php?thread_id='.$thread_id.'&catid='.$catid.'" class="btn btn-primary my-2">Delete Comment</a>';
                        }
                    echo '</div>';
                }
                }
                ?>
                
            </div>
            <div class="col-lg-4 col-md-5 col-sm-4 offset-md-1 offset-sm-1 col-12 mt-4">
                <form action="<?php $_SERVER['REQUEST_URI'] ?>" method="post" id="algin-form">
                    <div class="form-group">
                        <h4>Leave a comment</h4>
                        <label for="message">Enter your issue title</label>
                        <textarea name="title" id="message" required msg cols="30" rows="2" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="message1">Explain your issue</label>
                        <textarea name="detail" id="message1" required msg cols="30" rows="5" class="form-control"></textarea>
                    </div>
                    <div class="form-inline">
                        <input type="checkbox" name="check" id="checkbx" class="mr-1">
                        <label for="subscribe">Subscribe me to the newlettter</label>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Submit now">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<?php
if($_SESSION['username']=='admin'){
    echo '<div class="text-center">
    <a href="delete_forum.php?catid='.$catid.'" class="btn btn-primary">Delete Forum</a>
    </div>';
}
?>
<?php include "partials/footer.php"; ?>
</body>
</html>