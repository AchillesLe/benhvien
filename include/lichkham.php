<?php 
    if( isset($_SESSION['user'])){
        ob_start();
        if( isset($_POST['nameRequest']) && $_POST['nameRequest'] == REQUEST_DANGKILICHKHAM ){
            $id_bacsi = $_POST['sel_bacsi'];
            $id_benhnhan = ( $_SESSION['user'] )['id'];
            $ngaykham = str_replace('/', '-', $_POST['txt_ngaykham']);
            $stt = $_POST['sel_time'];
            $giokham = $array_time[$_POST['sel_time']];
            $lido = $_POST['txt_reason'];
            $sdt = $_POST['txt_sdt'];
            $ngaykham = date("Y-m-d", strtotime($ngaykham) );

            $conn = connection::_open();
            $sql = "INSERT INTO tbldatlichkham(idBenhnhan,idBacsi,soTT,ngayHen,gioHen,soDT,lyDo)
                     VALUES('{$id_benhnhan}','{$id_bacsi}','{$stt}','{$ngaykham}','{$giokham}','{$sdt}','{$lido}')";
            $data = mysqli_query($conn,$sql);
            
            if($data){
                $sql = "SELECT * FROM tblbacsi A , tblkhoa B WHERE A.idKhoa=B.id AND A.id = $id_bacsi ";
                $data = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
                connection::_close($conn);
                // send mail
                include('lib/sendmail.php');
                $inforMail = array(
                    'emailTo'=>( $_SESSION['user'] )['Email'],
                    'subject'=>"Mail đăng kí lịch hẹn",
                    'body'=>"Bạn đã đặt lịch hẹn khám bệnh với bác sĩ <b>{$data['ten']}</b> lúc <b>{$giokham}</b> tại khoa <b>{$data['tenKhoa']}</b> .<p>Mong bạn tới đúng giờ , xin cảm ơn !</p>",
                );
                $mail = new Mail();
                $result = $mail->send($inforMail);
                $_SESSION['message-dklichkham'] = "Đăng kí thành công ! Vui lòng kiểm tra email .";
                $_SESSION['status'] = true;
                
                header('Location : /dangki-lichkham',301);
                exit();
                
            }else{
                $_SESSION['message-dklichkham'] = "Xuất hiện lỗi trong quá trình đăng kí , vui lòng thử lại sau.";
                $_SESSION['status'] = false;
                header('Location : /dangki-lichkham',301);
                exit();
            }
            connection::_close($conn);
            
        }else if(isset($_POST['nameRequest']) && $_POST['nameRequest'] == REQUEST_CHECKTIMELICHKHAM){
            if( $_POST['idbacsi'] != 0 ){
                $id_benhnhan = $id_benhnhan = ( $_SESSION['user'] )['id'];
                $id_bacsi =  $_POST['idbacsi'];
                $indextime =  $_POST['indextime'];
                $time =  $_POST['time'];
                $ngay =  str_replace('/', '-', $_POST['ngay']);
                $ngay =  date("Y-m-d", strtotime($ngay) );
                $result = ['status'=>true,'massage'=>""];
                $conn =  connection::_open();
                $sql  = "SELECT * FROM tbldatlichkham WHERE idBacsi='{$id_bacsi}' 
                                                        AND ngayHen='{$ngay}' 
                                                        AND soTT='{$indextime}'  ";
                $data = mysqli_query($conn , $sql);
                connection::_close($conn);
                if($data->num_rows != 0 ){
                    $result['status'] = false;
                    $result['massage'] = "Đã có người đặt lúc {$time} . Vui lòng chọn thời gian khác !";
                    echo json_encode($result);
                }
            }else{

            }
        }        
        ob_end_flush();
    }
?>