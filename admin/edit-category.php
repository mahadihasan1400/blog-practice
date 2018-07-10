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

if (isset($_POST['btn'])) {
    $message = $category->updateCategoryInfoById($_POST);
}
$categoryId = $_GET['id'];
$result = $category->getCategoryInfoById($categoryId);
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

<div class="container" style="margin-top: 20px">
    <div class="row">
        <div class="col-sm-8 mx-auto">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center" style="color: green"><?php echo $message ?></h3>

                    <form action="" method="post" id="editForm">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Category Name</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="category_name" value="<?php echo $result['category_name']?>">
                                <input type="hidden" class="form-control" name="category_id" value="<?php echo $result['id']?>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Category Description</label>
                            <div class="col-sm-9">
                                <textarea name="category_description" class="form-control"><?php echo $result['category_description']?>
                                </textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Publication Status</label>
                            <div class="col-sm-9">
                                <input type="radio" name="status" value="1" <?php if($result['publication_status'] == 1){echo 'checked';}?>/>Published
                                <input type="radio" name="status" value="0" <?php if($result['publication_status'] == 0){echo 'checked';}?>/>Unpublished
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-12">
                                <button type="submit" class="btn btn-success btn-block" name="btn">Update Category Info
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="../assets/jquery/jquery.min.js"></script>
<script src="../assets/js/bootstrap.bundle.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>

</body>
</html>