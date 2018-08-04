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
        $job = $user['quyen']==1 ? $_POST['txt_nghe'] : "";
        $dantoc = $_POST['txt_dantoc'];
        $email = $_POST['txt_email'];
        $sdt = $_POST['txt_sdt'];
        $birthday = date("Y-m-d", strtotime($birthday) );
        $password = $_POST['txt_pass'];
        $table = $user['quyen']==1?"tblbenhnhan":"tblbacsi";
        // kiểm tra cmt đã tồn tại hay chưa
        if( $cmt != $user['CMND'] && $cmt!='' ){
            $conn = connection::_open();
            $sql = "SELECT * FROM {$table}  WHERE  CMND = '{$cmt}'";
            $data = mysqli_query($conn,$sql)->num_rows;
            connection::_close($conn);
            if( $data != 0 ){
                $_SESSION['message-update-infor'] = " Số CMND  đã được đăng kí trong hệ thống , vui lòng kiểm tra lại .";
                $_SESSION['status'] = false;
                echo "<meta http-equiv='Refresh' content='0;URL=/inforbasic' />";
                exit();
            }
        }
        // kiểm tra bảo hiểm y tế đã tồn tại hay chưa
        if( $bhyt != $user['BHYT'] && $bhyt!='' ){
            $conn = connection::_open();
            $sql = "SELECT * FROM {$table}  WHERE  BHYT='{$bhyt}'";
            $data = mysqli_query($conn,$sql)->num_rows;
            connection::_close($conn);
            if( $data != 0 ){
                $_SESSION['message-update-infor'] = " Số  BHYT đã được đăng kí trong hệ thống , vui lòng kiểm tra lại .";
                $_SESSION['status'] = false;
                echo "<meta http-equiv='Refresh' content='0;URL=/inforbasic' />";
                exit();
            }
        }
        // kiểm tra email đã tồn tại hay chưa
        if( $email != $user['Email'] ){
            $conn = connection::_open();
            $sql = "SELECT * FROM tbldangnhap WHERE Email = '{$email}'";
            $data = mysqli_query($conn,$sql)->num_rows;
            connection::_close($conn);
            if(  $data != 0 ){
                $_SESSION['message-update-infor'] = "Địa chỉ Email này đã được đăng kí trong hệ thống , vui lòng kiểm tra lại .";
                $_SESSION['status'] = false;
                echo "<meta http-equiv='Refresh' content='0;URL=/inforbasic' />";
                exit();
            }
        }
        // cập nhật thông tin
        $conn = connection::_open();
        $sql = "UPDATE  tbldangnhap SET ";
        if( $password != $user['matKhau']){
            $password = base64_encode($password );
            $sql .= " matKhau = '{$password}' , ";
        }
        $sql .= "Email ='{$email}' WHERE id='{$idDangnhap}'";
        $data = mysqli_query($conn,$sql);
        if($data){
            $sql = "UPDATE {$table}  SET ten = '{$name}', gioiTinh ='{$sex}',soDT='{$sdt}',ngaySinh ='{$birthday}',diaChi = '{$address}',CMND = '{$cmt}',danToc = '{$dantoc}', BHYT = '{$bhyt}'";
            if( $user['quyen'] == 1 ){
                $sql .=", ngheNghiep = '{$job}' " ;
            } 
            $sql .= " WHERE id='{$id}' ";
            $data = mysqli_query($conn,$sql);
            if(!$data){
                connection::_close($conn);
                $_SESSION['message-update-infor'] = "Có lỗi xuất hiện trong quá trình cập nhật thông tin , thử lại lần nữa !";
                $_SESSION['status'] = false;
                echo "<meta http-equiv='Refresh' content='0;URL=/inforbasic' />";
                exit();
            }
            $sql = "SELECT * FROM tbldangnhap B , {$table}  A  WHERE A.idDangnhap = B.id AND A.id='{$id}'";
            $data = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
            if($data ){
                $_SESSION['user'] = $data;
            }
        }
        connection::_close($conn);
        $_SESSION['message-update-infor'] = "Cập nhật thông tin thành công  !";
        $_SESSION['status'] = true;
        echo "<meta http-equiv='Refresh' content='0;URL=/inforbasic' />";
        exit();
    }
?>