<?php 
    if(isset($_POST['submit-update-infor']) && isset($_SESSION['user']) ){
        $user = $_SESSION['user'];
        $id= $_POST['id'];
        $idDangnhap= $_POST['idDangnhap'];
        $name = $_POST['txt_name'];
        $sex = $_POST['rd_sex'];
        $address = $_POST['txt_address'];
        $birthday = str_replace('/', '-', $_POST['txt_birthday']);
        $bhyt = $_POST['txt_bhyt'];
        $cmt = $_POST['txt_cmt'];
        $job = $_POST['txt_nghe'];
        $dantoc = $_POST['txt_dantoc'];
        $email = $_POST['txt_email'];
        // $sdt = $_POST['txt_sdt'];
        $birthday = date("Y-m-d", strtotime($birthday) );
        $password = base64_encode($_POST['txt_pass']);
        
        $conn = connection::_open();
        if( $cmt != $user['CMND'] && $cmt!='' ){
            $sql = "SELECT * FROM tblbenhnhan WHERE  CMND = '{$cmt}'";
            $data = mysqli_query($conn,$sql)->num_rows;
            if( $data != 0 ){
                $_SESSION['message-update-infor'] = " Số CMND  đã được đăng kí trong hệ thống , vui lòng kiểm tra lại .";
                $_SESSION['status'] = false;
                header("Location: /inforbasic",301);
                exit();
            }
        }
        if( $bhyt != $user['BHYT'] && $bhyt!='' ){
            $sql = "SELECT * FROM tblbenhnhan WHERE  BHYT='{$bhyt}'";
            $data = mysqli_query($conn,$sql)->num_rows;
            if( $data != 0 ){
                $_SESSION['message-update-infor'] = " Số  BHYT đã được đăng kí trong hệ thống , vui lòng kiểm tra lại .";
                $_SESSION['status'] = false;
                header("Location: /inforbasic",301);
                exit();
            }
        }
        if( $email != $user['Email'] ){
            $sql = "SELECT * FROM tbldangnhap WHERE Email = '{$email}'";
            $data = mysqli_query($conn,$sql)->num_rows;
            if(  $data != 0 ){
                $_SESSION['message-update-infor'] = "Địa chỉ Email này đã được đăng kí trong hệ thống , vui lòng kiểm tra lại .";
                $_SESSION['status'] = false;
                header("Location: /inforbasic",301);
                exit();
            }
        }
        $sql = "UPDATE  tbldangnhap SET matKhau = '{$password}' , Email ='{$email}' WHERE id='{$idDangnhap}' ";
        $data = mysqli_query($conn,$sql);
        $sql = "UPDATE  tblbenhnhan SET tenBenhnhan = '{$name}' , gioiTinh ='{$sex}' , ngaySinh ='{$birthday}',diaChi = '{$address}',CMND = '{$cmt}',danToc = '{$dantoc}',ngheNghiep = '{$job}',BHYT = '{$bhyt}' WHERE id='{$id}' ";
        $data = mysqli_query($conn,$sql);

        if(!$data){
            $_SESSION['message-update-infor'] = "Có lỗi xuất hiện trong quá trình cập nhật thông tin , thử lại lần nữa !";
            $_SESSION['status'] = false;
            header("Location: /inforbasic",301);
            exit();
        }
     
        connection::_close($conn);
        $_SESSION['message-update-infor'] = "Cập nhật thông tin thành công  !";
        $_SESSION['status'] = true;
        header("Location: /inforbasic",301);
        exit();
    }
?>