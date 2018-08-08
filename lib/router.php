<?php 

$request_uri = explode('?', $_SERVER['REQUEST_URI'], 2);
if( isset($_SESSION['user'] ) ){
    if( $_SESSION['user']['quyen'] == 1 ){
        switch( $request_uri[0] ){ 
            case '/dangki-lichkham':
                require 'views/dangkilichkham.php';
                exit();
            case '/p-dangki-lichkham':
                require 'include/lichkham.php';
                exit();
            case '/check-lichkham':
                require 'include/lichkham.php'; 
                exit();
            case '/get-bacsi-by-idKhoa':
                require 'include/khoa.php';
                exit();
            case '/ho-so-benh-an':
                require 'views/benhAn-benhnhan.php';
                exit();
            default:
                break;
        }
    }
    else{
        // var_dump("------------");
        // var_dump($request_uri);
        // var_dump("------------");
        // var_dump($_GET);
        // $new_uri = explode("/",$request_uri);
        // die( var_dump($new_uri) );

        switch( $request_uri[0] ){  
            case '/ho-so-benh-an':
                require 'views/benhAn-bacsi.php';
                exit();
            case '/them-ho-so-benh-an':
                require 'views/thembenhAn.php';
                exit();
            case '/danh-sach-benh-nhan':
                require 'views/danh_sach_benh_nhan.php';
                exit();
            case '/dat-hen':
                require 'views/bs-dat-hen.php';
                exit();
            default:
                break;
        }
        
    }

    switch( $request_uri[0] ){ 
        case '/':
            require 'views/home.php';
            exit();
        case '/inforbasic':
            require 'views/information.php';
            exit();
        case '/p-inforbasic':
            require 'include/update-infor.php';
            exit();
        case '/comfirm-done':
            require 'include/lichkham.php';
            exit();
        case '/dangxuat':
            require 'include/dangxuat.php';
            exit();
        default:
            require 'views/404.php';
            exit();
    }
    
}else{
    switch ($request_uri[0]) {
        case '/':
            require 'views/dangnhap.php';
            exit();
        case '/p-dangnhap':
            require 'include/dangnhap.php';
            exit();
        case '/dangki':
            require 'views/dangki.php';
            exit();
        case '/p-dangki':
            require 'include/dangki.php';
            exit();
        case '/forgot-password':
            require 'views/forgot-pass.php';
            exit();
        case '/p-forgotpassword':
            require 'include/forgot-pass.php';
            exit();

        default:
            require 'views/404.php';
            exit();
    }
}
?>