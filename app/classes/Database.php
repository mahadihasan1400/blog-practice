<?php
/**
 * Created by PhpStorm.
 * User: mahadi
 * Date: 7/9/2018
 * Time: 7:23 PM
 */

namespace App\classes;


class Database
{

    public function dbConnection(){


        $hostName = "localhost";
        $userName = "root";
        $password = "";
        $dbName = "blog_practice";

        $link = mysqli_connect($hostName, $userName, $password, $dbName);
        return $link;

    }


}