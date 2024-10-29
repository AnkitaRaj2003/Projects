<?php include "partials/header.php";
include "./partials/connect.php";

// For comments
$thread_id = $_GET['thread_id'];
$sql = "SELECT * FROM `threads` WHERE `thread_id`='$thread_id'";
$result = mysqli_query($conn,$sql);
$thread_details = mysqli_fetch_assoc($result);
$thread_user_id = $thread_details['thread_user_id'];

// Fetching details of the user
$sql = "SELECT `username` FROM `login` WHERE `user_id`='$thread_user_id'";
$result = mysqli_query($conn,$sql);
$username = mysqli_fetch_assoc($result);

// Extract Current user info 
$formsubmit_username = $_SESSION['username'];
$sql = "SELECT * FROM `login` WHERE `username`='$formsubmit_username'";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);
$user_id = $row['user_id'];

//When user submits the form
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['detail'])) {
    $formsubmit_username = $_SESSION['username'];
    $comment_details = $_POST['detail'];
    $comment_details = str_replace("<","&lt",$comment_details);
    $comment_details = str_replace(">","&gt",$comment_details);
    
    // Extract user info who submitted the form
    $sql = "SELECT * FROM `login` WHERE `username`='$formsubmit_username'";
    $result = mysqli_query($conn,$sql);
    $row = mysqli_fetch_assoc($result);
    $comment_user_id = $row['user_id'];

    $sql = "INSERT INTO `comments`(`comment_thread_id`,`comment_user_id`,`comment_description`) VALUES('$thread_id','$comment_user_id','$comment_details')";
    $result = mysqli_query($conn,$sql);
}
?>

<div class="container my-4">
    <div class="jumbotron p-4 bg-secondary bg-opacity-25">
        <h1 class="display-4"><?php echo $thread_details['thread_title'] ?></h1>
        <p class="lead"><?php echo $thread_details['thread_description'] ?></p>
        <hr class="my-4">
        <p>This is a peer to peer discuss forum. Please maintain the decorum</p>
        <p class="lead">
        <img src="https://i.imgur.com/yTFUilP.jpg" alt="" class="rounded-circle" width="40" height="40">
            <?php echo $username['username']?>
        </p>
        <p>
            <?php echo 'Posted at '.$thread_details['thread_timestamp'];?>
        </p>
        <?php
        if($_SESSION['username']=='admin' || $thread_details['thread_user_id'] == $user_id){
            echo '<a href="delete_comment.php?thread_id='.$thread_id.'&catid='.null.'" class="btn btn-primary my-2">Delete Comment</a>';
        }
        ?>
    </div>
</div>
<!-- Main Body -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-5 col-md-6 col-12 pb-4">
                <h1>Comments</h1>
                <?php
                $sql = "SELECT * FROM `comments` WHERE `comment_thread_id`=$thread_id";
                $result = mysqli_query($conn, $sql);
                $row = mysqli_num_rows($result);
                if ($row == 0) {
                    echo '<div class="alert alert-secondary" role="alert">
                    Yayyy!! You will the first one to start the discussion...
                </div>';
                } else {
                    while ($row = mysqli_fetch_assoc($result)) {
                        $comment_description = $row['comment_description'];
                        $comment_timestamp = $row['comment_timestamp'];
                        $thread_user_id = $row['comment_user_id'];
                        $comment_id = $row['comment_id'];
                        $thread_id = $row['comment_thread_id'];

                        $sql = "SELECT * FROM `login` WHERE `user_id`=$thread_user_id";
                        $result1 = mysqli_query($conn,$sql);
                        $row1 = mysqli_fetch_assoc($result1);
                        $username = $row1['username'];

                        echo '<div class="comment mt-4 text-justify float-left">
                        <img src="https://i.imgur.com/yTFUilP.jpg" alt="" class="rounded-circle" width="40" height="40">
                        <h4>'.$username.'</h4>
                        <p>'.$comment_description.'</p>
                        <span style="display:block;">Posted at '.$comment_timestamp.'</span>';
                        if($_SESSION['username']=='admin' || $row['comment_user_id'] == $user_id){
                            echo '<a href="delete_thread_discussion_comment.php?comment_id='.$comment_id.'&thread_id='.$thread_id.'" class="btn btn-primary my-2">Delete Comment</a>';
                        }
                    echo '</div>';
                    }
                }
                ?>
            </div>
            <div class="col-lg-4 col-md-5 col-sm-4 offset-md-1 offset-sm-1 col-12 mt-4">
                <form action="<?php $_SERVER['REQUEST_URI'] ?>" method="post" id="algin-form">
                    <div class="form-group">
                        <h4>Join the Discussion</h4>
                        <label for="message">Enter Your Suggestion</label>
                        <textarea name="detail" id="message" msg cols="30" rows="4" class="form-control"></textarea>
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
</section>;

<?php include "partials/footer.php"; ?>