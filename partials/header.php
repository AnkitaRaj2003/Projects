<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>CodeMaster</title>
  </head>
  <body>
    <?php include 'connect.php';
    session_start();
    $login = false;
    if(isset($_SESSION['loggedin']) && $_SESSION['loggedin']==true) $login=true;
    echo '
    <nav class="navbar navbar-expand-lg bg-dark">
    <div class="container-fluid">
      <a class="navbar-brand text-white" href="#">CodeMaster</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon bg-white"></span>
      </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 text-success">
      <li class="nav-item">
            <a class="nav-link text-white" aria-current="page" href="/../myCodes/Forum_website/index.php">Home</a>
          </li>
          <li class="nav-item">
          <a class="nav-link text-white" href="/../myCodes/Forum_website/about.php">About</a>
          </li>';
          if($login){
          echo '<li class="nav-item dropdown">
          <a class="nav-link text-white dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Categories
              </a>
              <ul class="dropdown-menu">';
              $sql = "SELECT * FROM `category` LIMIT 5";
              $result = mysqli_query($conn,$sql);
              while($row = mysqli_fetch_assoc($result)){
              echo '
              <li><a class="dropdown-item" href="/myCodes/Forum_website/threadlist.php?catid='.$row["category_id"].'">'.$row["category_title"].'</a></li>';
              }
              echo '<li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="partials/add_category_form.php">Add Category</a></li>
            </ul>
          </li>';
          }
          else{
            echo '<li class="nav-item text-muted dropdown">
              <a class="nav-link text-secondary"> Categories </a>
          </li>';
          }
          echo '<li class="nav-item">
            <a class="nav-link text-white" href="/../myCodes/Forum_website/contactus.php">Contact Us</a>
          </li>
          </ul>
          <form class="d-flex form-inline my-auto" method="get" action="search.php" role="search">
          <input class="form-control me-2" type="search" name="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-success text-white" type="submit">Search</button>
          </form>
          <div>';
          if(!$login){
              echo '
            <button class="btn btn-outline-success text-white ms-2">
              <a href="/../myCodes/Forum_website/login.php" class="nav-link text-white"> Login </a>
            </button>
            <button class="btn btn-outline-success text-white mx-2">
              <a href="/../myCodes/Forum_website/signup.php" class="nav-link text-white"> Signup </a>
            </button>';
          }
          else{
            echo '<button class="btn btn-outline-success text-white mx-2">
              <a href="/../myCodes/Forum_website/logout.php" class="nav-link text-white"> Logout </a>
            </button>
          </div>';
          }
        echo '</div>
      </div>
        </nav>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
        '?>
      </body>
</html>