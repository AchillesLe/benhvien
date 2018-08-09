<?php 
    
    if( isset($_SESSION['user'] ) ){
        if( isset($_POST['nameRequest'])  && $_POST['nameRequest'] == REQUEST_TRACUUSOTT ){
            $idbacsi = $_POST['idbacsi'];
            $ngay = str_replace('/','-',$_POST['ngay'] );
            $ngay = date('Y-m-d',strtotime($ngay) );
            $id_benhnhan = ($_SESSION['user'])['quyen'] == '1'?($_SESSION['user'])['id'] :'';
            $conn = connection::_open();
            $sql = "SELECT * FROM tbldatlichkham A , tblbenhnhan B WHERE A.idBenhnhan = B.id AND idBacsi = '{$idbacsi}'  AND ngayHen = '{$ngay}' AND tinhTrang = '1' ORDER BY soTT ASC ";
            $result = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
            connection::_close($conn);
            if($result){
                // $data = [ 'data'=> $result ];
                $html ="";
                $index = 0;
                $active = "";
                foreach( $result as $lichkham ){
                    $index++;
                    if( $id_benhnhan != '' && $lichkham['id'] == $id_benhnhan ){
                        $active = "class ='active' ";
                    }
                    $html .= "<tr {$active}>
                        <td>{$index}</td>
                        <td>{$lichkham['soTT']}</td>
                        <td>{$lichkham['ten']}</td>
                    </tr>";
                }
                echo ( $html );
                exit();
            }
        }
    }
?>