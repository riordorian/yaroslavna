<?php
header('Content-Type: text/html; charset=utf-8');
function getCategoryItems($category_id){
    $database_server = 'localhost';
    $database_user = 'amdxbk_modx';
    $database_password = 'Ye8WGzZTc';
    $database_name = 'amdxbk_modx';
    
    $db = mysqli_connect($database_server,$database_user,$database_password,$database_name);
    if(!$db){
        die('Ошибка соединения с бд!');
        exit();
    }
    mysqli_query($db,'SET NAMES UTF8');
    
    $sql = "
            SELECT
                `id`
            FROM
                `modx_site_content`
            WHERE
                `parent` = ".intval($category_id)."  AND `published`=1
    ";
    $result = mysqli_query($db,$sql);
    if($result && mysqli_num_rows($result) > 0){
        $list_id = array();
        while($myrow = mysqli_fetch_array($result)){
            $list_id[] = $myrow[0];
        }
    }
    if(count($list_id) > 0){
        $sql = "
                SELECT
                    `value`,
                    `contentid`
                FROM
                    `modx_site_tmplvar_contentvalues`
                WHERE
                    `contentid` IN (" . implode(',',$list_id) . ")
                ORDER BY `contentid` ASC, `tmplvarid` ASC
        ";
        $result = mysqli_query($db,$sql);
        if($result && mysqli_num_rows($result) > 0){
            $block_list = array();
            while($myrow = mysqli_fetch_array($result)){
                $block_list[$myrow[1]][] = $myrow[0];
            }
        }
        if(count($block_list) > 0){
            $list = null;
            $hidden_list = null;
            echo "<div class='one_line_galery'>";
            $i=0;
            foreach($block_list as $k => $v){
                $i++;
                 
                $list .= "<div class='one_subgalary_item'>
					<a class=fanc href='#b$k' rel='galery'>
						<img src='/".$v[2]."' width='161px'>
						<div class='zoom'></div>
					</a>
					<p class='img_podp'>
					    ".$v[0]."
					</p>
				</div>";
if($i/4 == intval($i/4)){
$list.="</div><div class='one_line_galery'>";
}
                                
                $hidden_list .= "<div id='b$k' class='hidden_galery' style='display: none;'>
                            <p class='galery_header'>".$v[0]."</p>
                            <img src='/".$v[3]."'>
                            <p class='opened_podp'>".$v[1]."</p>
                        </div>";
            }
            if(!empty($list) && !empty($hidden_list)){
                $list.="</div>";
                echo $list;
                echo $hidden_list;
            }
        }
        
        
    }
}
getCategoryItems($category_id);
return;
