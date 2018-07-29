<?php
// Grabs the URI and breaks it apart in case we have querystring stuff
$request_uri = explode('?', $_SERVER['REQUEST_URI'], 2);
include('lib/database.php');
// Route it up!
switch ($request_uri[0]) {
    // Home page
    case '/':
        if(  isset($_SESSION['user'] )){
            require 'views/home.php';
        }else
        require 'views/dangnhap.php';
        break;
    case '/home':
        require 'views/home.php';
        break;
    case '/logout':
        require 'include/logout.php';
        break;
    // Everything else
    default:
        header('HTTP/1.0 404 Not Found');
        require 'views/404.php';
        break;
}