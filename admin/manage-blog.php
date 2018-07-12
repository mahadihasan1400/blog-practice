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

if (isset($_GET['delete'])) {
    $blogId = $_GET['id'];
    $blog->deleteBlogInfoById($blogId);
}

$queryResult = $blog->getAllBlogInfo();


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
            <table class="table table-bordered">
                <thead class="table-dark">
                <tr>
                    <th scope="col">Sl NO</th>
                    <th scope="col">blog Title</th>
                    <th scope="col">Category Name</th>
                    <th scope="col">Publication Status</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>

                <?php
                $i = 1;
                while ($blogInfo = mysqli_fetch_assoc($queryResult)) { ?>
                    <tr>
                        <td width="10%"><?php echo $i++ ?></td>
                        <td width="15%"><?php echo $blogInfo['blog_title'] ?></td>
                        <td width="15%"><?php echo $blogInfo['category_name'] ?></td>
                        <td width="15%"><?php echo $blogInfo['status'] == 1 ? 'published' : 'Unpublished' ?></td>
                        <td width="10%">
                            <a href="edit-blog.php?id=<?php echo $blogInfo['id'] ?>">Edit</a>
                            <a href="view-blog.php?id=<?php echo $blogInfo['id'] ?>">view</a>
                            <a href="?delete=true&id=<?php echo $blogInfo['id'] ?>">Delete</a>
                        </td>
                    </tr>
                <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>


<script src="../assets/jquery/jquery.min.js"></script>
<script src="../assets/js/bootstrap.bundle.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>