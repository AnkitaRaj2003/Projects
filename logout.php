<?php include "partials/header.php";
$logout = false;
session_unset();
session_destroy();
$logout = true;
if($logout){
echo '<div class="alert alert-success my-5" role="alert">
You have now successfully loggedout
</div>';
}
include 'partials/footer.php';
?>