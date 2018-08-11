<?php 
    if( isset($_SESSION['user'] ) ){
        if( isset($_POST['nameRequest'])  && $_POST['nameRequest'] == REQUEST_THEMBENHAN ){
            $arr_basic = isset($_POST['basic'])?$_POST['basic']:[];
            $arr_thuoc = isset($_POST['thuoc'])?$_POST['thuoc']:[];
            $arr_xetnghiem = isset($_POST['xetnghiem'])?$_POST['xetnghiem']:[];
            $ngayXN = date("Y-m-d");
            $id_bacsi =  ($_SESSION['user'])['id'];
            $id_benh_nhan = $arr_basic['id_BN'];
            $conn = connection::_open();
            
            $id_benhAn = "";
            $tongtien_toathuoc = 0;
            $id_toathuoc ="";
            /** tạo  Bệnh án */
            $sql = "INSERT INTO tblbenhan(idBenhnhan,idBacsi,soTT,chuanDoan,chieuCao,canNang,huyetAp,ghiChu) 
            VALUES ('{$id_benh_nhan}','{$id_bacsi}','{$arr_basic['soTT']}','{$arr_basic['chuan_doan']}','{$arr_basic['chieu_cao']}','{$arr_basic['can_nang']}','{$arr_basic['huyet_ap']}','{$arr_basic['ghi_chu']}')";
            $result = mysqli_query($conn,$sql);
            $id_benhAn = mysqli_insert_id($conn);
             
            if( $id_benhAn ){
                /** Update status da tao benh án ở tbldatlichkham */
                $sql = "UPDATE tbldatlichkham SET datao_benhAn ='1' WHERE id='{$arr_basic['id_LK']}' ";
                $result = mysqli_query($conn,$sql);
                /** tạo xét nghiệm */
                if( count($arr_xetnghiem) > 0){
                    foreach($arr_xetnghiem as $xn){
                        /**  lấy giá  xet nghiem */
                        $sql = "SELECT * FROM tblxetnghiem WHERE id = '{$xn['id_XN']}'";
                        $xetnghiem = mysqli_query($conn,$sql)->fetch_array(MYSQLI_ASSOC);
                        /**  lấy lần thứ ? xet nghiem */
                        // $lanthu = 1;
                        // $sql = "SELECT A.lanThu FROM tblphieuxetnghiem A , tblbenhan B  WHERE A.idBenhan = B.id AND A.idXetnghiem = '{$xn['id']}' AND B.idBenhnhan= '{$id_benh_nhan}'
                        // ORDER BY A.lanThu  DESC ";
                        // $result = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
                        // if($result){
                        //     $lanthu = intval($result[0]['lanThu']) + 1;
                        // }
                        if($xetnghiem){
                            /** tạo  phiếu xt nghiem */
                            $sql = "INSERT INTO tblphieuxetnghiem(idXetnghiem,idBenhan,soTT,ngayXetnghiem,gioXetnghiem,lanThu,ketQua) 
                            VALUES('{$xn['id_XN']}' , '{$id_benhAn}' , '{$arr_basic['soTT']}' , '{$ngayXN}' , '{$xn['gioXN']}','{$xn['lan_thu']}' , '{$xn['ketqua']}' )";
                            $result = mysqli_query($conn,$sql);
                        }
                    }
                }
            /** tạo toa thuốc */
                if( count($arr_thuoc) > 0){
                    /** tạo  toa thuốc mới */
                    $sql = "INSERT INTO tbltoathuoc(idBenhAn,tongTien) VALUES ('{$id_benhAn}','0')";
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
                }
            }

            /** cập nhật  toa thuốc mới */
            $sql = "UPDATE tbltoathuoc SET tongTien = '{$tongtien_toathuoc}' WHERE id= '{$id_toathuoc}'";
            $result = mysqli_query($conn,$sql);

            echo json_encode(['status'=>true , 'message'=>"Tạo bệnh án thành công !"]);
            connection::_close($conn);
            exit();
        }
        
    }
?>