$(function () {

    $('.podbor img').unveil();

    $(document).on('click', '.question1 ul>li>a', function () {
        $('.question2').slideUp(300);
        $('.question3').slideUp(300);
        $('.question4').slideUp(300);
        $('.question5').slideUp(300);
        var elem = $(this);
        setTimeout(function () {
            $('.question2').slideDown(300);
            $('.question2').html('');
            $('.question2').append('<i class="icon-' + elem.attr('rel') + '"><i>');
            $('.question2').append(elem.siblings('.q1q2').html());
            $('.question2').append('<div class="clear"></div>');
            $("html, body").animate({scrollTop: $('.question2').offset().top}, 1000);
            $(".question2 img").unveil(200);
        }, 300);

        $('.question1 ul>li>a').each(function () {
            $(this).removeClass('active');
        });
        $(this).addClass('active');
        return false;
    });

    $(document).on('click', '.question2 ul>li>a', function () {
        $('.question3').slideUp(300);
        $('.question4').slideUp(300);
        $('.question5').slideUp(300);
        var elem = $(this);
        setTimeout(function () {
            $('.question3').slideDown(300);
            $('.question3').html('');
            $('.question3').append('<i class="icon-' + elem.attr('rel') + '"><i>');
            $('.question3').append(elem.siblings('.q2q3').html());
            $('.question3').append('<div class="clear"></div>');
            $("html, body").animate({scrollTop: $('.question3').offset().top}, 1000);
            $(".question3 img").unveil(200);
        }, 300);

        $('.question2 ul>li>a').each(function () {
            $(this).removeClass('active');
        });
        $(this).addClass('active');
        return false;
    });

    $(document).on('click', '.question3 ul>li>a', function () {
        $('.question4').slideUp(300);
        $('.question5').slideUp(300);
        var elem = $(this);
        setTimeout(function () {
            $('.question4').slideDown(300);
            $('.question4').html('');
            $('.question4').append('<i class="icon-' + elem.attr('rel') + '"><i>');
            $('.question4').append(elem.siblings('.q3q4').html());
            $('.question4').append('<div class="clear"></div>');
            $("html, body").animate({scrollTop: $('.question4').offset().top}, 1000);
            $(".question4 img").unveil(200);
        }, 300);

        $('.question3 ul>li>a').each(function () {
            $(this).removeClass('active');
        });
        $(this).addClass('active');
        return false;
    });

    $(document).on('click', '.question4 ul>li>a', function () {
        $('.question5').slideUp(300);
        var elem = $(this);
        setTimeout(function () {
            $('.question5').slideDown(300);
            $('.question5').html('');
            $('.question5').append('<i class="icon-' + elem.attr('rel') + '"><i>');
            $('.question5').append(elem.siblings('.q4q5').html());
            $('.question5').append('<div class="clear"></div>');
            $("html, body").animate({scrollTop: $('.question5').offset().top}, 1000);
            $(".question5 img").unveil(200);
        }, 300);

        $('.question4 ul>li>a').each(function () {
            $(this).removeClass('active');
        });
        $(this).addClass('active');
        return false;
    });
});
/* End */
;
; /* Start:"a:4:{s:4:"full";s:48:"/podbor/lazyload/jquery.unveil.js?14865679571553";s:6:"source";s:33:"/podbor/lazyload/jquery.unveil.js";s:3:"min";s:0:"";s:3:"map";s:0:"";}"*/
/**
 * jQuery Unveil
 * A very lightweight jQuery plugin to lazy load images
 * http://luis-almeida.github.com/unveil
 *
 * Licensed under the MIT license.
 * Copyright 2013 Luís Almeida
 * https://github.com/luis-almeida
 */

;(function ($) {

    $.fn.unveil = function (threshold, callback) {
        var $w = $(window),
            th = threshold || 0,
            retina = window.devicePixelRatio > 1,
            attrib = retina ? "data-src-retina" : "data-src",
            images = this,
            loaded;

        this.one("unveil", function () {
            var source = this.getAttribute(attrib);
            source = source || this.getAttribute("data-src");
            if (source) {
                this.setAttribute("src", source);
                if (typeof callback === "function") callback.call(this);
            }
        });

        function unveil() {
            var inview = images.filter(function () {
                var $e = $(this);
                if ($e.is(":hidden")) return;

                var wt = $w.scrollTop(),
                    wb = wt + $w.height(),
                    et = $e.offset().top,
                    eb = et + $e.height();

                return eb >= wt - th && et <= wb + th;
            });

            loaded = inview.trigger("unveil");
            images = images.not(loaded);
        }

        $w.on("scroll.unveil resize.unveil lookup.unveil", unveil);

        unveil();

        return this;

    };

})(window.jQuery || window.Zepto);
/* End */
;
; /* /podbor/script.js?14865679573424*/
; /* /podbor/lazyload/jquery.unveil.js?14865679571553*/
