<? if(empty($_SERVER['HTTP_X_REQUESTED_WITH']) || strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) != 'xmlhttprequest') { ?>

    <?php echo $header; ?>

    <ul class="content__breadcrumbps"><?
      $breadcrumbpsCnt = count($breadcrumbs);
      foreach ($breadcrumbs as $i => $breadcrumb) { if( $i+1 < $breadcrumbpsCnt ) { ?>
        <li>
            <a href="<?= $breadcrumb['href']; ?>">
                <?= $breadcrumb['text']; ?>
            </a>
            <span class="separator"><?= $breadcrumb['separator']; ?></span>
        </li>
        <?
        }
        else {
          ?>
        <li>
            <span><?=$breadcrumb['text']; ?></span>
        </li>
        <?
        }
      }
    ?></ul>

    <h1 class="content__header">
        <span>Рассчет стоимости иконы</span>
    </h1>
    <div class="clearfix m-t-lg"></div>
    <div class="row">
<? } ?>

<div>

        <div class="col-md-6 col-md-offset-3">
            <form name="Kalkulator" class="popup-form">
                <table class="calctext" border="0">
                    <tbody>
                    <tr>
                        <td style="text-align: left;" colspan="2" height="25">
                            <h3>Размер доски:</h3>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Ширина, см.</td>
                        <td style="text-align: left;">
                            <input id="i_width" class="calc_inp form__field" onkeyup="validate(this);calcsum(this.form)" name="i_width" placeholder="0" value="27" size="2" onchange="validate(this);calcsum(this.form)" align="middle" type="number">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;" width="60%">Высота, см.</td>
                        <td style="text-align: left;">
                            <input id="i_height" class="calc_inp form__field" onkeyup="validate(this);calcsum(this.form)" name="i_height" placeholder="0" value="31" size="2" onchange="validate(this);calcsum(this.form)" align="middle" type="number">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;"><strong>Площадь, дм<sup>2</sup></strong></td>
                        <td style="text-align: left;">
                            <span class="itog_inp form__field" name="i_area" placeholder="0" disabled="disabled" size="5" align="middle" type="text">
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;" colspan="2" height="25">
                            <h3>Детали:</h3>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Золочение доски</td>
                        <td style="text-align: left;">
                            <input id="i_gold" class="calc_inp form__field" name="i_gold" value="1" onchange="validate_gold(this.form);calcsum(this.form)" type="checkbox"><label for="i_gold"></label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Чеканка позолоты</td>
                        <td style="text-align: left;">
                            <input id="i_chekanka" class="calc_inp" name="i_chekanka" value="1" onchange="calcsum(this.form)" type="checkbox"><label for="i_chekanka"></label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Роспись чеканных полей</td>
                        <td style="text-align: left;">
                            <input id="i_raskraska" class="calc_inp" name="i_raskraska" value="1" onchange="calcsum(this.form)" type="checkbox"><label for="i_raskraska"></label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Количество фигур в композиции</td>
                        <td style="text-align: left;">
                            <select name="i_kol" class="form-control" size="1" onchange="calcsum(this.form)">
                                <option selected="selected" value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Роспись одежд золотом</td>
                        <td style="text-align: left;">
                            <input id="i_razdelka_odejd" class="calc_inp" name="i_razdelka_odejd" value="1" onchange="calcsum(this.form)" type="checkbox"><label for="i_razdelka_odejd"></label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Живописный фон (<em>процент заполнения</em>)</td>
                        <td style="text-align: left;">
                            <select class="form-control" name="i_fon" size="1" onchange="calcsum(this.form)">
                                <option selected="selected" value="0">нет</option>
                                <option value="10">10%</option>
                                <option value="20">20%</option>
                                <option value="30">30%</option>
                                <option value="40">40%</option>
                                <option value="50">50%</option>
                                <option value="60">60%</option>
                                <option value="70">70%</option>
                                <option value="80">80%</option>
                                <option value="90">90%</option>
                                <option value="100">100%</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Дополнительный образ</td>
                        <td style="text-align: left;">
                            <input id="i_dop_obraz" class="calc_inp" name="i_dop_obraz" value="1" onchange="calcsum(this.form)" type="checkbox"><label for="i_dop_obraz"></label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Предстоящие на полях</td>
                        <td style="text-align: left;">
                            <select class="form-control" name="i_na_polah" size="1" onchange="calcsum(this.form)">
                                <option selected="selected" value="0">нет</option>
                                <option value="2">2</option>
                                <option value="4">4</option>
                                <option value="6">6</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Орнамент на полях</td>
                        <td style="text-align: left;">
                            <input id="i_polya" class="calc_inp" name="i_polya" value="1" onchange="calcsum(this.form)" type="checkbox"><label for="i_polya"></label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Арка, трон</td>
                        <td style="text-align: left;">
                            <input id="i_arka_tron" class="calc_inp" name="i_arka_tron" value="1" onchange="calcsum(this.form)" type="checkbox"><label for="i_arka_tron"></label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left;">Картуш (Подписи)</td>
                        <td style="text-align: left;">
                            <select class="form-control" name="i_kartush" size="1" onchange="calcsum(this.form)">
                                <option selected="selected" value="0">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td style="font-size: 22px; color: #299a66; text-align: left;">
                            ИТОГО:</strong>
                        </td>
                        <td style="font-size: 22px; color: #299a66; text-align: left;">
                            <span class="itog_inp form__field" name="i_summ" disabled="disabled" size="6" type="text">
                                <span></span>
                                руб.
                        </td>
                    </tr>
                    <!--<tr>
                        <td colspan="2"><input class="calc_inp" name="Calc" value=" Обновить " type="button" onclick="calcsum(this.form)"><strong>&nbsp;</td>
                    </tr>-->
                    </tbody>
                </table>
                <p>
                <h4 style="color: #000000;"><em>&nbsp;Внимание! Цена является ориертировочной. Точную цену узнавайте у
                                                менеджера.</em><strong><br></strong></h4></p>
            </form>
        </div>


    <script type="application/javascript" src="/catalog/view/theme/yaroslavna/js/price.js"></script>
</div>

<? if(empty($_SERVER['HTTP_X_REQUESTED_WITH']) || strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) != 'xmlhttprequest') { ?>
    </div>
        <div class=""></div>
    <?php echo $footer; ?>
<? } ?>