$(document).on('click', '.btn--registration, .btn--order-ikon', function(event)
{

	var $form = $(this).closest('form');
	var bHasErrors = false;

	$form.find('input:required').each(function() {
		this.setCustomValidity('');
		if( !this.checkValidity() ){
			this.setCustomValidity('Это поле обязательно для заполнения');
			bHasErrors = true;
		}
	});

	if( !bHasErrors ){
		event.preventDefault();

		var data = $form.serializeArray();
		$.post($form.attr('action'), data, function(response)
		{
			if( response['VALIDATION_ERROR'] )
			{
				$.each(response.ERROR_FIELDS, function(index, value)
				{
					$form.find('[name=' + value + ']').addClass('form__field--error');
				});
			}
			if( response.SUCCESS )
			{
				$form
					.find('.form__field--error')
					.removeClass('form__field--error')
					.end()
					.trigger('reset')
				;
				if( $form.parent().data('res') == 'res-text_order' ){
					$.magnificPopup.open({
						items: {
							src: '#res-text_order', // can be a HTML string, jQuery object, or CSS selector
							type: 'inline'
						}
					});
				}
				else{
					$('#res_link').eq(0).trigger('click');
				}
			}
		}, 'json');
	}


});