<?php
session_start();

if ($_SESSION['id'] == null) {
    header('Location: index.php');
}

require_once '../vendor/autoload.php';
$login = new \App\classes\Login();
$category = new \App\classes\Category();
$message = '';

if (isset($_GET['logout'])) {
    $login->adminLogout();
}

if(isset($_GET['delete'])){
    $categoryId = $_GET['id'];
    $category -> deleteCategoryInfoById($categoryId);
}

$queryResult = $category->getAllCategoryInfo();


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
                <thead>
                <tr>
                    <th scope="col">Sl NO</th>
                    <th scope="col">Category Name</th>
                    <th scope="col">Category Description</th>
                    <th scope="col">Publication Status</th>
                    <th scope="col">Action</th>
                </tr>
                </thead>
                <tbody>

                <?php while ($category = mysqli_fetch_assoc($queryResult)) { ?>
                    <tr>
                        <td width="10%"><?php echo $category['id'] ?></td>
                        <td width="15%"><?php echo $category['category_name'] ?></td>
                        <td width="50%"><?php echo $category['category_description'] ?></td>
                        <td width="15%"><?php echo $category['publication_status'] == 1 ? 'published' : 'Unpublished' ?></td>
                        <td width="10%">
                            <a href="edit-category.php?id=<?php echo $category['id']?>">Edit</a>
                            <a href="?delete=true&id=<?php echo $category['id']?>">Delete</a>
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