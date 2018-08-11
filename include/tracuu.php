<?php 
    
    if( isset($_SESSION['user'] ) ){
        if( isset($_POST['nameRequest'])  && $_POST['nameRequest'] == REQUEST_TRACUUSOTT_KHAM ){
            $idbacsi = $_POST['idbacsi'];
            $ngay = str_replace('/','-',$_POST['ngay'] );
            $ngay = date('Y-m-d',strtotime($ngay) );
            $id_benhnhan = ($_SESSION['user'])['quyen'] == '1'?($_SESSION['user'])['id'] :'';
            $conn = connection::_open();
            $sql = "SELECT * FROM tbldatlichkham A , tblbenhnhan B WHERE A.idBenhnhan = B.id AND idBacsi = '{$idbacsi}'  AND ngayHen = '{$ngay}' AND tinhTrang = '1' ORDER BY soTT ASC ";
            $result = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
            connection::_close($conn);
            if($result){
                $html ="";
                $index = 0;
                foreach( $result as $lichkham ){
                    $active = "";
                    $index++;
                    if( $id_benhnhan != '' && $lichkham['id'] == $id_benhnhan ){
                        $active = "class ='active' ";
                    }
                    $gio = substr($lichkham['gioHen'] ,0,5);
                    $html .= "<tr {$active}>
                        <td>{$index}</td>
                        <td>{$lichkham['soTT']}</td>
                        <td>{$gio}</td>
                        <td>{$lichkham['ten']}</td>
                    </tr>";
                }
                echo ( $html );
                exit();
            }
        }else if( isset($_POST['nameRequest'])  && $_POST['nameRequest'] == REQUEST_TRACUUSOTT_XN  ){
            $idXN = $_POST['idXN'];
            $ngay = $_POST['ngay'];
            $id_benhnhan = ($_SESSION['user'])['quyen'] == '1'?($_SESSION['user'])['id'] :'';
            $conn = connection::_open();
            $sql = "SELECT * FROM tbldangkixetnghiem A , tblbenhnhan B WHERE A.idBenhnhan = B.id AND idXetNghiem = '{$idXN}'  AND ngay = '{$ngay}' AND tinhTrang = '0' ORDER BY soTT ASC ";
            $result = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
            connection::_close($conn);
            if($result){
                $html ="";
                $index = 0;
                foreach( $result as $lichkham ){
                    $index++;
                    $active = "";
                    if( $id_benhnhan != '' && $lichkham['id'] == $id_benhnhan ){
                        $active = "class ='active' ";
                    }
                    $gio = substr($lichkham['gio'] ,0,5);
                    $html .= "<tr {$active}>
                        <td>{$index}</td>
                        <td>{$lichkham['soTT']}</td>
                        <td>{$gio}</td>
                        <td>{$lichkham['ten']}</td>
                    </tr>";
                }
                echo ( $html );
                exit();
            }
        }else if( isset($_POST['nameRequest'])  && $_POST['nameRequest'] == REQUEST_TRACUUSOTT_CUA_XN  ){
            $id_XN = $_POST['id_XN'];
            $id_BN = $_POST['id_BN'];
            $conn = connection::_open();
            $sql = "SELECT A.lanThu FROM tblphieuxetnghiem A , tblbenhan B  WHERE A.idBenhan = B.id AND A.idXetnghiem = '{$id_XN}' AND B.idBenhnhan= '{$id_BN}'
            ORDER BY A.lanThu  DESC ";
            $result = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
            connection::_close($conn);
            if($result){
                echo intval($result[0]['lanThu']) + 1;
            }else{
                echo 1;
            }
            exit();
        }
    }
?>