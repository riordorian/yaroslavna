<?= $header; ?>

<h1 class="content__header">
  <span><?=$heading_title?></span>
</h1>

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

<div class="article row">
   <div class="col-md-12">
     <?=$description?>
   </div>
</div>

<?= $footer; ?>