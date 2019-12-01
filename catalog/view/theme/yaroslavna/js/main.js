$(function()
{
	svg4everybody();

	$('.navbar').on('click', '.navbar-toggle', function()
	{
		$('.navbar-collapse').toggleClass('in');
		$(this).toggleClass('navbar-toggle--open');
	});


	$(document).on('change', '.js-size-select', function(){
		var newPrice = number_format($(this).find('option:selected').data('price'), 0, '', ' ');
		$('.js-price-val').text(newPrice);
		$('.js-price').val(newPrice);
		$('.js-size').val($(this).find('option:selected').val())
	});


	$('.js-mgnf-wrap').each(function(){
		var defaults = {delegate: 'a.js-mgnf'};
		if( $(this).data('gallery') == true ){
			defaults = $.extend({}, defaults, {gallery: {enabled: true}});
		}

		$(this).magnificPopup(defaults);
	});

	if( $('.js-slick').length && $.fn.slick != undefined ){
        $('.js-slick').slick({
            infinite: true,
            dots: true,
            arrows: false,
            autoplay: true,
            autoplaySpeed: 3000,
            slide: '.main__offer'
        });
	}

	$("[name=PHONE]").inputmask({"mask": "+7 (999) 999-9999"});
});

/**
 * Форматирование числа
 * Аналог number_format в php
 */
function number_format( number, decimals, dec_point, thousands_sep ) {	// Format a number with grouped thousands
	var i, j, kw, kd, km;

	// input sanitation & defaults
	if( isNaN(decimals = Math.abs(decimals)) ){
		decimals = 2;
	}
	if( dec_point == undefined ){
		dec_point = ",";
	}
	if( thousands_sep == undefined ){
		thousands_sep = ".";
	}

	i = parseInt(number = (+number || 0).toFixed(decimals)) + "";

	if( (j = i.length) > 3 ){
		j = j % 3;
	} else{
		j = 0;
	}

	km = (j ? i.substr(0, j) + thousands_sep : "");
	kw = i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousands_sep);
	//kd = (decimals ? dec_point + Math.abs(number - i).toFixed(decimals).slice(2) : "");
	kd = (decimals ? dec_point + Math.abs(number - i).toFixed(decimals).replace(/-/, 0).slice(2) : "");

	return km + kw + kd;
}
