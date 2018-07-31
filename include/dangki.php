<?php 

    if(isset($_POST['submit-form-dangki'])){
        $name = $_POST['txt_name'];
        $sex = $_POST['rd_sex'];
        $address = $_POST['txt_address'];
        $birthday = $_POST['txt_birthday'];
        $bhyt = $_POST['txt_bhyt'];
        $cmt = $_POST['txt_cmt'];
        $dantoc = $_POST['txt_dantoc'];
        $email = $_POST['txt_email'];
        $sdt = $_POST['txt_sdt'];
        $username = $_POST['txt_username'];
        $password = $_POST['txt_password'];

        $conn = connection::_open();
        $sql = "INSERT INTO tbldangnhap (tenDangnhap,matKhau,Email,quyen) VALUES ('{$username}','{$password}','{$email}',0)";
        $data = mysqli_query($conn,$sql);
        $id =  mysqli_insert_id($conn);
        if( $id ){
            
        }
        connection::_close(conn);
    }
?>