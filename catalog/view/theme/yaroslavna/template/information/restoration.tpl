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
    <span>Реставрация икон</span>
</h1>


<div class="categories js-mgnf-wrap row" data-gallery="true">
    <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="categories__item">
            <a class="js-mgnf mfp-image" href="/image/restoration/1.jpg">
                <div class="image" style="background-image: url('/image/restoration/1_s.jpg');"></div>
                <p class="name">Икона Богородица Ахтырская, 19 век</p>
            </a>
        </div>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="categories__item">
            <a class="js-mgnf mfp-image" href="/image/restoration/2.jpg">
                <div class="image" style="background-image: url('/image/restoration/2_s.jpg');"></div>
                <p class="name">Успение пресвятой Богородицы</p>
            </a>
        </div>
    </div>
    <div class="col-md-4 col-sm-4 col-xs-12">
        <div class="categories__item">
            <a class="js-mgnf mfp-image" href="/image/restoration/3.jpg">
                <div class="image" style="background-image: url('/image/restoration/3_s.jpg');"></div>
                <p class="name">Господь Вседержитель, масло, 19 век</p>
            </a>
        </div>
    </div>
</div>




<div class=""></div>
<?php echo $footer; ?>