(function ($){
                
            $.fn.initSlider = function(options) {
                var container = this;
                var elem =  container.find('li');
                elem.addClass('slide');
                var slide = $('.slide').eq(0);
                var slide_count = container.find('.slide').length;
                
                
                var settings = $.extend({
                    slideEffect:   'fade',
                    cyclic:    'true',
                    swipe:  'false',
                    autoStart: 'false'
                }, options);
              
              
                return this.each(function() {
                    
                    if(settings.slideEffect=="slide"){
                        var slide_count = container.find('.slide').length;
                        var container_width = slide.width()*slide_count;
                        container.find('.slide').css({'float':'left'});
                        container.css('width',container_width);
                    }
                    
                    elem.eq(0).show().addClass('active');
                    
                    var container_height = elem.height();
                    container.css({'overflow':'hidden','height': container_height,'position':'relative'});
                    
                    var slide_count = elem.length;
                    
                    for(var i=0;i<slide_count;i++){
                        elem.eq(i).attr('rel',i+1);//добавляем каждому слайду аттрибут rel
                    }
                    
                    var next = container.parent().find('.next');//селектор кнопки next
                    var prev = container.parent().find('.prev');//селектор кнопки prev
                    var button_height = next.height();//высота кнопок навигации
                    next.css({'top':'50%','marginTop':-(button_height/2)})//позиционирование кнопок навигации по центру блока
                    prev.css({'top':'50%','marginTop':-(button_height/2)})//позиционирование кнопок навигации по центру блока
                    flag = 1;
                   
                   next.click(function(){rotate(1)});
                   prev.click(function(){rotate(-1)});
                   
                   if(settings.autoStart=="true"){
                        intervalID = setInterval(function(){
                                    rotate(1);
                                    $('.slider_wrapp_main').hover(function(){
                                                clearInterval(intervalID);            
                                    },
                                    function(){
                                                intervalID = setInterval(function(){rotate(1)},3000);
                                    });
                        },3000);
                        
                        
                   }
/*########################//ФУНКЦИЯ СМЕНЫ СЛАЙДА#####################*/
var rotate = function(target,e){
    
        var slide_count = container.find('.slide').length;
        l = parseInt(target);
        var active_slide = container.find('.active');
        var active_slide_number = parseInt(container.find('.active').attr('rel'));
        var active_next_number = active_slide_number+l;



//ПОЯВЛЕНИЕ ЭЛЕМЕНТОВ FADE
if(settings.slideEffect=="fade"){
            //container.find('.slide').hide();
        if(settings.cyclic=="false"){
            if ((active_next_number==0)&&(l==-1)) {
                return
            }
            
            else if ((active_next_number==slide_count+1)&&(l==1)) {
                return
            }
            
            else{
                //container.find('.active').removeClass('active').hide()
                //container.find('.slide').eq(active_next_number-1).addClass('active').fadeIn("slow");
                }
        }
        
        
        if(settings.cyclic=="true"){
            if ((active_next_number==0)&&(l==-1)) {
                //container.find('.active').removeClass('active'),hide();
                //active_next_number==slide_count;
                //container.find('.slide').eq(active_next_number-1).addClass('active').fadeIn("slow");
                
                container.find('.active').css({opacity: 0.0}).removeCLass('active')
                        .next().addClass('active')
                        .animate({opacity: 1.0}, 1000);
            }
            
            else if ((active_next_number==slide_count+1)&&(l==1)) {
                //container.find('.active').removeClass('active').hide();
                //container.find('.slide').eq(0).addClass('active').fadeIn("slow");
                
               container.find('.active').css({opacity: 0.0}).removeCLass('active')
                        .next().addClass('active')
                        .animate({opacity: 1.0}, 1000);
            }
            
            else{
                //container.find('.active').removeClass('active').hide();
                //container.find('.slide').eq(active_next_number-1).addClass('active').fadeIn(1000);
                
                a = container.find('.active');
                a.css({opacity: 0.0}).removeClass('active');
                        a.next().addClass('active')
                        .animate({opacity: 1.0}, 1000);
                }
            
            // Берем первую картинку
//            var current = ($('.slide.show')?  $('.slide.show') : $('.slide:first'));
//     
//            // Берем следующую картинку, когда дойдем до последней начинаем с начала
//            var next = ((current.next().length) ? ((current.next().hasClass('show')) ? $('.slide:first') :current.next()) : $('.slide:first'));
//            
//            
//            // Подключаем эффект растворения/затухания для показа картинок, css-класс show имеет больший z-index
//            next.css({opacity: 0.0})
//            .addClass('show')
//            .animate({opacity: 1.0}, 1000);
// 
//	// Прячем текущую картинку
//            current.animate({opacity: 0.0}, 1000)
//            .removeClass('show');
            }    
            
    }
    
    
    
    
    
/*########################//ПОЯВЛЕНИЕ С ЭФФЕКТОМ СЛАЙД#####################*/
    if(settings.slideEffect=="slide"){//Если выбрали эффект slide
        container.find('.slide').css({'float':'left'});//Прописываем css для выстроения слайдов в ряд
        if(settings.cyclic=="false"){// Если у слайдера с эффектом слайда задан аттрибут циклиности FALSE
            if ((active_next_number==0)&&(l==-1)) {//Если номер следующего слайда = 0 и нажали на левую кнопку(target = -1)
                return//выход
            }
            
            else if ((active_next_number==slide_count+1)&&(l==1)) {//Если номер следующего слайда > числа слайдов и нажали на правую кнопку(target = +1)
                return//выход
            }
            
            else{// Когда слайд не первый и не последний
               
                if (l>0) {// Если нажали next(target=+1)
                     container.animate({'left':'-='+(slide.width())},"slow",pause);//Сдвигаем слайды на ширину слайда влево
                      container.find('.active').removeClass('active');//убираем у текущего активного элемента класс active
                    container.find('.slide').eq(active_next_number-1).addClass('active');
                }
                
                if (l<0) {
                    container.animate({'left':'+='+(slide.width())},pause);
                    container.find('.active').removeClass('active');
                    container.find('.slide').eq(active_next_number-1).addClass('active');
                }
               
                }
        }
        
        // Если у слайдера с эффектом слайда задан аттрибут циклиности TRUE
        if(settings.cyclic=="true"){
            if ((active_next_number==0)&&(l==-1)) {//Если номер следующего слайда = 0 и нажали на левую кнопку(target = -1)
                //alert();
                container.find('.active').removeClass('active');//убираем у текущего активного элемента класс active
                active_next_number==slide_count;//Присваиваем активному элементу номер = кол-ву слайдов
                container.find('.slide').eq(slide_count-1).addClass('active');//добавляем новому активному элементу класс active
                container.animate({'left':'-='+(container_width - slide.width())},pause);//Осуществляем сдвиг к последнему элементу
            }
            
            else if ((active_next_number==slide_count+1)&&(l==1)) {//Если номер следующего слайда > числа слайдов и нажали на правую кнопку(target = +1)
                container.find('.active').removeClass('active');//убираем у текущего активного элемента класс active
                container.find('.slide').eq(0).addClass('active');//добавляем первому слайду класс active
                container.animate({'left':0},pause);//Осуществляем сдвиг к первому элементу
            }
            
            else{
                if (flag==1) {
                    flag=0;// флаг 0 чтобы не было бесконечной анимации
                    container.find('.active').removeClass('active');//убираем у текущего активного элемента класс active
                    container.find('.slide').eq(active_next_number-1).addClass('active');//добавляем новому активному элементу класс active
                    container.animate({'left':'+='+(-l*slide.width())},"slow",pause);//После выполнения анимации возвращаем флаг=1, чтобы кнопки стали кликабельными
                }
            }
        }   
    }
}
/*########################//ПОЯВЛЕНИЕ С ЭФФЕКТОМ СЛАЙД КОНЕЦ#####################*/





/*########################//ФУНКЦИЯ ЗАДЕРЖКИ ДО НАЧАЛА СЛЕДУЮЩЕГО ДЕЙСТВИЯ#####################*/
var pause = function(){
    setTimeout(function(){flag=1},100);
}
/*######################//ФУНКЦИЯ ЗАДЕРЖКИ ДО НАЧАЛА СЛЕДУЮЩЕГО ДЕЙСТВИЯ КОНЕЦ########################*/







/*########################СЛАЙД ЭФФЕКТ SWIPE#####################*/
if (settings.swipe=="true") {
     container.on("swipeleft",function(){
        rotate(1);
    });
                
    container.on("swiperight",function(){
        rotate(-1);
    });
}
/*###########################СЛАЙД ЭФФЕКТ SWIPE КОНЕЦ##############*/
                
    });
}

/*################################################//ФУНКЦИЯ СМЕНЫ СЛАЙДА КОНЕЦ#################################################*/
})( jQuery );