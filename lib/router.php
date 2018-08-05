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
            default:
                break;
        }
    }else{
        switch( $request_uri[0] ){  
            case '/danh-sach-lich-kham':
                require 'views/danh-sach-lich-kham.php';
                exit();
            case '/ho-so-benh-an':
                require 'views/benhAn-bacsi.php';
                exit();
            case '/them-ho-so-benh-an':
                require 'views/thembenhAn.php';
                exit();
            case '/danh-sach-benh-nhan':
                require 'views/danh_sach_benh_nhan.php';
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
            break;
            exit();
        case '/p-dangnhap':
            require 'include/dangnhap.php';
            break;
            exit();
        case '/dangki':
            require 'views/dangki.php';
            break;
            exit();
        case '/p-dangki':
            require 'include/dangki.php';
            break;
            exit();
        case '/forgot-password':
            require 'views/forgot-pass.php';
            break;
            exit();
        case '/p-forgotpassword':
            require 'include/forgot-pass.php';
            break;
            exit();

        default:
            require 'views/404.php';
            break;
            exit();
    }
}
?>