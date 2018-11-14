<?php
ini_set('error_reporting', 'E_ALL');


define('root', dirname(__FILE__));

error_reporting(E_ALL);
ini_set("display_errors", 1);

$db_server = 'localhost';
$db_user = 'amdxbk_modx';
$db_password = 'Ye8WGzZTc';
$db_name = 'amdxbk_modx';

$db = mysqli_connect($db_server, $db_user, $db_password, $db_name);
if (!$db) {
    die('Ошибка соединения с базой данных');
}

$sql = "SELECT
            `alias`,
            `editedon`
        FROM
            `modx_site_content`
        WHERE
            `parent` NOT IN (6,19,23,35,37,50)
    ";

$result = mysqli_query($db, $sql);

//var_dump($result);

if ($result && mysqli_num_rows($result) > 0) {
    $page = '';
    //$site = $_SERVER['SERVER_NAME'];
    $site = 'ikona-yaroslavna.ru';
    while ($myrow = mysqli_fetch_array($result)) {
        if (stripcslashes($myrow[0]) == 'sitemap') {
            $page .= "";
        } else {
            $last_edit = date('c', intval($myrow[1]));
            $page .= "<url>
                    <loc>http://" . $site . "/" . ((stripcslashes($myrow[0]) == 'index') ? '' : stripcslashes($myrow[0])) . "</loc>
                    <lastmod>$last_edit</lastmod>
                    <priority>1.0</priority>
                </url>\n";
        }
    }
    if (!empty($page)) {
        $page = "<?xml version='1.0' encoding='UTF-8'?>\n
                    <urlset xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\" xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd\">\n" . $page . "</urlset>";
    }
    $fp = fopen('sitemap.xml', 'w+');
    fwrite($fp, $page);
    fclose($fp);

//    echo $page;
    mysqli_close($db);
//$date_ = date('Y-m-d H:i:s');
//file_put_contents('/ikona-yaroslavna.ru/public_html/cron.log', $date_."\n".$page."\n", FILE_APPEND);
}
