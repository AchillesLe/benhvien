<?php 
    if( isset($_SESSION['user'] ) ){
        if( isset($_POST['nameRequest'])  && $_POST['nameRequest'] == REQUEST_THEMBENHAN ){
            $id_bacsi =  ($_SESSION['user'])['id'];
            $arr_basic = $_POST['basic'];
            $arr_thuoc = $_POST['thuoc'];
            $arr_xetnghiem = $_POST['xetnghiem'];
            $ngayXN = date("Y-m-d");
            $conn = connection::_open();
            
            $id_benhAn = "";
            $id_toathuoc = "";
            $tongtien_toathuoc = 0;
            /** Thêm thuốc */
            if( count($arr_thuoc) > 0){
                /** tạo  toa thuốc mới */
                $sql = "INSERT INTO tbltoathuoc(tongTien) VALUES ('0')";
                $result = mysqli_query($conn,$sql);
                $id_toathuoc = mysqli_insert_id($conn);
                if($id_toathuoc){
                    foreach($arr_thuoc as $t){
                        /** tạo  lấy giá */
                        $sql = "SELECT * FROM tblthuoc WHERE id = '{$t['id_Thuoc']}'";
                        $thuoc = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
                        if($thuoc){
                            $tienthuoc = floatval( $thuoc['donGia'] ) * intval($t['soluong']);
                            $tongtien_toathuoc += $tienthuoc;
                             /** tạo  chi tiet thuoc */
                            $sql = "INSERT INTO tblcttoathuoc(idtoathuoc,idthuoc,soLuong,tongTien) 
                            VALUES('{$id_toathuoc}' , '{$t['id_Thuoc']}' , '{$t['soluong']}' , '{$tienthuoc}')";
                            $result = mysqli_query($conn,$sql);
                        }
                    }
                } 
            }else{
                connection::_close($conn);
                echo json_encode(['status'=>false,'message'=>"Tạo bệnh án thất bại !"]);
                exit();
            }
            /** tạo  Bệnh án */
            $sql = "INSERT INTO tblbenhan(idBenhnhan,idBacsi,soTT,chuanDoan,chieuCao,canNang,huyetAp,idToathuoc,ghiChu) 
            VALUES ('{$arr_basic['id_BN']}','{$id_bacsi}','{$arr_basic['soTT']}','{$arr_basic['chuan_doan']}','{$arr_basic['chieu_cao']}','{$arr_basic['can_nang']}','{$arr_basic['huyet_ap']}','{$id_toathuoc}','{$arr_basic['ghi_chu']}')";
            $result = mysqli_query($conn,$sql);
            $id_benhAn = mysqli_insert_id($conn);
             /** tạo xét nghiệm */
            if( $id_benhAn ){
                if( count($arr_xetnghiem) > 0){
                    foreach($arr_xetnghiem as $xn){
                        /**  lấy giá  xet nghiem */
                        $sql = "SELECT * FROM tblxetnghiem WHERE id = '{$xn['id_XN']}'";
                        $xetnghiem = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
                        if($xetnghiem){
                            /** tạo  phiếu xt nghiem */
                            $sql = "INSERT INTO tblphieuxetnghiem(idXetnghiem,idBenhan,soTT,ngayXetnghiem,gioXetnghiem,lanThu,ketQua) 
                            VALUES('{$xn['id_XN']}' , '{$id_benhAn}' , '{$arr_basic['soTT']}' , '{$ngayXN}' , '{$xn['gioXN']}','{$xn['lan_thu']}' , '{$xn['ketqua']}' )";
                            $result = mysqli_query($conn,$sql);
                        }
                    }
                }
            }else{
                echo json_encode(['status'=>false,'message'=>"Tạo bệnh án thất bại !"]);
                connection::_close($conn);
                exit();
            }
            /** cập nhật  toa thuốc mới */
            $sql = "UPDATE tbltoathuoc SET tongTien = '{$tongtien_toathuoc}' WHERE id= '{$id_toathuoc}'";
            $result = mysqli_query($conn,$sql);
            $id_toathuoc = mysqli_insert_id($conn);
            echo json_encode(['status'=>true , 'message'=>"Tạo bệnh án thành công !"]);
            connection::_close($conn);
            exit();
        }
        
    }
?>