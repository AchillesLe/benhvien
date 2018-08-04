<?php 

$request_uri = explode('?', $_SERVER['REQUEST_URI'], 2);
if( isset($_SESSION['user'] ) ){
    switch( $request_uri[0] ){
        case '/':
            require 'views/home.php';
            break;
        case '/inforbasic':
            require 'views/information.php';
            break;
        case '/p-inforbasic':
            require 'include/update-infor.php';
            break;
        case '/dangki-lichkham':
            require 'views/dangkilichkham.php';
            break;
        case '/p-dangki-lichkham':
            require 'include/lichkham.php';
            break;
        case '/check-lichkham':
            require 'include/lichkham.php';
            break;  
        case '/get-bacsi-by-idKhoa':
            require 'include/khoa.php';
            break;
        case '/dangxuat':
            require 'include/dangxuat.php';
            break;
        default:
            var_dump($_SESSION['user']);
            var_dump("=============================END_SESSION===================================");
            var_dump($_REQUEST);
            var_dump("===============================END_REQUEST=================================");
            var_dump($_POST);
            var_dump("===============================END_POST=================================");
            var_dump($request_uri[0]);
            var_dump("================================END_request_uri================================");
            die(var_dump($_GET));
            var_dump("================================END_GET================================");
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
        case '/forgot-password':
            require 'views/forgot-pass.php';
            break;
        case '/p-forgotpassword':
            require 'include/forgot-pass.php';
            break;

        default:
            var_dump($_REQUEST);
            var_dump("===============================END_REQUEST=================================");
            var_dump($_POST);
            var_dump("===============================END_POST=================================");
            var_dump($request_uri[0]);
            var_dump("================================END_request_uri================================");
            die(var_dump($_GET));
            var_dump("================================END_GET================================");
            require 'views/404.php';
            break;
    }
}
?>