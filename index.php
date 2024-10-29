    <!-- Header file -->
    <?php include "partials/header.php";
    include "partials/connect.php";
    if($login)
    { 
        #slider code starts
        echo '
        <div id="carouselExampleCaptions" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://source.unsplash.com/1600x550/?coding" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>First slide label</h5>
        <p>Some representative placeholder content for the first slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1600x550/?coding" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Second slide label</h5>
        <p>Some representative placeholder content for the second slide.</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://source.unsplash.com/1600x550/?coding" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>';
#slider code ends
#blocks code starts
$sql = "SELECT * FROM `category`";
$result = mysqli_query($conn,$sql);
echo '
<div class="container my-3">
    <h1 class="text-center my-3">CodeMaster - Categories</h1>
    <div class="row justify-content-center">';
while($row = mysqli_fetch_assoc($result)){
    $title = $row['category_title'];
    $id = $row['category_id'];
    $description = $row['category_description'];
    echo'
    <div class="col-lg-3 m-2 text-center">
        <div class="card mx-auto" style="width: 18rem;">
            <img src="https://images.unsplash.com/photo-1661956601030-fdfb9c7e9e2f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=742&q=80" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">'.$title.'</h5>
                <p class="card-text">'.substr($description,0,150).'...</p>
                <a href="threadlist.php?catid='.$id.'" class="btn btn-primary">Explore</a>
            </div>
        </div>
    </div>';
}
echo'</div>
</div>';
    }
    else{
        echo '<div class="alert alert-success my-5" role="alert">
        <h4 class="alert-heading">Please Login to see the content!</h4>
        <p>You successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
        <hr>
        <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
      </div>';
    }
    include "partials/footer.php"; ?>