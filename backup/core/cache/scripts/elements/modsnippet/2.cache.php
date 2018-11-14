<?php  return 'header(\'Content-Type: text/html; charset=utf-8\');
function getCategoryItems($category_id){
    $database_server = \'localhost\';
    $database_user = \'amdxbk_modx\';
    $database_password = \'Ye8WGzZTc\';
    $database_name = \'amdxbk_modx\';
    
    $db = mysqli_connect($database_server,$database_user,$database_password,$database_name);
    if(!$db){
        die(\'Ошибка соединения с бд!\');
        exit();
    }
    mysqli_query($db,\'SET NAMES UTF8\');
    
    $sql = "
            SELECT
                `id`
            FROM
                `modx_site_content`
            WHERE
                `parent` = ".intval($category_id)."
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
                    mstc.value,
                    mstc.contentid,
                    msc.alias
                FROM
                    modx_site_tmplvar_contentvalues mstc JOIN modx_site_content msc ON mstc.contentid = msc.id
                WHERE
                    mstc.contentid IN (" . implode(\',\',$list_id) . ")
                ORDER BY mstc.contentid ASC, mstc.tmplvarid ASC
        ";
        
        $result = mysqli_query($db,$sql);
        if($result && mysqli_num_rows($result) > 0){
            $block_list = array();
            while($myrow = mysqli_fetch_array($result)){
                $block_list[$myrow[1]][] = $myrow[0];
                $block_list[$myrow[1]][\'alias\'] = $myrow[2];
            }
        }
        if(count($block_list) > 0){
            $list = null;
            $hidden_list = null;

            foreach($block_list as $k => $v){
                $list .= "
                        <div class=\'one_preview_article\'>
                                                <div class=\'foto_article\'>
                                                    <img src=\'/".$v[1]."\'>
                                                </div>
                                                <div class=\'podp_article\'>
                                                    <p class=\'article_name\'>".$v[0]."</p>
                                                    <p class=\'article_p\'>
                                                        ".$v[3]."                            </p>
                                                    <a class=\'read_more\' href=\'".$v[\'alias\']."\'>Читать далее</a>
                                                </div>
                                            </div>
                        ";
            }
            if(!empty($list)){
                echo $list;
            }
        }
        
        
    }
}
getCategoryItems(3);
return;
';