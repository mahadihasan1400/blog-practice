<?php
session_start();

if ($_SESSION['id'] == null) {
    header('Location: index.php');
}

require_once '../vendor/autoload.php';
$login = new \App\classes\Login();
$blog = new \App\classes\Blog();
$message = '';

if (isset($_GET['logout'])) {
    $login->adminLogout();
}
$blogId = $_GET['id'];
$queryResult = $blog->getBlogInfoById($blogId);
$blogInfo = mysqli_fetch_assoc($queryResult);


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>
</head>
<body>

<?php include 'includes/menu.php' ?>

<div class="container mt-5">
    <div class="row">
        <div class="col-sm-12 table-responsive mx-auto">
            <table class="table table-dark ">

                <tr>
                    <td>Blog Id</td>
                    <td><?php echo $blogInfo['id']?></td>
                </tr>

                <tr>
                    <td>Blog title</td>
                    <td><?php echo $blogInfo['blog_title']?></td>
                </tr>
                <tr>
                    <td>Category Name</td>
                    <td><?php echo $blogInfo['category_name']?></td>
                </tr>
                <tr>
                    <td>Short Description</td>
                    <td><?php echo $blogInfo['short_description']?></td>
                </tr>
                <tr>
                    <td>Long Description</td>
                    <td><?php echo $blogInfo['long_description']?></td>
                </tr>
                <tr>
                    <td>Blog Image</td>
                    <td><img src="<?php echo $blogInfo['blog_image']?>" alt="image" width="200" height="250"/></td>
                </tr>
                <tr>
                    <td>Publication Status</td>
                    <td><?php echo $blogInfo['status'] == 1 ? 'published' : 'Unpublished' ?></td>
                </tr>
            </table>
        </div>
    </div>
</div>


<script src="../assets/jquery/jquery.min.js"></script>
<script src="../assets/js/bootstrap.bundle.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>