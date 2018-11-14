$(function()
{
	$slider = $('#slider');
	$slide = $slider.find('li');
	slideWidth = $slide.eq(0).width();
	slidesCount = $slide.length;
	isAnimated = false;
	active = 0;
	i = 0;

	while( i < slidesCount )
	{
		$('<li>', {index: i}).appendTo('.pagination');
		i++;
	}
	$('.slider-wrapper .pagination li:first').addClass('active');

	$('.slider-wrapper').on('click', '.next', function()
	{
		if( !isAnimated )
		{
			isAnimated = true;
			active++;
			if( active == slidesCount )
				active = 0;
			$('.pagination li').eq(active).addClass('active').siblings().removeClass('active');
			$slider.animate({left: '-=' + slideWidth}, 700, function()
			{
				$slider
					.find('li:first')
					.appendTo($slider)
					.parent()
					.css({'left': 0});
				isAnimated = false;
			});
		}
	});

	$('.slider-wrapper').on('click', '.prev', function()
	{
		if( !isAnimated )
		{
			isAnimated = true;
			active--;
			if( active < 0 )
				active = slidesCount - 1;
			$('.pagination li').eq(active).addClass('active').siblings().removeClass('active');
			$slider
				.css({'left': -slideWidth})
				.find('li:last')
				.prependTo($slider)
				.parent()
				.animate({left: 0}, 700);
				isAnimated = false;
		}
	});

	$('.navbar').on('click', '.navbar-toggle', function()
	{
		$('.navbar-collapse').toggleClass('in');
		$(this).toggleClass('navbar-toggle--open');
	});

	$('.fanc').fancybox();

});