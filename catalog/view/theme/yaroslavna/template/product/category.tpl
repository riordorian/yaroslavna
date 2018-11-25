<?php echo $header; ?>
<ul class="content__breadcrumbps"><?
    $breadcrumbpsCnt = count($breadcrumbs);
  foreach ($breadcrumbs as $i => $breadcrumb) {
  if( $i+1 < $breadcrumbpsCnt ) {
  ?><li>
    <a href="<?= $breadcrumb['href']; ?>">
      <?= $breadcrumb['text']; ?>
    </a>
    <span class="separator"><?= $breadcrumb['separator']; ?></span>
  </li><?
    }
    else {
      ?><li><span><?=$breadcrumb['text']; ?></span></li><?
    }
  }
?></ul>
<h1 class="content__header">
  <span><?=$heading_title?></span>
</h1><?

if( !empty($products) ){
  ?><div class="category row"><?
    foreach($products as $arProduct){
      ?><div class="col-md-3 col-sm-4 col-xs-6 category__item">
        <a href="<?=$arProduct['HREF']?>">
          <img src="<?=$arProduct['PREVIEW_PICTURE']?>" class="img-responsive">
          <p class="name <?=( empty($arProduct['WIDTH']) || empty($arProduct['HEIGHT']) ) ? 'm-b' : ''?>">
            <?=$arProduct['NAME']?><br>
            <?=( !empty($arProduct['MODEL']) ) ? ' (' . $arProduct['MODEL'] . ')' : ""?>
          </p><?
            if( !empty($arProduct['WIDTH']) && !empty($arProduct['HEIGHT']) ){
              ?><p class="size">Размер: <?=number_format($arProduct['WIDTH'])?>х<?=number_format($arProduct['HEIGHT'])?> <?=$arProduct['LENGTH_UNITS']?></p><?
            }
          ?>

          <div class="col-md-6 col-sm-6 col-xs-6 price">
            <?=$arProduct['PRICE']?>
            <span class="rub"></span>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-6 action-btn">
            <span href="<?=$arProduct['HREF']?>" class="btn btn--buy">Подробнее</span>
          </div>
        </a>
      </div><?
    }
  ?></div><?
}

?><div class="row category__results-info">
  <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
  <div class="col-sm-6 text-right"><?php echo $results; ?></div>
</div>
<?php if (!$categories && !$products) { ?>
  <p><?php echo $text_empty; ?></p>
  <div class="buttons">
    <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
  </div>
<?php } ?>

<?php echo $footer; ?>
