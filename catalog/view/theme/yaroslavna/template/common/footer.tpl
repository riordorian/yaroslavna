                        </div><!--*.col-md-12*-->
                    </div>
                </div>
            </section>
        </div>
        <section class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 col-sm-4 col-xs-6 footer__socials">
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
                        <p class="company-name">
                            © 2016 Мастерская &laquo;Ярославна&raquo;<br>
                            <a href="//goodweb.studio" target="_blank">Разработка</a> - <a href="//goodweb.studio" target="_blank">Goodweb.studio</a>
                        </p>

                    </div>
                    <div class="col-md-6 col-md-offset-1 col-sm-5 col-xs-1">
                        <ul class="footer__nav hidden-md hidden-sm hidden-xs row">
                            <li class="col-md-4">
                                <a href="/products/">Каталог</a>
                                <br>
                                <a href="/products/bogorodica/">Богородица</a>
                                <br>
                                <a href="/products/spas/">Спаситель</a>
                                <br>
                                <a href="/products/imennie/">Именные иконы</a>
                                <br>
                                <a href="/products/semeinie/">Семейные иконы</a>
                                <br>
                                <a href="/products/ikonostasy/">Иконостасы</a>
                                <br>
                                <a href="/products/rare/">Редкие и уникальные иконы</a>
                            </li>
                            <li class="col-md-4">
                                <a href="/about/">О компании</a>
                                <br>
                                <a href="/workshop/">Фото мастерской</a>
                                <br>
                            </li>
                            <li class="col-md-4">
                                <a href="/delivery_payment/">Доставка и оплата</a>
                                <br>
                                <a href="/contacts/">Контакты</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-2 col-sm-3 col-xs-5 col-md-offset-1 footer__contacts js-mgnf-wrap">
                        <p class="footer__phone">
                            <a href="tel:+79106653117">+7 (910) 665-31-17</a>
                        </p>
                        <a href="#call" class="btn btn--medium btn--brown js-mgnf">Заказать
                            звонок
                        </a>
                    </div>
                </div>
            </div>
        </section>

        <div class="none">
            <div class="container">
                <div class="col-md-4 col-md-offset-4 popup-form" id="call">
                    <form action="/ajax/callback.php">
                        <p class="form__header text-center">Обратный звонок</p>
                        <input type="hidden" name="FORM" value="callback">
                        <input type="text" name="NAME" class="form__field" placeholder="ФИО *" required>
                        <input type="text" name="PHONE" class="form__field" placeholder="Телефон *" required>
                        <input type="submit" class="col-md-8 col-md-offset-2 col-sm-6 col-sm-offset-3 col-xs-6 col-xs-offset-3 btn btn--large btn--registration btn--green" value="Отправить заявку">
                        <div class="clear"></div>
                        <p class="status">&nbsp;</p>
                        <div class="clear"></div>
                    </form>
                </div>

                <div class="col-md-4 col-md-offset-4 popup-form" id="order" data-res="res-text_order">
                    <form action="/ajax/callback.php">
                        <p class="form__header text-center">Получить консультацию по выбору иконы</p>
                        <input type="hidden" name="FORM" value="order">
                        <input type="text" name="NAME" class="form__field" placeholder="ФИО *" required>
                        <!--<input type="text" name="PHONE" class="form__field" placeholder="Телефон *" required>-->
                        <input type="text" name="PHONE" class="form__field" placeholder="Телефон *" required>
                        <input type="submit" class="col-md-8 col-md-offset-2 col-sm-6 col-sm-offset-3 col-xs-6 col-xs-offset-3 btn btn--large btn--registration btn--green" value="Получить">
                        <div class="clear"></div>
                        <p class="status">&nbsp;</p>
                        <div class="clear"></div>
                    </form>
                </div>
            </div>

            <div class="col-md-6 col-md-offset-3" id="res-text_order">
                Ваша заявка принята<br>Мы свяжемся с вами для предоставления более подробной консультации
                <!--Инструкция по ключевым моментам в&nbsp;выборе иконы отправлена вам на почту!-->
                <!--<br><br>В дополнение к ней, мы дарим вам скидку 15% на ваш первый заказ до 9 апреля. <br><br>
                Успейте воспользоваться.-->

                <!--<span><br><br>В знак благодарности за доверие<br>мы дарим вам скидку <b>20%</b> на заказ киота для иконы.</span>-->
            </div>
            <div class="col-md-6 col-md-offset-3" id="res-text">
                Ваша заявка принята<br>Мы свяжемся с вами в течение дня
                <!--<br><br>В дополнение к ней, мы дарим вам скидку 15% на ваш первый заказ до 9 апреля. <br><br>
                Успейте воспользоваться.-->

                <!--<span><br><br>В знак благодарности за доверие<br>мы дарим вам скидку <b>20%</b> на заказ киота для иконы.</span>-->
            </div>
            <div class="js-mgnf-wrap">
                <a class="js-mgnf" href="#res-text" id="res_link"></a>
            </div>
        </div>

        <!-- Yandex.Metrika counter -->
        <script type="text/javascript">
            (function (d, w, c) {
                (w[c] = w[c] || []).push(function() {
                    try {
                        w.yaCounter27298259 = new Ya.Metrika({
                            id:27298259,
                            clickmap:true,
                            trackLinks:true,
                            accurateTrackBounce:true,
                            webvisor:true
                        });
                    } catch(e) { }
                });

                var n = d.getElementsByTagName("script")[0],
                        s = d.createElement("script"),
                        f = function () { n.parentNode.insertBefore(s, n); };
                s.type = "text/javascript";
                s.async = true;
                s.src = "https://mc.yandex.ru/metrika/watch.js";

                if (w.opera == "[object Opera]") {
                    d.addEventListener("DOMContentLoaded", f, false);
                } else { f(); }
            })(document, window, "yandex_metrika_callbacks");
        </script>
        <noscript><div><img src="https://mc.yandex.ru/watch/27298259" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
        <!-- /Yandex.Metrika counter -->

                        <script type='text/javascript'>
                            (function(){ var widget_id = 'prrMQBd6XZ';var d=document;var w=window;function l(){
                                var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = '//code.jivosite.com/script/widget/'+widget_id; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);}if(d.readyState=='complete'){l();}else{if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})();</script>
    </body>
</html>