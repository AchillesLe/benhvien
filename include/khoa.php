<?php 
    if( isset($_SESSION['user'])){
        if( isset($_POST['nameRequest']) && $_POST['nameRequest'] == REQUEST_GET_BACSI_BY_KHOA ){
            $id = $_POST['idkhoa'];
            $conn = connection::_open();
            $sql = "SELECT id,ten FROM tblbacsi WHERE idKhoa={$id} ";
            $data = mysqli_query($conn,$sql)->fetch_all(MYSQLI_ASSOC);
            connection::_close($conn);
            if($data){
               echo json_encode(['success'=>true,'data'=>$data]);
            }
            else
                echo json_encode(['success'=>false ,'data'=>""]);
        }
        else{
            echo "";
        }
    }else{
        echo "";
    }
    
?>