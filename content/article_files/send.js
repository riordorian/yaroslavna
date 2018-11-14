$(document).on('click', '.btn--registration, .btn--order-ikon', function(event)
{
	event.preventDefault();
	var $form = $(this).closest('form');
	data = $form.serializeArray();
	$.post('/registration.php', data, function(response)
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
			$('#res_link').eq(0).trigger('click');
		}
	}, 'json');
});