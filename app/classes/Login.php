<?php
/**
 * Created by PhpStorm.
 * User: mahad
 * Date: 7/9/2018
 * Time: 4:02 PM
 */

namespace App\classes;

use App\classes\Database;


class Login
{
    public function adminLoginCheck($data)
    {

        $email = $data['email'];
        $password = md5($data['password']);
        $sql = "SELECT * FROM users WHERE email = '$email' AND password = '$password'";

        if (mysqli_query(Database::dbConnection(), $sql)) {
            $queryResult = mysqli_query(Database::dbConnection(), $sql);
            $user = mysqli_fetch_assoc($queryResult);

            if ($user) {
                header('Location: dashboard.php');
            } else {
                $message = "please use valid email address & password";
                return $message;
            }

        } else {

            die("Query Problem:" . mysqli_error(Database::ddbConnection()));

        }


    }

    public function adminLogout()
    {
        header('Location: index.php');
    }
}