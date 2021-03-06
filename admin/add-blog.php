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

if(isset($_POST['btn'])){
   $message = $blog ->addBlog($_POST);
}
$queryResult = $blog->getAllPublishedCategory();

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
        <div class="col-sm-10 mx-auto">
            <div class="card">
                <div class="card-title">
                    <em><h6 class="text-center">Add Blog</h6></em>
                </div>
                <div class="card-body">
                    <h3 class="text-center" style="color: green"><?php echo $message ?></h3>

                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Category Name</label>
                            <div class="col-sm-9">

                                <select name="category_id" class="form-control">
                                    <option>------------------------Select Category Name----------------------------------------</option>
                                    <?php while ($category = mysqli_fetch_assoc($queryResult)) { ?>
                                        <option value="<?php echo $category['id']?>"><?php echo $category['category_name']?></option>
                                    <?php } ?>
                                </select>

                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Blog Title</label>
                            <div class="col-sm-9">
                                <input type="text" name="blog_title" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Short Description</label>
                            <div class="col-sm-9">
                                <textarea name="short_description" class="form-control">
                                </textarea>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Long Description</label>
                            <div class="col-sm-9">
                                <textarea name="long_description" class="form-control textarea" rows="10">
                                </textarea>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Blog Image</label>
                            <div class="col-sm-9">
                                <input type="file" name="blog_image" accept="image/*" class="form-control"/>
                            </div>
                        </div>


                        <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Publication Status</label>
                            <div class="col-sm-9">
                                <input type="radio" name="status" value="0"/>Unpublished
                                <input type="radio" name="status" value="1"/>Published
                            </div>
                        </div>

                        <div class="form-group row">
                            <div class="col-sm-12">
                                <button type="submit" class="btn btn-success btn-block" name="btn">Save Blog Info
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
<script src="../assets/tinymce/js/tinymce/tinymce.min.js"></script>
<script>tinymce.init({ selector:'.textarea' });</script>
<script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>