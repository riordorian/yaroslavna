<?php
define('root', dirname(__FILE__));
include(root . "/php_mailer_51/class.phpmailer.php");

header("Content-Type: text/html; charset=utf-8");


//Заявка на звонок
if(($_POST['fio']!='') && ($_POST['phone']!='')){
   $name=strip_tags($_POST['fio']);
   $comment=strip_tags($_POST['comment']);
   $phone=strip_tags($_POST['phone']);
   
 
   $mail = new PHPMailer();
   $mail->CharSet="utf-8";
    $mail->SetFrom('noreply@ikona-yaroslavna.ru');
   $mail->FromName = "Заявка с сайта Икона-Ярославна";
   $mail->AddAddress('riordorian@mail.ru');
   $mail->AddAddress('leonteva_08@mail.ru');
   $mail->AddAddress('ikona_yaroslavna@mail.ru');
   $mail->Subject = "Заявка";
   $mail->Body = "Имя: $name\nТелефон: $phone\nКомментарий: $comment\n";
   $mail->Send();
   
   $return_ajax=array('success' => true);
   $s=json_encode($return_ajax);
   echo $s;
}



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



?>