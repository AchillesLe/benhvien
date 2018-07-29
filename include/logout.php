<?php 
    session_start();
    // die(var_dump($_SESSION['user']));
    if(isset($_SESSION['user'])){
        unset($_SESSION['user']);
    }
    header('Location: /',301);
?>