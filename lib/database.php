<?php

define("DB_HOST", 'localhost');
define("DB_USER_NAME", "root");
define("DB_PASSWORD", "");
define("DB_NAME", "benhvien");
class connection{

	public static function _open(){
        $conn = mysqli_connect(DB_HOST, DB_USER_NAME, DB_PASSWORD);
        if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
        }
        mysqli_select_db( $conn , DB_NAME );
        mysqli_query($conn,"SET NAMES 'utf8'");
        return $conn;
	}
	public static function _close($con)
	{
		mysqli_close($con);
	}
}
?>