<?php 
    
    if(isset($_POST['submit-form-dangki'])){
        $name = $_POST['txt_name'];
        $sex = $_POST['rd_sex'];
        $address = $_POST['txt_address'];
        $birthday = $_POST['txt_birthday'];
        $bhyt = $_POST['txt_bhyt'];
        $cmt = $_POST['txt_cmt'];
        $job = $_POST['txt_nghe'];
        $dantoc = $_POST['txt_dantoc'];
        $email = $_POST['txt_email'];
        $sdt = $_POST['txt_sdt'];
        $password = base64_encode($_POST['txt_password']);
        
        $conn = connection::_open();
        $sql = "SELECT * FROM tblbenhnhan WHERE CMND = '{$cmt}' or BHYT='{$bhyt}'";
        $data = mysqli_query($conn,$sql);
        if( $data != null ){
            $_SESSION['message-register'] = " Số CMND hoặc BHYT đã được đăng kí trong hệ thống , vui lòng kiểm tra lại .";
            header("Location: /dangki",301);
        }
        $sql = "SELECT * FROM tbldangnhap WHERE Email = '{$email}'";
        $data = mysqli_query($conn,$sql);
        if( $data != null ){
            $_SESSION['message-register'] = "Địa chỉ Email này đã được đăng kí trong hệ thống , vui lòng kiểm tra lại .";
            header("Location: /dangki",301);
        }
        $sql = "INSERT INTO tbldangnhap (matKhau,Email,quyen) VALUES ('{$password}','{$email}',1)";
        $data = mysqli_query($conn,$sql);
        $id =  mysqli_insert_id($conn);
        if( $id ){
            $sql = "INSERT INTO tblbenhnhan(tenBenhnhan,gioiTinh,diaChi,ngaySinh,CMND,danToc,ngheNghiep,BHYT,ngoaiTuyen,idDangnhap) VALUES ('{$name}','{$sex}','{$address}','{$birthday}','{$cmt}','{$dantoc}','{$job}','{$bhyt}','0','{$id}')";
            $data = mysqli_query($conn,$sql);
            if( $data == null){
                $_SESSION['message-register'] = "Có lỗi xuất hiện trong quá trình đăng kí vui lòng , thử lại lần nữa !";
                header("Location: /dangki",301);
            }
        }
        connection::_close($conn);
        $_SESSION['message-register'] = "Đăng kí thành công , xin mời đăng nhập !";
        header("Location: /",301);
    }
?>