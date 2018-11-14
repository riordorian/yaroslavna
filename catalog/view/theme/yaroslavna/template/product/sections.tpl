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
if( count($categories)  > 0 ){
  ?><div class="categories row"><?
     foreach($categories as $arCategory){
        ?><div class="col-md-4 col-sm-4 col-xs-12">
          <div class="categories__item">
            <a href="<?=$arCategory['SECTION_PAGE_URL']?>">
              <div class="image" style="background-image: url('<?=$arCategory['IMAGE']?>');"></div>
              <p class="name"><?=$arCategory['NAME']?></p>
            </a>
          </div>
        </div><?
     }
   ?></div><?
}?>

<?php echo $footer; ?>
