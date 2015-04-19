+function() {
	$( document ).ready(function() {
		var width = (window.innerWidth > 0) ? window.innerWidth : screen.width;
		var height = $(window).height() -  	$('footer').height() - 62;
		console.log(height);
		var side_bar_height = $('.quick-menu').height();
		
		if(width > 768) {
			if(height > side_bar_height) {
				//$('.share').stickThis({top:0});
				$('.sidebar-menu').stickThis({zindex:-1 });
			}

		}
	});
}(jQuery)