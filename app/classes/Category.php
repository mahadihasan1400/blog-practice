<?php
/**
 * Created by PhpStorm.
 * User: mahadi
 * Date: 7/10/2018
 * Time: 7:54 PM
 */

namespace App\classes;
use App\classes\Database;

class Category
{


    public function saveCategoryInfo($data)
    {
        $link = Database::dbConnection();
        $categoryName = $data['category_name'];
        $categoryDescription = $data['category_description'];
        $publicationStatus = $data['status'];
        $sql = "INSERT INTO categories (category_name, category_description, publication_status) VALUES ('$categoryName', '$categoryDescription', '$publicationStatus');";
        if (mysqli_query($link, $sql)) {
            $message = "Category Info Save Successfully";
            return $message;
        }else{
            die('Query Problem: ' . mysqli_error($link));
        }

    }


    public function getAllCategoryInfo(){
        $link = Database::dbConnection();
        $sql = "SELECT * FROM categories";
        if(mysqli_query($link,$sql)){
            $queryResult = mysqli_query($link,$sql);
            return $queryResult;
        }else{
            die('Query Problem: '. mysqli_error($link));
        }
    }

    public function getCategoryInfoById($categoryId){
        $link = Database::dbConnection();
        $sql = "SELECT * FROM categories WHERE id = '$categoryId'";
        if(mysqli_query($link,$sql)){
            $queryResult = mysqli_query($link,$sql);
            return mysqli_fetch_assoc($queryResult);
        }else{
            die('Query Problem: '. mysqli_error($link));
        }

    }

}