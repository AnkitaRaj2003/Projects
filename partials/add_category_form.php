<?php
$showerror = false;
$showalert = false;
$exists = false;
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    include 'connect.php';
    if ($conn) {
        $title = $_POST['title'];
        $description  = $_POST['description'];

        //Check if the category already exists or not
        $sql = "SELECT `category_title` FROM `category` WHERE `category_title`='$title'";
        $result = mysqli_query($conn,$sql);
        $row = mysqli_num_rows($result);
        if($row == 1) $exists = true;
        else{
            $sql = "INSERT INTO `category`(`category_title`,`category_description`) VALUES('$title','$description')";
            $result = mysqli_query($conn,$sql);
            if($result) $showalert = true;
            else $showerror = true;
        }
    }
    else $showerror = true;
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Category-Form</title>
    <style>
        body {
            background-color: #fff;
            font-family: helvetica;
        }

        body h3 {
            text-align: center;
            margin-top: 30px;
            font-size: 40px;
            color: #000;
        }

        table {
            margin: auto;
            border-radius: 3px;
            box-shadow: 0px 0px 10px 0px;
            padding: 10px;
            background-color: #fff;
        }

        table td {
            font-size: 20px;
            color: #000;
        }

        table th {
            visibility: hidden;
            display: none;
        }

        input[type="text"] {
            width: 200px;
            height: 35px;
            border: 1px solid silver;
            border-radius: 3px;
            font-size: 17px;
            padding: 5px;
        }

        .btn {
            margin: 0 1rem;
            padding: 7px 25px;
        }

        .buttons {
            display: flex;
            justify-content: center;
            margin-top: 2rem;
        }

        @media only screen and (min-width:180px) and (max-width:679px) {
            table {
                width: 100%;
            }

            table .column1 {
                visibility: hidden;
                display: none;
            }

            table th {
                visibility: visible;
                display: block;
                font-size: 20px;
                color: #E6E6E6;
            }

            input[type="text"],
            #description {
                width: 80%;
                margin-left: 10%;
            }
        }
    </style>
</head>

<body>
    <?php include 'header.php' ;
        if($showerror) echo '<div class="alert alert-danger" role="alert">Error in submitting the form. Please try again later!</div>';
        else if($showalert) echo '<div class="alert alert-success" role="alert">Your Form is Successfully Submitted</div>';
        else if($exists) echo '<div class="alert alert-danger" role="alert">Category already exists. Please Submit another category!</div>'
    ?>
    <h3>Add Category Form</h3>
    <form action="add_category_form.php" method="post">
        <table cellspacing=10>
            <tr>
                <td class="column1">
                    <label for="title">
                        Category Title:
                    </label>
                </td>
                <td>
                    <?php 
                        if($_SESSION['username']=='admin') echo '<input type="text" placeholder="Category Title" maxlength="50" id="title" name="title" required>';
                        else echo '<input type="text" disabled placeholder="Category Title" maxlength="50" id="title" name="title" required>'
                    ?>
                </td>
            </tr>
            <tr>
                <td class="column1">
                    <label for="description">
                        Category Description:
                    </label>
                </td>
                <td>
                    <?php 
                        if($_SESSION['username']=='admin') echo '<textarea name="description" id="description" cols="30" rows="10" minlength="150" required placeholder="Category Description" style="font-family:helvetica;"></textarea>';
                        else echo '<textarea name="description" id="description" cols="30" rows="10" minlength="150" required disabled placeholder="Category Description" style="font-family:helvetica;"></textarea>';
                    ?>
                </td>
            </tr>
            <tr>
                <td>
                    <?php 
                        if($_SESSION['username']=='admin') echo '<input class="btn" type="submit" value="Submit">';
                        else echo '<input disabled class="btn" type="submit" value="Submit">';
                    ?>
                </td>
                <td>
                    <?php 
                        if($_SESSION['username']=='admin') echo '<input class="btn" type="reset" value="Reset">';
                        else echo '<input disabled class="btn" type="reset" value="Reset">';
                    ?>
                </td>
            </tr>
        </table>
    </form>
    <p class="text-center p-3">*Only Admin can add new forums</p>
    <div style="position:absolute;bottom:0;width:100%;">
        <?php include 'footer.php' ?>
    </div>
</body>

</html>