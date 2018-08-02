<?php 
    define("APP_NAME", "BENH VIEN QUAN DAN Y MIEN DONG");
    define("SITE_NAME","http://".$_SERVER['SERVER_NAME']);
/**
 * config database
 */
    define("DB_HOST", "localhost");
    define("DB_USER_NAME", "root");
    define("DB_PASSWORD", "");
    define("DB_NAME", "benhvien");
/**
 * config mail
 */
    define("MAIL_HOST", "smtp.gmail.com");
    define("MAIL_SEND", "diemnguyentt2810@gmail.com");
    define("MAIL_PASSWORD", "diem1234");
    define("MAIL_SMTP_SECURE", "tls");
    define("REQUEST_GET_BACSI_BY_KHOA", 100);
    $array_time = [   
        "8:00","8:15","8:30","8:45","9:00","9:15","9:30","9:45","10:00","10:15","10:30","10:45",
        "11:00","11:15","11:30","11:45","12:00","12:15","12:30","12:45","13:00","13:15","13:30","13:45",
        "14:00","14:15","14:30","14:45","15:00","15:15","15:30","15:45","16:00","16:15","16:30","16:45"
    ];
?>
