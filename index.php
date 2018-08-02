<?php
if (session_status() == PHP_SESSION_NONE)
{
    session_start();
}
if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 1200)) {
    session_unset();    
    session_destroy();   
}
$_SESSION['LAST_ACTIVITY'] = time();

include('lib/config.php');
include('lib/database.php');
include('lib/router.php');


