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
  <span><?=$heading_title . ( !empty($model) ? ' (' . $model . ')' : "" )?></span>
</h1>
<div class="product-card">
  <div class="col-md-3 product__img thumbnails"><?
  	$arFirstImg = array_shift($images);
    ?><a href="<?=$arFirstImg['popup']?>">
		<img src="<?= $arFirstImg['thumb']; ?>" class="img-responsive" alt="">
	</a><?

    ?><div><?
        foreach( $images as $arImg ){
            ?><a href="<?=$arImg['popup']?>">
              <img src="<?= $arImg['popup']; ?>" class="img-responsive" width="90">
            </a><?
        }
    ?></div>
  </div>

  <div class="col-md-5 product__info">
    <div class="product__properties">
      <div><?
        $bHasSize = false;
        foreach($options as $arOpt){
          if( !empty($arOpt['value']) ){
            ?><p><?
              if( $arOpt['name'] != 'Размер' ){
                ?><span class="property__name"><?=$arOpt['name']?>:</span>
                <span class="property__text"><?=strtolower(implode(', ', $arOpt['value']))?></span><?
              }
              else{
                $bHasSize = true;
                ?><span class="property__name"><?=$arOpt['name']?>:</span>
                <select name="size" class="js-size-select"><?
                   foreach( $arOpt['value'] as $optSize => $optVal ){
                      ?><option value="<?=$optSize?>" data-price="<?=$optVal['price']?>" data-old-price="<?=$optVal['old_price']?>"><?=$optSize?></option><?
                   }
                ?></select><?
              }
            ?></p><?
          }
        }
        if( !$bHasSize ){
            ?><p><span class="property__name">Размер:</span>
            <span class="property__text"><?=$width?>x<?=$height?> см</p>
            <input type="hidden" name="size" value="<?=$width?>x<?=$height?>"><?
        }
        if( $price ){
            ?><p class="price">
                <span class="property__name">Цена:</span><?
                if (!empty($old_price)){
                    ?><span class="property__text"><strike><span class="js-old-price-val"><?=$old_price?></span>&thinsp;<span class="rub"></span></strike></span><?
                }
                ?>   <span class="property__text"><span class="js-price-val"><?=$price?></span>&thinsp;<span class="rub"></span></span>
            </p>
            <p class="helper"></p><?
        }
      ?></div><?

      if( !empty($description) ){
        ?><p>
          <span class="property__name">Описание:</span>
        </p>
        <p class="description">
          <?=$description?>
        </p><?
      }

      ?><div class="m-t-lg">
            <a class="btn btn--green btn--medium btn--instruction btn--green" href="/instruction.pdf" download target="_blank">
                Как выбрать икону
            </a>
        </div>
      </div>


  </div>

  <div class="col-md-4 product__order-form">
    <form class="js-form" action="/ajax/order.php">
      <p class="form__action">Заказать икону</p>
      <input type="hidden" value="order" name="FORM">
      <input type="hidden" value="<?=$_SERVER['REQUEST_URI']?>" name="PRODUCT">
      <input type="hidden" value="<?=$heading_title . ' (' . $model . ')'?>" name="item-name">
      <input type="hidden" value="<?=$price?>" name="PRICE" class="js-price">
      <input type="hidden" value="<?=$size?>" name="SIZE" class="js-size">
      <input type="text" name="NAME" class="form__field" placeholder="ФИО *" required>
      <input type="text" name="PHONE" class="form__field" placeholder="Телефон *" required><?
       if (!empty($personal_sale)) {
            ?><p class="text-white">Вам предоставлена скидка <b><?=$personal_sale?>%</b> на первый заказ</p><?
       }
      ?><input type="submit" class="col-md-8 col-xs-8 btn btn--order btn--brown btn--order-ikon" value="Оформить заказ">
      <div class="clear"></div>
      <p class="status">&nbsp;</p>
      <div class="clear"></div>
    </form>
  </div>

    <div class="clearfix"></div>
    <br>
    <div class="col-md-12 col-mt">
        Данную икону можно заказать и в других размерах. Для уточнения деталей заказа вы можете связаться с нами по телефону.
        <a href="tel:+79106653117">+7 (910) 665-31-17</a>

        <h3>Доставка</h3>
        <div>
            Мы осуществляем доставку икон по всей России и странам СНГ.
            Получить ваш заказ можно следующими способами
            <ul>
                <li>Самовывоз</li>
                <li>Доставка Почтой России</li>
                <li>Доставка транспортной компанией до пункта выдачи заказов</li>
                <li>Доставка курьером транспортной компанией до двери</li>
            </ul>

            Доставка оплачивается дополнительно к стоимости заказа.
        </div>
    </div>
</div>

<script type="text/javascript"><!--


$(document).ready(function() {
	$('.thumbnails').magnificPopup({
		type:'image',
		delegate: 'a',
		gallery: {
			enabled:true
		}
	});
});

$(document).ready(function() {
	var hash = window.location.hash;
	if (hash) {
		var hashpart = hash.split('#');
		var  vals = hashpart[1].split('-');
		for (i=0; i<vals.length; i++) {
			$('div.options').find('select option[value="'+vals[i]+'"]').attr('selected', true).trigger('select');
			$('div.options').find('input[type="radio"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
		}
	}
})
//--></script>
<?php echo $footer; ?>
