<?php 
    if( isset($_POST['submit']) ){
        $email = $_POST['email'];
        $password = base64_encode($_POST['matkhau']);
        $conn = connection::_open();
        $sql = "select * from tblDangnhap where Email='$email' and  matKhau='$password'";
        $result = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
        if( empty($result)){
            $_SESSION['message-login'] = "Email hoặc mật khẩu không đúng ";
            header('Location: /',301);
        }else{
            if( isset($result['quyen']) ){
                $role = $result['quyen'];
                $idDangnhap = $result['id'];
                if( $role == 1){
                    $sql = "select * from tblbenhnhan where idDangnhap = '$idDangnhap'";
                    $result1 = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
                }else{
                    $sql = "select * from tblbacsi where idDangnhap = '$idDangnhap'";
                    $result1 = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
                }   
                if(!empty($result1))
                    $_SESSION['user'] = array_merge( $result , $result1 );
                    
                header('Location: /',301);
            }
            connection::_close($conn);
        }
    }
?>