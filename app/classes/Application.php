<?php
/**
 * Created by PhpStorm.
 * User: mahad
 * Date: 7/12/2018
 * Time: 11:05 PM
 */

namespace App\classes;

use App\classes\Database;


class Application
{

    public function getAllPublishedblogInfo()
    {
        $link = Database::dbConnection();
        $sql = "SELECT * FROM blogs WHERE status = 1 ORDER BY id DESC LIMIT 3";

        if (mysqli_query($link, $sql)) {
            $queryResult = mysqli_query($link, $sql);
            return $queryResult;
        } else {
            die(mysqli_error($link));
        }
    }

}