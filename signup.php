<?php
$exists = false;
$passnotmatch = false;
$showerror = false;
$showalert = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  include "partials/connect.php";
  if ($conn) {
    $username = $_POST["username"];
    $password = $_POST["password"];
    $cpassword = $_POST["cpassword"];
    $result = false;
    $sql = "SELECT `username` FROM `login` WHERE `username`='$username'";
    $result = mysqli_query($conn, $sql);
    $rows = mysqli_num_rows($result);
    if ($rows == 1) $exists = true;
    else {
      if ($password == $cpassword) {
        $hash = password_hash($password, PASSWORD_DEFAULT);
        $sql = "INSERT INTO `login`(`username`,`password`) VALUES('$username','$hash')";
        $result = mysqli_query($conn, $sql);
        if ($result) $showalert = true;
        else $showerror = true;
      } else $passnotmatch = true;
    }
  }
}
?>
<?php
include "partials/header.php";
include "partials/connect.php";
$msg = "";
#exists,passnotmatch,showerror,showalert,connerror
if($exists) $msg = "Email already exists";
else if($passnotmatch) $msg = "Passwords do not match";
else if(!$conn) $msg = "Error connecting to the database. Please try again later!";
else if($showalert){
  echo '<div class="alert alert-success" role="alert">'.'Account Successfully Created'.'</div>';
}
if($msg<>""){
  echo '<div class="alert alert-danger" role="alert" style="margin-bottom:0 !important;">'.$msg.'</div>';
}
// echo '<form action="signup.php" class="my-5" method="post">
// <div class="form-floating mb-3 border border-dark">
//   <input type="text" class="form-control" name="username" id="username" placeholder="Username">
//   <label for="username">Username</label>
// </div>
// <div class="form-floating mb-3 border border-dark">
//   <input type="password" class="form-control" id="password" name="password" placeholder="Password">
//   <label for="password">Password</label>
// </div>
// <div class="form-floating mb-3 border border-dark">
//   <input type="password" class="form-control" id="cpassword" name="cpassword" placeholder="Confirm Password">
//   <label for="cpassword">Confirm Password</label>
// </div>
// <button type="submit" class="btn btn-primary">Submit</button>
// </form>';
echo '<section class="vh-100" style="background-color: #9A616D;">
<div class="container py-5 h-100">
  <div class="row d-flex justify-content-center align-items-center h-100">
    <div class="col col-xl-10">
      <div class="card" style="border-radius: 1rem;">
        <div class="row g-0">
          <div class="col-md-6 col-lg-5 d-none d-md-block">
            <img src="https://images.unsplash.com/photo-1521737711867-e3b97375f902?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8Y29kaW5nJTIwZ3JvdXB8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"
              alt="login form" class="img-fluid" style="height:100%;border-radius: 1rem 0 0 1rem;" />
          </div>
          <div class="col-md-6 col-lg-7 d-flex align-items-center">
            <div class="card-body p-4 p-lg-5 text-black">

              <form action="signup.php" method="post">

                <div class="d-flex align-items-center mb-3 pb-1">
                  <span class="h1 fw-bold mb-0">Signup</span>
                </div>

                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

                <div class="form-outline mb-4">
                  <input type="text" id="form2Example17" class="form-control form-control-lg"  placeholder="Enter Username" name="username" />
                  <label class="form-label" for="form2Example17">Username</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" id="form2Example27" name="password" class="form-control form-control-lg" placeholder="Enter Password" />
                  <label class="form-label" for="form2Example27">Password</label>
                </div>

                <div class="form-outline mb-4">
                  <input type="password" id="form2Example27" name="cpassword" class="form-control form-control-lg" placeholder="Enter Confirm password" />
                  <label class="form-label" for="form2Example27">Confirm Password</label>
                </div>

                <div class="pt-1 mb-4">
                  <input type="submit" class="btn btn-dark btn-lg btn-block" value="Signup">
                </div>

                <a class="small text-muted" href="#!">Forgot password?</a>
                <p class="mb-5 pb-lg-2" style="color: #393f81;">Don\'t have an account? <a href="#!"
                    style="color: #393f81;">Register here</a></p>
                <a href="#!" class="small text-muted">Terms of use.</a>
                <a href="#!" class="small text-muted">Privacy policy</a>
              </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</section>';
include 'partials/footer.php';
?>
