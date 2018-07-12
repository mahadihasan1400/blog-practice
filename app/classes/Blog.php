<?php
/**
 * Created by PhpStorm.
 * User: mahad
 * Date: 7/12/2018
 * Time: 12:06 AM
 */

namespace App\classes;

use App\classes\Database;

class Blog
{


    public function getAllPublishedCategory()
    {
        $link = Database::dbConnection();

        $sql = "SELECT * FROM categories WHERE publication_status = '1'";

        if (mysqli_query($link, $sql)) {
            $queryResult = mysqli_query($link, $sql);
            return $queryResult;
        } else {
            die(mysqli_error($link));
        }


    }

    public function addBlog($data)
    {
        $link = Database::dbConnection();
        $categoryId = $data['category_id'];
        $blogTitle = $data['blog_title'];
        $shortDescription = $data['short_description'];
        $longDescription = $data['long_description'];
        $status = $data['status'];

        /* Image check rules
         * 1. already a image
         * 2. file already exist
         * 3. type check ('jpg','png')
         * 4. size check
         */

        $directory = "../assets/images/";
        $fileName = $_FILES['blog_image']['name'];
        $tmpFileDir = $_FILES['blog_image']['tmp_name'];
        $imageSize = $_FILES['blog_image']['size'];
        $imageUrl = $directory . $fileName;
        $fileType = pathinfo($fileName, PATHINFO_EXTENSION);
        $check = getimagesize($tmpFileDir);

        if ($check) {

            if (file_exists($imageUrl)) {
                die('this file already exist.please select another one.Thanks');
            } else {
                if ($fileType == 'jpg' or $fileType == 'JPG' or $fileType == 'png') {

                    if ($imageSize > 5000000) {

                        die('Image size is too large.please choose with in 5000kb');

                    } else {

                        $sql = "INSERT INTO blogs (category_id,blog_title,short_description,long_description,blog_image,status) VALUES ('$categoryId','$blogTitle','$shortDescription','$longDescription','$imageUrl','$status')";
                        if (mysqli_query($link, $sql)) {
                            $message = 'Blog in fo save successfully';
                            move_uploaded_file($tmpFileDir, $imageUrl);
                            return $message;
                        } else {
                            die('Query Problem:' . mysqli_error($link));
                        }


                    }
                } else {
                    die('Image type is not supported.please use jpg or png');
                }

            }

        } else {
            die('please chose a image file thanks !.');
        }


    }

    public function getAllBlogInfo()
    {
        $link = Database::dbConnection();
        $sql = "SELECT b.*, c.category_name FROM blogs AS b, categories AS c WHERE b.category_id = c.id";

        if (mysqli_query($link, $sql)) {
            $queryResult = mysqli_query($link, $sql);
            return $queryResult;
        } else {
            die(mysqli_error($link));
        }


    }

    public function getBlogInfoById($id)
    {
        $link = Database::dbConnection();
        $sql = "SELECT b.*, c.category_name FROM blogs AS b, categories AS c WHERE b.category_id = c.id AND b.id = '$id'";
        if (mysqli_query($link, $sql)) {
            $queryResult = mysqli_query($link, $sql);
            return $queryResult;
        } else {
            die(mysqli_error($link));
        }


    }


    public function updateBlogInfo($data)
    {
        $link = Database::dbConnection();
        $categoryId = $data['category_id'];
        $blogTitle = $data['blog_title'];
        $shortDescription = $data['short_description'];
        $longDescription = $data['long_description'];
        $status = $data['status'];
        $blogId = $data['blog_id'];
        $unlinkImagePath = $data['blog_image_path'];
        $blogImage = $_FILES['blog_image']['name'];
        if ($blogImage) {
            $directory = "../assets/images/";
            $fileName = $_FILES['blog_image']['name'];
            $tmpFileDir = $_FILES['blog_image']['tmp_name'];
            $imageSize = $_FILES['blog_image']['size'];
            $imageUrl = $directory . $fileName;
            $fileType = pathinfo($fileName, PATHINFO_EXTENSION);
            $check = getimagesize($tmpFileDir);
            if ($check) {

                if (file_exists($imageUrl)) {
                    die('this file already exist.please select another one.Thanks');
                } else {
                    if ($fileType == 'jpg' or $fileType == 'JPG' or $fileType == 'png') {
                        if ($imageSize > 5000000) {
                            die('Image size is too large.please choose with in 5000kb');
                        } else {
                            $sql = "UPDATE blogs SET category_id = '$categoryId', blog_title = '$blogTitle', short_description = '$shortDescription',long_description = '$longDescription',blog_image = '$imageUrl', status = '$status' WHERE id = '$blogId'";
                            if (mysqli_query($link, $sql)) {
                                unlink($unlinkImagePath);
                                move_uploaded_file($tmpFileDir, $imageUrl);
                                header('Location: manage-blog.php');
                            } else {
                                die('Query Problem:' . mysqli_error($link));
                            }
                        }
                    } else {
                        die('Image type is not supported.please use jpg or png');
                    }

                }

            } else {
                die('please chose a image file thanks !.');
            }
        } else {

            $sql = "UPDATE blogs SET category_id = '$categoryId', blog_title = '$blogTitle', short_description = '$shortDescription',long_description = '$longDescription', status = '$status' WHERE id = '$blogId'";
            if (mysqli_query($link, $sql)) {

                header('Location: manage-blog.php');
            } else {
                die(mysqli_error($link));
            }

        }

    }

}