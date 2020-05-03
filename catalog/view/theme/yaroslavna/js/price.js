function validate(cur_field)
{
    switch (true) {
        case (cur_field.name=="i_height"): {
            if (isFinite(cur_field.value)==false) alert('Ошибка: <ВЫСОТА> не является числом!');
        } break;
        case (cur_field.name=="i_width"): {
            if (isFinite(cur_field.value)==false) alert('Ошибка: <ШИРИНА> не является числом!');
        } break;
    }
}

function validate_gold(Obj)
{
    if (Obj.i_gold.checked==false) {
        document.getElementById('i_chekanka').disabled=true;
        document.getElementById('i_raskraska').disabled=true;
        document.getElementById('i_chekanka').checked=false;
        document.getElementById('i_raskraska').checked=false;
    } else {
        document.getElementById('i_chekanka').disabled=false;
        document.getElementById('i_raskraska').disabled=false;
    }

}

function calcsum(t_Oj)
{
    cur_area = (parseFloat(t_Oj.i_width.value) * parseFloat(t_Oj.i_height.value))/100;
    $(t_Oj).find('[name=i_area]').text(cur_area);
    switch (true) {
        case (cur_area<=0.95): price_dm=6349.21; break;
        case (cur_area<=1.6): price_dm=4687.50; break;
        case (cur_area<=2.08): price_dm=4086.54; break;
        case (cur_area<=3.25): price_dm=3230.77; break;
        case (cur_area<=3.57): price_dm=3081.23; break;
        case (cur_area<=5.25): price_dm=2380.95; break;
        case (cur_area<=5.94): price_dm=2188.55; break;
        case (cur_area<=8.37): price_dm=1911.59; break;
        case (cur_area<=10.5): price_dm=1857.14; break;
        case (cur_area<=12): price_dm=1833.33; break;
        case (cur_area<=15): price_dm=1800; break;
        case (cur_area<=20): price_dm=1750; break;
        case (cur_area<=24): price_dm=1708.33; break;
        case (cur_area<=30): price_dm=1650; break;
        case (cur_area<=35): price_dm=1600; break;
        case (cur_area<=63): price_dm=1428.57; break;
        case (cur_area<=120): price_dm=1250; break;
    }


    k_inf=1.22;
    base_price=price_dm * cur_area;
    cur_price=base_price;
    k=1;
    if (t_Oj.i_gold.checked == true) {k=k+0.1250;}
    if ((t_Oj.i_gold.checked == true) && (t_Oj.i_chekanka.checked == true)) {k=k+0.3125;}
    if ((t_Oj.i_gold.checked == true) && (t_Oj.i_chekanka.checked == true) && (t_Oj.i_raskraska.checked == true) ) {k=k+0.0625;}
    number_character = t_Oj.i_kol.value;
    switch (true) {
        case (number_character==1): cur_k=1; break;
        case (number_character==2): cur_k=1.3125; break;
        case (number_character==3): cur_k=1.5625; break;
        case (number_character==4): cur_k=1.8125; break;
        case (number_character==5): cur_k=2.03125; break;
        case (number_character==6): cur_k=2.2375; break;
        case (number_character==7): cur_k=2.39375; break;
        case (number_character==8): cur_k=2.5125; break;
        case (number_character==9): cur_k=2.625; break;
        case (number_character==10): cur_k=2.69375; break;
        case (number_character==11): cur_k=2.7375; break;
        case (number_character==12): cur_k=2.76875; break;
        case (number_character==13): cur_k=2.8; break;
        case (number_character==14): cur_k=2.825; break;
        case (number_character==15): cur_k=2.85; break;
        case (number_character==16): cur_k=2.875; break;
        case (number_character==17): cur_k=2.89375; break;
        case (number_character==18): cur_k=2.90625; break;
        case (number_character==19): cur_k=2.921875; break;
        case (number_character==20): cur_k=2.9375; break;
    }
    k=k+(cur_k-1);

    if (t_Oj.i_razdelka_odejd.checked == true) {k=k+0.0938;}

    k_fon=(parseFloat(t_Oj.i_fon.value)/10)*0.1;
    k=k+k_fon;

    if (t_Oj.i_dop_obraz.checked == true) {k=k+0.0938;}

    k_na_polah=(parseFloat(t_Oj.i_na_polah.value)/2)*0.1250;
    k=k+k_na_polah;

    if (t_Oj.i_polya.checked == true) {k=k+0.1875;}

    if (t_Oj.i_arka_tron.checked == true) {k=k+0.25;}

    k_kartush=parseFloat(t_Oj.i_kartush.value)*0.1250;
    k=k+k_kartush;


    cur_price=(base_price*k)*k_inf;
    $(t_Oj).find('.itog_inp span').text(number_format(Math.round(cur_price), 0, '', ' '));
}

$(function () {
    yaCounter27298259.reachGoal('calc');
})