<?php
if(isset( $_POST['txt_email'] )){
    ob_start();
    include('lib/sendmail.php');
    $email =  $_POST['txt_email'];
    $conn = connection::_open();
    $sql = "SELECT * FROM tbldangnhap WHERE Email ='{$email}'";
    $data = mysqli_query( $conn , $sql )->fetch_array(MYSQLI_ASSOC);
    connection::_close($conn);
    if( $data ){
        $pass = base64_decode($data['matKhau']);
        $url_login = SITE_NAME;
        $inforMail = array(
            'emailTo'=>$email,
            'subject'=>"Send mail forgot password",
            'body'=>"Mật khẩu của bạn là <b>{$pass} !</b><h3>Đi tới <a href='{$url_login}'>trang đăng nhập</a>!</h2>"
        );
        $mail = new Mail();
        $result = $mail->send($inforMail);
        if($result){
            $_SESSION['message-forgotmail'] ="Mail đã được gửi thành công , vui lòng kiểm tra mail !";
            $_SESSION['status'] = true;
            header("Location: /forgot-password",301);
            exit();
        }else{
            $_SESSION['message-forgotmail'] ="Xuất hiện lỗi trong quá trình gửi mail , vui lòng thử lại !";
            $_SESSION['status'] = false;
            header("Location: /forgot-password",301);
            exit();
        }
    }else{
        $_SESSION['message-forgotmail'] = "Địa chỉ mail chưa không có trong hệ thống vui lòng kiểm tra lại .";
        $_SESSION['status'] = false;
        header("Location: /forgot-password",301);
        exit();
    }
    ob_end_flush();
    
}
