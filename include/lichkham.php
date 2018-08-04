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

            $conn = connection::_open();
            //Kiểm tra lịch hẹn  có trùng ngày giờ 
            $sql  = "SELECT * FROM tbldatlichkham WHERE idBenhnhan='{$id_benhnhan}' AND ngayHen='{$ngaykham}' AND soTT='{$stt}'  ";
            $data = mysqli_query($conn,$sql);
            if($data->num_rows !=0 ){
                $_SESSION['message-dklichkham'] = "Đăng kí thất bại ! Bạn đã có sẵn 1 lịch hẹn lúc {$giokham} trong ngày {$_POST['txt_ngaykham']} . Vui lòng kiểm tra lại !";
                $_SESSION['status'] = false;
                header('Location : /dangki-lichkham',301);
                exit();
            }
            //Kiểm tra lịch hẹn có trùng ngày giờ và bác sĩ với người khác hay không
            $sql  = "SELECT * FROM tbldatlichkham WHERE idBacsi='{$id_bacsi}'
            AND ngayHen='{$ngaykham}' 
            AND soTT='{$stt}'  ";
            $data = mysqli_query($conn,$sql);
            if($data->num_rows !=0 ){
                $_SESSION['message-dklichkham'] = "Đăng kí thất bại ! Có người đã đặt lịch hẹn lúc {$giokham} trong ngày {$_POST['txt_ngaykham']} trước bạn . Vui lòng chọn giờ khác !";
                $_SESSION['status'] = false;
                header('Location : /dangki-lichkham',301);
                exit();
            }
            // Tạo lịch hẹn không bị trùng
            $sql = "INSERT INTO tbldatlichkham(idBenhnhan,idBacsi,soTT,ngayHen,gioHen,soDT,lyDo)
                VALUES('{$id_benhnhan}','{$id_bacsi}','{$stt}','{$ngaykham}','{$giokham}','{$sdt}','{$lido}')";
            $data = mysqli_query($conn,$sql);
            if($data->num_rows){
                 //lấy thông tin bac sĩ và khoa đểgửi mail
                $sql = "SELECT * FROM tblbacsi A , tblkhoa B WHERE A.idKhoa=B.id AND A.id = $id_bacsi ";
                $data = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
                connection::_close($conn);
                // send mail
                include('lib/sendmail.php');
                $inforMail = array(
                    'emailTo'=>( $_SESSION['user'] )['Email'],
                    'subject'=>"Mail đăng kí lịch hẹn",
                    'body'=>"Bạn đã đặt lịch hẹn khám bệnh với bác sĩ <b>{$data['ten']}</b> lúc <b>{$giokham}</b> tại khoa <b>{$data['tenKhoa']}</b> , số thứ thự của bạn là <b>'{$stt}'</b>.<p>Mong bạn tới đúng giờ , xin cảm ơn !</p>",
                );
                $mail = new Mail();
                $result = $mail->send($inforMail);
                $_SESSION['message-dklichkham'] = "Đăng kí thành công ! Vui lòng kiểm tra email .";
                $_SESSION['status'] = true;
                
            }
            header('Location : /dangki-lichkham',301);
            exit();
            connection::_close($conn);
            
        }else if(isset($_POST['nameRequest']) && $_POST['nameRequest'] == REQUEST_CHECKTIMELICHKHAM){
            $id_benhnhan = $id_benhnhan = ( $_SESSION['user'] )['id'];
            $id_bacsi =  $_POST['idbacsi'];
            $indextime =  $_POST['indextime'];
            $time =  $_POST['time'];
            $ngay =  str_replace('/', '-', $_POST['ngay']);
            $ngay =  date("Y-m-d", strtotime($ngay) );
            $result = ['status'=>true,'massage'=>""];
            if( $_POST['idbacsi'] != 0 ){
                $conn =  connection::_open();
                $sql  = "SELECT * FROM tbldatlichkham WHERE idBacsi='{$id_bacsi}' 
                                                        AND ngayHen='{$ngay}' 
                                                        AND soTT='{$indextime}'  ";
                $data = mysqli_query($conn , $sql);
                connection::_close($conn);
                if($data->num_rows != 0 ){
                    $result['status'] = false;
                    $result['massage'] = "Đã có người đặt lúc {$time}  trong ngày {$_POST['ngay']}. Vui lòng chọn thời gian khác !";
                    echo json_encode($result);
                } 
            } 
        }else if($a ==1){
            // $conn =  connection::_open();
            // $sql = "SELECT";
            // connection::_close($conn);
        }       
        ob_end_flush();
    }
?>