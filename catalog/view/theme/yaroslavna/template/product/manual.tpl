<?
if (!empty($items)) {
    ?><div class="category row"><?
        foreach ($items as $item) {
            ?><div class="col-md-3 col-sm-4 col-xs-6 category__item">
                <a href="http://ikona-yaroslavna.ru/index.php?route=product/product&amp;path=61&amp;product_id=109">
                    <img src="<?=$item['image']?>" class="img-responsive">
                    <p class="name "><?=$item['name']?><br>(<?=$item['model']?>)</p><?
                    if (!empty($item['description'])) {
                        ?><p class="size"><?=$item['description']?></p><?
                    }
                    ?><div class="col-md-6 col-sm-6 col-xs-6 action-btn m-t-md">
                        <span href="http://ikona-yaroslavna.ru/index.php?route=product/product&amp;path=61&amp;product_id=109"
                              class="btn btn--buy">Подробнее</span>
                    </div>
                </a>
            </div><?
        }
    ?></div><?
}
?>
