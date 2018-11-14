function send(formname){
            form = $('form[name='+formname+']');
            mandatory_elem = form.find('[mandatory=true]');
            form.find('status').html('&nbsp;');
            mandatory_fields_count = form.find('[mandatory=true]').length;
            error_count = 0;
            mandatory_elem.removeClass('fz__error-field');
            for(var i=0;i<mandatory_fields_count;i++){
                if(mandatory_elem.eq(i).val() == '' || mandatory_elem.eq(i).val() == mandatory_elem.eq(i).attr('placeholder')){
                    mandatory_elem.eq(i).addClass('fz__error-field');
                    $('.fz__error-field').eq(0).focus();
                    error_count++;
                }
            }
            if (error_count > 0) return;
                data = form.serializeArray();
                $.post( "/landing/test/action.php",data, function( data ) {
                    if(data.success){
                        yaCounter27298259.reachGoal('zayavka');
                        $('#res-a').eq(0).trigger('click');
                        $('input, textarea').val('');
                    }
                    else{
                        alert("Нет соединения с интернетом! Попробуйте еще раз!");
                    }   
                },'json');
    }