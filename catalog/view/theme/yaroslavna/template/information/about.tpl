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
  </div>
</div>
</div>
<embed src="/yaroslavna.pdf#page=5" width="100%" height="685"
         type='application/pdf' id="embed-pdf"">

    <div class="container">
      <div class="row">
        <div class="article">

          <div class="clear"></div>
          <div class="m-t-lg">
            <div class="col-md-3 article__img">
              <img src="catalog/view/theme/yaroslavna/images/logo.svg">
            </div>
            <div class="col-md-9 article__text contacts__text"></div>
            <?=$description?>
          </div>
        </div>
<?php echo $footer; ?>
