<?php 

$request_uri = explode('?', $_SERVER['REQUEST_URI'], 2);

if( isset($_SESSION['user'] ) ){
    switch( $request_uri[0] ){
        case '/':
            require 'views/home.php';
            break;
        case '/dangki-lichkham':
            require 'views/dangkilichkham.php';
            break;
        case '/dangxuat':
            require 'include/dangxuat.php';
            break;
        default:
            require 'views/404.php';
            break;
    }
}else{
    switch ($request_uri[0]) {
        case '/':
            require 'views/dangnhap.php';
            break;
        case '/p-dangnhap':
            require 'include/dangnhap.php';
            break;
        case '/dangki':
            require 'views/dangki.php';
            break;
        case '/p-dangki':
            require 'include/dangki.php';
            break;
        default:
            require 'views/404.php';
            break;
    }
}



?>