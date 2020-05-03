<?=$header?>

    <link rel="stylesheet" href="catalog/view/theme/yaroslavna/stylesheet/manual.css">
    <script type="text/javascript" src="catalog/view/theme/yaroslavna/js/manual.js?<?=time()?>"></script>



    <div class="podbor">
        <div class="question1">
            <h2>Для чего вам икона?</h2>
            <ul class="columns3 m-t-xlg"><?

                foreach ($types as $typeCode => $typeInfo) {
                    ?><li>
                        <a href="#" rel="<?=$typeCode?>">
                            <i class="manual-<?=$typeInfo['ICON']?>"></i>
                            <span><?=$typeInfo['NAME']?></span>
                        </a>
                        <div class="q1q2"><?
                            if (!empty($typeInfo['ITEMS'])){
                                echo $typeInfo['ITEMS'];
                            }
                            elseif (!empty($typeInfo['CHILDS'])) {
                                if (!empty($typeInfo['CHILDS']['NAME'])) {
                                    ?><h3><?=$typeInfo['CHILDS']['NAME']?></h3><?
                                }
                                ?><ul class="columns3"><?
                                    foreach ($typeInfo['CHILDS']['ITEMS'] as $childCode => $child) {
                                        ?><li rel="<?=$childCode?>"><?
                                            if(!empty($child['ITEMS']) || !empty($child['CHILDS']['ITEMS'])){
                                                ?><a href="#" rel="roditeli"><?=$child['NAME']?></a><?
                                            }
                                            ?><div class="q2q3"><?
                                                if (!empty($child['CHILDS']['ITEMS'])) {
                                                    ?><ul class="columns3"><?
                                                        foreach ($child['CHILDS']['ITEMS'] as $code => $subChild) {
                                                            ?><li>
                                                                <a href="#" rel="$code"><?=$subChild['NAME']?></a>
                                                                <div class="q3q4"><?
                                                                     if (!empty($subChild['CHILDS'])) {
                                                                        ?><!--По профессии-->
                                                                        <ul class="columns3"><?
                                                                            foreach ($subChild['CHILDS']['ITEMS'] as $fourthQuestBlock) {
                                                                                if (!empty($fourthQuestBlock['ITEMS'])) {
                                                                                    ?><li>
                                                                                        <a href="#" rel="<?=$fourthQuestBlock['NAME']?>"><?=$fourthQuestBlock['NAME']?></a>
                                                                                        <div class="q4q5">
                                                                                            <?=$fourthQuestBlock['ITEMS']?>
                                                                                        </div>
                                                                                    </li><?
                                                                                }
                                                                            }
                                                                        ?></ul><?
                                                                     }
                                                                     elseif (!empty($subChild['ITEMS'])) {
                                                                        ?><!--Семейная, имннная для подарков--><?
                                                                        echo $subChild['ITEMS'];
                                                                     }
                                                                ?></div>
                                                            </li><?
                                                        }
                                                    ?></ul><?
                                                }
                                                else {
                                                    echo $child['ITEMS'];
                                                }
                                            ?></div>
                                        </li><?
                                    }
                                ?></ul><?
                            }
                        ?></div>
                    </li><?
                }

            ?></ul>
        </div>

        <div class="clear"></div>
        <div class="question2"></div>
        <div class="clear"></div>
        <div class="question3"></div>
        <div class="clear"></div>
        <div class="question4"></div>
        <div class="clear"></div>
        <div class="question5"></div>

    </div>




<?=$footer?>