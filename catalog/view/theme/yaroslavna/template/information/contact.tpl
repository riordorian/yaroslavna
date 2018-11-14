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
  <span>Контакты</span>
</h1>

<div class="article">
  <div class="col-md-4 article__img">
    <iframe src="https://api-maps.yandex.ru/frame/v1/-/CZHCi617" width="100%" height="250" frameborder="0"></iframe>
  </div>
  <div class="col-md-8 article__text contacts__text">
    <p>Наша мастерская находится в Ярославле, но мы осуществляем <a href="/delivery_payment">доставку</a> по всей России и СНГ.</p>
    <p>Если вам нужна помощь в выборе иконы, то обращайтесь по следующей контактной информации:</p>
    <p><b>E-mail:</b>
      <a href="mailto:info@ikona-yaroslavna.ru">info@ikona-yaroslavna.ru</a>
    </p>
    <p><b>Телефон:</b>
      <a href="tel:+79106653117">+7 (910) 665-31-17</a>
    </p>
    <p><b>Адрес:</b> г. Ярославль, ул. Клубная 26</p>
    <p class="work-time">
      <b>Часы работы:</b> Понедельник - Пятница — 9.00 - 19.00<br> <b class="unvisible">Часы
        работы:</b> Суббота, Воскресенье — 10.00 - 18.00
    </p>
    <p><b>Наша компания в социальных сетях:</b></p>
    <div class="article__socials">
      <a target="_blank" href="//www.instagram.com/yar_ikona/" class="socials__item">
        <svg>
          <use xlink:href="catalog/view/theme/yaroslavna/images/instagram.svg#instagram"/>
        </svg>
      </a>
      <a href="mailto:info@ikona-yaroslavna.ru" class="socials__item">
        <svg>
          <use xlink:href="catalog/view/theme/yaroslavna/images/mail.svg#mail"/>
        </svg>
      </a>
    </div>
  </div>
</div>
<?php echo $footer; ?>
