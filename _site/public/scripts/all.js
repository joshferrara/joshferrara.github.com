jQuery(document).ready(function($){
		
	// page load inbootstrap
	offset = ((window.innerHeight - 510) / 2);
	if (offset <= 25){
		offset = 25 
	};
	$('body.home .logo').css('margin-top', offset);

	
	// dim icons
	$('.icon').css('opacity', '0.2');
	
	// fade in/out icons on hover
	$('.icon').hover(function(){
		$(this).stop().animate({opacity: '1'}, 200);
		$(this).tooltip('show');
	}, function(){
		$(this).stop().animate({opacity: '0.2'}, 200);
	});
	
	// icon tooltips
	$('.icon a').tooltip({placement: 'bottom'});

	// bio popovers
	$('.bio a.pop').popover();

	// my pic animation
	$('.me').hover(function(){
		$(this).addClass('hover');
		$('.bio_content').addClass('hover').stop().fadeIn(800);
	}, function(){
		$(this).removeClass('hover');
		$('.bio_content').removeClass('hover').stop().fadeOut(200);
	});
	
	
});

