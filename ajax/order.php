<?
$project_name = "Икона Ярославна";
$admin_email = "info@ikona-yaroslavna.ru";
$form_subject = "Заявка c сайта";
$c = true;
$arAvailableKeys = array('NAME', 'PHONE', 'FORM', 'PRICE', 'SIZE');

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

function adopt($text) {
	return '=?UTF-8?B?' . base64_encode($text) . '?=';
}

$headers = "MIME-Version: 1.0" . PHP_EOL .
	"Content-Type: text/html; charset=utf-8" . PHP_EOL;

if( mail($admin_email, adopt($form_subject), $message, $headers ) ){
	echo json_encode(array('SUCCESS' => true));
}