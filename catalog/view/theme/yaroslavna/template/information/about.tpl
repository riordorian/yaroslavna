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
  <span>О компании</span>
</h1>

<div class="article">
  <div class="col-md-3 article__img">
    <img src="catalog/view/theme/yaroslavna/images/logo.svg">
  </div>
  <div class="col-md-9 article__text contacts__text">
    <?=$description?>
  </div>
</div>
<?php echo $footer; ?>
