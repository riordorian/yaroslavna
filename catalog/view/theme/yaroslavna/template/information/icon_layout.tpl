<?=$header?>

<div class="row">
    <div class="product-card product__order-form col-md-5">
        <form method="POST" action="https://money.yandex.ru/quickpay/confirm.xml">
            <p class="form__action">Получить макет иконы</p>
            <input type="hidden" name="receiver" value="410012721889404">
            <input type="hidden" name="paymentType" value="AC">
            <input type="hidden" name="quickpay-form" value="shop">
            <div class="row">
                <label class="col-md-12">
                    <span style="font-weight: 400">Сумма, ₽</span>
                    <input type="number" class="form__field" name="sum" value="500.00" data-type="number">
                </label>
                <label class="col-md-12">
                    <span style="font-weight: 400">Назначение платежа</span>
                    <input type="text" class="form__field" name="targets" value="Оплата изготовления макета иконы">
                </label>
                <label class="col-md-12">
                    <span style="font-weight: 400">Удобные дата и время для обсуждения будущего макета</span>
                    <textarea class="form__field" name="comment" data-type="number" style="resize: none; height: 80px;"></textarea>
                </label>

                <input class="col-md-4 col-md-offset-4 btn--instruction btn--green" type="submit" value="Оплатить">
            </div>


            <input type="hidden" name="need-fio" value="true">

            <input type="hidden" name="need-email" value="false">

            <input type="hidden" name="need-phone" value="true">

            <div class="clearfix"></div>
            <br>
            <p><small>* Оплата банковской картой</small></p>
            <p><small>** Стоимость изготовления макета иконы 500₽</small></p>
        </form>
    </div>
</div>

<?=$footer?>