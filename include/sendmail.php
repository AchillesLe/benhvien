<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if(isset($_POST['email'])){
    
    require 'lib/PHPMailer/vendor/phpmailer/phpmailer/src/Exception.php';
    require 'lib/PHPMailer/vendor/phpmailer/phpmailer/src/PHPMailer.php';
    require 'lib/PHPMailer/vendor/phpmailer/phpmailer/src/SMTP.php';
    require 'lib/PHPMailer/vendor/autoload.php';
    
    $mail = new PHPMailer(true);                              
    try {
        //Server settings
        $mail->SMTPDebug = 2;                                 
        $mail->isSMTP();                                      
        $mail->Host = 'smtp.gmail.com';  
        $mail->SMTPAuth = true;                               
        $mail->Username = 'yuriboykasgu@gmail.com';                 
        $mail->Password = 'haithanhf';                           
        $mail->SMTPSecure = 'tls';                            
        $mail->Port = 587;                                    
    
        //Recipients
        $mail->setFrom('yuriboykasgu@gmail.com', 'BV QDY-MD');
        $mail->addAddress($_POST['email'],'Joe User');    
        //Content
        $mail->isHTML(true);                                  
        $mail->Subject = 'Here is the subject';
        $mail->Body    = 'This is the HTML message body <b>in bold!</b>';
        $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
    
        $mail->send();
        echo 'Message has been sent';
    } catch (Exception $e) {
        echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
    }
}
