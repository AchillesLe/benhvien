<?php 
    if(isset($_POST['submit'])){
        $username = $_POST['tendangnhap'];
        $password = $_POST['matkhau'];
        $conn = connection::_open();
        $sql = "select * from tblDangnhap where tenDangnhap='$username' and  matKhau='$password'";
        $result = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
        if( empty($result)){
            echo "<script>alert('Tên đăng nhập hoặc mặt khẩu không đúng !');</script>";
        }else{
            if( isset($result['quyen']) ){
                $role = $result['quyen'];
                $idDangnhap = $result['idDangnhap'];
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
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Bệnh viện quân dân y miền đông - đăng nhập</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Đăng nhập</div>
        <div class="card-body">
          <form action="" method="POST">
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" id="inputEmail" name="tendangnhap" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
                <label for="inputEmail">Tên đăng nhập</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" name="matkhau" class="form-control" placeholder="Password" required="required">
                <label for="inputPassword">Mật khẩu</label>
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Remember Password
                </label>
              </div>
            </div>
            <input class="btn btn-primary btn-block" type="submit" name="submit" value="Đăng Nhập">
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="register.html">Đăng kí</a>
            <a class="d-block small" href="forgot-password.html">Quên mật khẩu !</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  </body>

</html>
