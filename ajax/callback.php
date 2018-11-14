<?
require_once($_SERVER['DOCUMENT_ROOT'] . '/ajax/PHPMailer/PHPMailerAutoload.php');

$project_name = "Икона Ярославна";
$admin_email = "info@ikona-yaroslavna.ru";
$form_subject = "Заявка c сайта";
$c = true;
$arAvailableKeys = array('NAME', 'PHONE', 'FORM', 'EMAIL');

foreach ($_REQUEST as $key => $value) {
	if ($value != "" && $key != "project_name" && $key != "admin_email" && $key != "form_subject" && in_array($key, $arAvailableKeys)) {
		$message .= "
		" . (($c = !$c) ? '<tr>' : '<tr style="background-color: #f8f8f8;">') . "
		<td style='padding: 10px; border: #e9e9e9 1px solid;'><b>$key</b></td>
		<td style='padding: 10px; border: #e9e9e9 1px solid;'>$value</td>
	</tr>
	";
	}
}

$message = "<table style='width: 100%;'>$message</table>";

$bSendAttach = true;
/*if( $_REQUEST['FORM'] == 'order' ){
	$obMail = new PHPMailer();
	$obMail->CharSet = 'UTF-8';
	$obMail->setFrom('info@ikona-yaroslavna.ru', 'Иконописная мастерская Ярославна');
	$obMail->Subject = 'Ярославна. Инструкция по выбору иконы.';
	$obMail->addAddress($_REQUEST['EMAIL']);
	$obMail->Body    = 'В инструкции мы отобразили основные важные факторы, на которые нужно обратить внимание при выборе иконы.';
	$obMail->addAttachment($_SERVER['DOCUMENT_ROOT'] . '/instruction.pdf');
	$bSendAttach = $obMail->send();
}*/

$obMail = new PHPMailer();
$obMail->CharSet = 'UTF-8';
$obMail->setFrom('info@ikona-yaroslavna.ru', 'Иконописная мастерская Ярославна');
$obMail->Subject = 'Ярославна. Инструкция по выбору иконы.';
$obMail->addAddress('info@ikona-yaroslavna.ru');
$obMail->Body    = $message;
$obMail->isHTML(true);
if( $obMail->send() && $bSendAttach ){
	echo json_encode(array('SUCCESS' => true));
}