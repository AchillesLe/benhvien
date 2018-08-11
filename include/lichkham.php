<?php 

    if( isset($_SESSION['user'])){
        ob_start();
        if( isset($_POST['nameRequest']) && $_POST['nameRequest'] == REQUEST_DANGKILICHKHAM ){
            $id_bacsi = $_POST['sel_bacsi'];
            $id_benhnhan = ( $_SESSION['user'] )['id'];
            $idkhoa = $_POST['sel_khoa'];
            $ngaykham = str_replace('/', '-', $_POST['txt_ngaykham']);
            $stt = $_POST['sel_time'];
            $giokham = $array_time[$_POST['sel_time']];
            $lido = $_POST['txt_reason'];
            $sdt = $_POST['txt_sdt'];
            $ngaykham = date("Y-m-d", strtotime($ngaykham) );
            if(  $_POST['sel_bacsi'] == 0 ){
                // Những bác sĩ trong khoa mà ko có bất cứ lịch hẹn nào trong ngày
                $conn = connection::_open();
                $sql = "SELECT F.id FROM tblbacsi F WHERE   F.idKhoa ='{$idkhoa}' AND F.id NOT IN 
                    ( SELECT A.id FROM  tblbacsi A JOIN tbldatlichkham  B ON A.id = B.idBacsi  WHERE ngayhen='{$ngaykham}' ) ";
                $data = mysqli_query($conn,$sql);
                if($data->num_rows != 0){
                    $data = $data->fetch_all(MYSQLI_ASSOC);
                    $id_bacsi = $data[0]['id'];
                }else{
                    // Những bác sĩ trong khoa có lịch khám bệnh trong ngày ít nhất
                    $sql = "SELECT B.id ,count(C.id) as sohen 
                            FROM  tblkhoa A
                                JOIN tblbacsi B ON A.id = B.idKhoa
                                LEFT  JOIN tbldatlichkham  C ON B.id = C.idBacsi		
                            WHERE A.id = '{$idkhoa}'  AND C.ngayhen='{$ngaykham}' 
                                        GROUP BY B.id  ORDER BY sohen ASC";
                    $data = mysqli_query($conn,$sql);
                    if($data->num_rows != 0){
                        $data = $data->fetch_all(MYSQLI_ASSOC);
                        $id_bacsi = $data[0]['id'];
                    }
                
                }

            }
            // Tạo lịch hẹn không bị trùng
            $conn = connection::_open();
            $sql = "INSERT INTO tbldatlichkham(idBenhnhan,idBacsi,soTT,ngayHen,gioHen,soDT,lyDo)
                VALUES('{$id_benhnhan}','{$id_bacsi}','{$stt}','{$ngaykham}','{$giokham}','{$sdt}','{$lido}')";
            $data = mysqli_query($conn,$sql);

            if($data){
                //lấy thông tin bác sĩ và khoa để gửi mail
                $sql = "SELECT * FROM tblbacsi A , tblkhoa B WHERE A.idKhoa=B.id AND A.id = $id_bacsi ";
                $data = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
                // send mail
                $inforMail = array(
                    'emailTo'=>( $_SESSION['user'] )['Email'],
                    'subject'=>"Mail đăng kí lịch hẹn",
                    'body'=>"Bạn đã đặt lịch hẹn khám bệnh với bác sĩ <b>{$data['ten']}</b> lúc <b>{$giokham}</b> ngày <b>{$_POST['txt_ngaykham']}</b> tại khoa <b>{$data['tenKhoa']}</b> , số thứ thự của bạn là <b>{$stt}</b>.<p>Mong bạn tới đúng giờ , xin cảm ơn !</p>",
                );
                $mail = new Mail();
                $result = $mail->send($inforMail);
                if($result){
                    $_SESSION['message-dklichkham'] = "Đăng kí thành công ! Vui lòng kiểm tra email .";
                    $_SESSION['status'] = true;
                }else{
                    $_SESSION['message-dklichkham'] = "Đăng kí thành công ! Số thứ thự của bạn là <b>{$stt}</b>. Mong bạn tới đúng giờ xin cảm ơn !";
                    $_SESSION['status'] = true;
                }
            }            
            connection::_close($conn);
            echo "<meta http-equiv='Refresh' content='0;URL=/dangki-lichkham' />";
            exit(); 
            
        }else if(isset($_POST['nameRequest']) && $_POST['nameRequest'] == REQUEST_CHECKTIMELICHKHAM){
            $id_benhnhan = $id_benhnhan = ( $_SESSION['user'] )['id'];
            $id_bacsi =  $_POST['idbacsi'];
            $idkhoa = $_POST['idkhoa'];
            $namekhoa = $_POST['namekhoa'];
            $indextime =  $_POST['indextime'];
            $time =  $_POST['time'];
            $ngay =  str_replace('/', '-', $_POST['ngay']);
            $ngay =  date("Y-m-d", strtotime($ngay) );
            $result = ['status'=>true,'massage'=>""];
            //Kiềm tra trùng khoa
            $conn = connection::_open();
            $sql  = "SELECT * FROM tbldatlichkham A , tblbacsi  B WHERE A.idBacsi = B.id AND A.idBenhnhan = {$id_benhnhan}  AND ngayHen='{$ngay}' AND B.idkhoa = {$idkhoa}  ";
            $data = mysqli_query($conn,$sql);
            connection::_close($conn);
            if($data->num_rows != 0 ){
                $result['status'] = false;
                $result['massage'] = "Bạn đã có sẵn 1 lịch hẹn với khoa {$namekhoa}  trong ngày {$_POST['ngay']}. Vui lòng chọn khoa khác !";
                echo json_encode($result);
                exit();
            }
            //Kiểm tra lịch hẹn  có trùng ngày giờ 
            $conn = connection::_open();
            $sql  = "SELECT * FROM tbldatlichkham WHERE idBenhnhan ='{$id_benhnhan}' AND ngayHen='{$ngay}' AND soTT='{$indextime}'  ";
            $data = mysqli_query($conn,$sql);
            connection::_close($conn);
            if($data->num_rows != 0 ){
                $result['status'] = false;
                $result['massage'] = "Bạn đã có sẵn 1 lịch hẹn lúc {$time}  trong ngày {$_POST['ngay']}. Vui lòng chọn thời gian khác !";
                echo json_encode($result);
                exit();
            }
            if( $_POST['idbacsi'] != 0 ){
                //Kiểm tra lịch hẹn có trùng ngày giờ và bác sĩ với người khác hay không
                $conn =  connection::_open();
                $sql  = "SELECT * FROM tbldatlichkham WHERE idBenhnhan !='{$id_benhnhan}'
                                                        AND idBacsi='{$id_bacsi}' 
                                                        AND ngayHen='{$ngay}' 
                                                        AND soTT='{$indextime}'  ";
                $data = mysqli_query($conn , $sql);
                connection::_close($conn);
                if($data->num_rows != 0 ){
                    $result['status'] = false;
                    $result['massage'] = "Đã có người đặt lúc {$time}  trong ngày {$_POST['ngay']}. Vui lòng chọn thời gian khác !";
                    echo json_encode($result);
                    exit();
                } 
            } 
        }else if(isset($_POST['nameRequest']) && $_POST['nameRequest'] == REQUEST_CONFIRM_DONE){
            if( isset( $_POST['id'] ) ){
                $id = $_POST['id'];
                $conn = connection::_open();
                $sql = "UPDATE tbldatlichkham SET tinhTrang = '0' WHERE id='{$id}'" ;
                $data = mysqli_query($conn,$sql);
                if($data){
                    echo json_encode(['status'=>true]);exit();
                }
                else{
                    echo json_encode(['status'=>false]);exit();
                }
            }
            
        }else if(isset($_POST['nameRequest']) && $_POST['nameRequest'] == REQUEST_CHECKTIMELICHHEN){
            $id_bacsi = ( $_SESSION['user'] )['id'];
            $id_benhnhan = $_POST['idbn'] ;
            $ngayhen = str_replace('/', '-', $_POST['ngay']);
            $stt = $_POST['indextime'];
            $giokham = $array_time[$_POST['indextime']];
            $ngayhen = date("Y-m-d", strtotime($ngayhen) );
            $conn = connection::_open();
            /** check các bác sĩ khác khoa đặt lịch vs bệnh nhân cùng 1 giờ trong 1 ngày */
            $sql = "SELECT * FROM tbldatlichkham A WHERE  A.idBenhnhan = '{$id_benhnhan}' AND A.ngayHen = '{$ngayhen}' AND A.soTT = '{$stt}'";
            $data = mysqli_query($conn,$sql);
            if($data->num_rows != 0){
                connection::_close($conn);
                $result['status'] = false;
                $result['massage'] = "Bệnh nhân đã có  sẵn 1 lịch hẹn lúc {$giokham}  trong ngày {$ngayhen}. Vui lòng chọn ngày/giờ khác !";
                echo json_encode($result);
                exit();
            }
            /** check cac bác sĩ cùng khoa đặt lịch vs bệnh nhan hoặc bệnh nhan có lịch hẹn trong khoa trong cùng 1 ngày */
            $conn = connection::_open();
            $sql = "SELECT * FROM tblbacsi WHERE id='{$id_bacsi}' AND idKhoa in (SELECT B.idKhoa FROM tbldatlichkham A,tblbacsi B WHERE A.idBacsi = B.id AND A.idBenhnhan = '{$id_benhnhan}' AND A.ngayHen = '{$ngayhen}') ";
            $data = mysqli_query($conn,$sql);
            if($data->num_rows != 0){
                connection::_close($conn);
                $result['status'] = false;
                $result['massage'] = "Bệnh nhân đã có  sẵn 1 lịch hẹn ở khoa của bạn  trong ngày {$ngayhen}. Vui lòng chọn ngày khác !";
                echo json_encode($result);
                exit();
            }
        }else if(isset($_POST['nameRequest']) && $_POST['nameRequest'] == REQUEST_DANGKILICHHEN){
            $id_bacsi = ( $_SESSION['user'] )['id'];
            $id_benhnhan = $_POST['id_bn'] ;
            $ngayhen = str_replace('/', '-', $_POST['txt_ngayhen']);
            $stt = $_POST['sel_time_hen'];
            $giohen = $array_time[ $stt ];
            $lyDo = $_POST['txt_reason'];
            $ngayhen = date("Y-m-d", strtotime($ngayhen) );
            $conn = connection::_open();
            $sql = "INSERT INTO tbldatlichkham(idBenhnhan,idBacsi,soTT,ngayHen,gioHen,lyDo,chuDong) VALUES ('{$id_benhnhan}','{$id_bacsi}','{$stt}','{$ngayhen}','{$giohen}','{$lyDo}','1') ";
            $result = mysqli_query($conn,$sql);
           
            if($result){
                $sql = "SELECT * FROM tblbenhnhan A, tbldangnhap B WHERE A.idDangnhap = B.id AND A.id= '{$id_benhnhan}'";
                $result_2 = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
                if( $result_2 ){
                    $email =  $result_2['Email'];
                    $name_bacsi = ( $_SESSION['user'] )['ten'];
                    $inforMail = array(
                        'emailTo'=>$email,
                        'subject'=>"BỆNH VIÊN QUÂN DÂN Y MIÊN ĐÔNG",
                        'body'=>"Bác sĩ <b> {$name_bacsi} </b> đã hẹn bạn tới khám tại Bệnh Viện Quân Dân Y Miền Đông lúc {$giohen} ngày {$ngayhen}. <p>Mong bạn thu xếp thời gian tới khám , vì sức khỏe của bạn . Trân trọng !</p>",
                    );
                    $mail = new Mail();
                    $result = $mail->send($inforMail);
                    $_SESSION['message-dklichhen'] = "Đặt lịch hẹn thành công !";
                    $_SESSION['status'] = true;
                    connection::_close($conn);
                    echo "<meta http-equiv='Refresh' content='0;URL=/danh-sach-benh-nhan' />";
                }

            }else{
                $_SESSION['message-dklichhen'] = "Đặt lịch hẹn thất bại ! Vui lòng thử lại ";
                $_SESSION['status'] = false;
                connection::_close($conn);
                echo "<meta http-equiv='Refresh' content='0;URL=/dat-hen' />";
            }
            

        }

        ob_end_flush();
    }
?>