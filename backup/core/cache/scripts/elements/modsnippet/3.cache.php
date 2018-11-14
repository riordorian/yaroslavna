<?php  return 'header("Content-Type: text/html; charset=utf-8");
define(\'root\',dirname(__FILE__));


error_reporting(E_ALL);
ini_set("display_errors", 1);





function getCategory(){
   $db_server = \'localhost\';
   $db_user = \'amdxbk_modx\';
   $db_password = \'Ye8WGzZTc\';
   $db_name = \'amdxbk_modx\';

   $db = mysqli_connect($db_server,$db_user,$db_password,$db_name);
   mysqli_query($db,"SET NAMES UTF8");

   if(!$db){
       die(\'Ошибка соединения с базой данных\');
   }
   
    $sql = "
        SELECT
            `id`,
            `pagetitle`,
            `alias`,
            `parent`,
            `uri`
        FROM
            `modx_site_content`
        where alias<>\'sitemap\' and published=1 AND `parent` NOT IN(6,19,23,35,37,50)
    ";

    $result = mysqli_query($db,$sql);
    $tree = array();
    if($result && mysqli_num_rows($result) > 0){
        while($myrow = mysqli_fetch_array($result)){
            $tree[] = $myrow;
        }
        return $tree;
    }
}

$category_tree = getCategory();


function getTree($array, $level = 0){
    $domen = $_SERVER[\'SERVER_NAME\'];
    $list = "<ul>";
    foreach($array as $k=>$v){
        
$uri = $v[\'uri\']==\'index.html\' ? \'\' : stripcslashes($v[\'uri\']);
        if($v[\'parent\'] == $level){
           $list .= "<li class=\'site_map_li sitemap_li".$v[\'parent\']."\' ><a href=\'http://$domen/".$uri."\'>".$v[\'pagetitle\']."</a>";
            if (has_children($array,$v[\'id\'])){
                $list .= getTree($array,$v[\'id\']);
            }
            $list .= "</li>";
        }
    }
    $list .= "</ul>";
    return $list;
    
}
function has_children($rows,$id) {
  foreach ($rows as $row) {
    if ($row[\'parent\'] == $id)
      return true;
  }
  return false;
}

echo getTree($category_tree);
return;
';