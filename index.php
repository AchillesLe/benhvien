<?php
if (session_status() == PHP_SESSION_NONE)
{
    session_start();
}

$request_uri = explode('?', $_SERVER['REQUEST_URI'], 2);
include('lib/database.php');
switch ($request_uri[0]) {

    case '/':
        if( isset($_SESSION['user'] )){
            require 'views/home.php';
        }else
        require 'views/dangnhap.php';
        break;
    case '/logout':
        require 'include/logout.php';
        break;
    default:
        require 'views/404.php';
        break;
}