<?php
session_start();
if($_SESSION['id'] == null){
    header('Location: index.php');
}
require_once '../vendor/autoload.php';
$login = new \App\classes\Login();
if (isset($_GET['logout'])) {
    $login->adminLogout();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>
</head>
<body>

<?php include 'includes/menu.php'?>



<script src="../assets/jquery/jquery.min.js"></script>
<script src="../assets/js/bootstrap.bundle.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>