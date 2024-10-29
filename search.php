<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        h3 a:hover{
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <?php include './partials/header.php'?>
    <div class="container">
        <h1 class="my-2 text-center">Search result for <i>"<?php echo $_GET['search']?>"</i></h1>
        <div class="search-result">
        <?php 
         $search_text = $_GET['search'];
         $sql = "SELECT * FROM `threads` WHERE match(`thread_title`,`thread_description`) against ('$search_text')";
         $result = mysqli_query($conn,$sql);
         $row = mysqli_num_rows($result);
         if($row==0){
            echo '<div class="alert alert-secondary" role="alert">
            Sorry! No search result found...
            </div>';
         }
         while($row = mysqli_fetch_assoc($result)){
            $title = $row["thread_title"];
            $desc = $row["thread_description"];
            $id = $row['thread_id'];
            echo "<h3><a class=\"text-dark\" style=\"text-decoration: none;\" href=\"./thread_discussion.php?thread_id=$id\">$title</a></h3>
            <p>$desc</p><hr>";
         }
        ?>
        </div>
    </div>
    <?php include './partials/footer.php'?>
</body>
</html>