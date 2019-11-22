<?php echo $header; ?>
</div>
</div>
</div>
<div class="clear"></div>
<div class="main__slider-wrap">
  <div class="js-slick">
    <div class="main__offer"  style="background-image: url('/catalog/view/theme/yaroslavna/images/banner_2_3.jpg');">
      <div class="container">
        <!--<div class="title_1 text-style-title"><p>Узнайте, <br>на что обратить внимание<br>при выборе иконы!</p></div>-->
        <div class="title_1 text-style-title"><p>Ищете качественный дорогой <br> подарок для своих близких?</p></div>
        <div class="title_2 text-style-subtitle"><p>Закажите рукописную икону напрямую от иконописцев</p></div>
        <!--<div class="title_2 text-style-subtitle"><p>от 15 000 руб.</p></div>-->
        <br>

        <div class="btn_wrap no_arrow">
          <a data-modal-id="form" data-action="modal_form" class=" col-md-4 col-sm-6 col-xs-6 btn btn--green btn--large btn--offer" href="/products/">
            Каталог
          </a>
        </div>
      </div>
    </div>
    <div class="main__offer" style="background-image: url('/catalog/view/theme/yaroslavna/images/banner_1.jpg');">
      <div class="container">
        <!--<div class="title_1 text-style-title"><p>Узнайте, <br>на что обратить внимание<br>при выборе иконы!</p></div>-->
        <div class="title_1 text-style-title"><p>Иконы Богородицы</p></div>
        <div class="title_2 text-style-subtitle"><p>Ознакомьтесь с иконами, изготовленными нашей мастерской</p></div>
        <!--<div class="title_2 text-style-subtitle"><p>от 15 000 руб.</p></div>-->
        <br>

        <div class="btn_wrap no_arrow js-mgnf-wrap">
          <a  class=" col-md-4 col-sm-6 col-xs-6 btn btn--green btn--large btn--offer" href="/bogorodica/">
            Выбрать
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="main__about">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="row">
          <div class="col-md-6 col-sm-12 col-xs-12">
            <iframe width="100%" height="300" src="https://www.youtube.com/embed/_xgCXmuR06Y?controls=0&autoplay=1&rel=0&showinfo=0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
          <div class="col-md-6 col-sm-12 col-xs-12">
            <?=$description?>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

  <div class="m-t-xlg">
    <div class="container">
        <a class=" col-md-4 col-sm-6 col-xs-6 col-md-offset-4 col-sm-offset-3 col-xs-offset-3 btn btn--green btn--large btn--offer" href="/instruction.pdf" download target="_blank">
          Как выбрать икону
        </a>
    </div>
  </div>

  <?if(!empty($categories)){
    ?><div class="container m-t-xlg">
      <div class="categories row"><?
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
        ?></div>
    </div><?
  }?>
</div>



<div class=""></div>
<?php echo $footer; ?>