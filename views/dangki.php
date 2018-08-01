<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Bệnh Viện Quân Dân Y Miền Đông - Đăng kí</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="css/bootstrap-datepicker.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header">Đăng kí tài khoản</div>
        <?php 
            if(isset($_SESSION['message-register'])){
                echo "<div class='alert alert-danger'>{$_SESSION['message-register']}</div>";
                unset($_SESSION['message-register']);
            }
        ?>
        <div class="card-body">
            <form id="form-dangki" method="POST" action="/p-dangki">
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" id="txt_name" name="txt_name" class="form-control" placeholder="Họ và tên" required="required">
                        <label for="txt_name">Họ và tên</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-3">
                            <label class="mr-5">Giới tính</label>
                        </div>
                        <div class="col-md-3">
                            <input type="radio" name="rd_sex"  value="Nam">
                            <label for="rd_sex">Nam</label>
                        </div>
                        <div class="col-md-3">
                            <input type="radio"  name="rd_sex" value="Nu">
                            <label for="rd_sex">Nữ</label>
                        </div>
                        <div class="col-md-3">
                            <input type="radio"  name="rd_sex" value="Khac">
                            <label for="rd_sex">Khác</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" id="txt_address" name="txt_address" class="form-control" placeholder="Địa chỉ" required="required">
                        <label for="txt_address">Địa chỉ</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="txt_birthday" name="txt_birthday" class="form-control" placeholder="Ngày sinh dd/mm/yyyy" required="required">
                                <label for="txt_birthday">Ngày sinh</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="txt_bhyt" name="txt_bhyt" class="form-control" placeholder="Bảo hiểm y tế" required="required">
                                <label for="txt_bhyt">Bảo hiểm y tế</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="txt_cmt" name="txt_cmt" class="form-control" placeholder="Chứng minh thư" required="required">
                                <label for="txt_cmt">Chứng minh thư</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="txt_dantoc" name="txt_dantoc" class="form-control" placeholder="Dân tộc" required="required">
                                <label for="txt_dantoc">Dân tộc</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="text" id="txt_nghe" name="txt_nghe" class="form-control" placeholder="Nghề nghiệp" required="required">
                        <label for="txt_nghe">Nghề nghiệp</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="email" id="txt_email" name="txt_email" class="form-control" placeholder="Email" required="required">
                                <label for="txt_email">Email</label>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-label-group">
                                <input type="text" id="txt_sdt" name="txt_sdt" class="form-control" placeholder="Số điện thoại" required="required">
                                <label for="txt_sdt">Số điện thoại</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-label-group">
                        <input type="email" id="txt_username" name="txt_username" class="form-control" placeholder="Tên đăng nhập" required="required">
                        <label for="txt_username">Tên đăng nhập</label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                        <div class="form-label-group">
                            <input type="password" id="txt_password" name="txt_password" class="form-control" placeholder="Password" required="required">
                            <label for="txt_password">Password</label>
                        </div>
                        </div>
                        <div class="col-md-6">
                        <div class="form-label-group">
                            <input type="password" id="txt_confirmPassword"  name="txt_confirmPassword"  class="form-control" placeholder="Confirm password" required="required">
                            <label for="txt_confirmPassword">Confirm password</label>
                        </div>
                        </div>
                    </div>
                </div>
                <input type="text" name="submit-form-dangki" id="submit-form-dangki" hidden>
                <input type="button" class="btn btn-primary btn-block btn-dangki" value="Đăng kí">
            </form>
            <div class="text-center">
                <a class="d-block small mt-3" href="/">Trang đăng nhập</a>
            </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/custom.js"></script>

  </body>

</html>
