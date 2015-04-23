
+function() {
	$( document ).ready(function() {
		/*var width = (window.innerWidth > 0) ? window.innerWidth : screen.width;
		var height = $(window).height() -  	$('footer').height() - 62;
		
		var side_bar_height = $('.quick-menu').height();
		
		if(width > 768) {
			if(height > side_bar_height) {
				//$('.share').stickThis({top:0});
				alert('top');
				$('.sidebar-menu').stickThis({zindex:-1 });
			}

		}*/
		var dropdown = $('.quick-menu .categorie.dropdown');
		$(dropdown).find('ul.quick-articles-list').show();
		var activeDropdown = {active : dropdown};
		$('.quick-menu .categorie').click(function() {
			if(!$(this).is(activeDropdown.active) ) {
				$(activeDropdown.active).find('ul.quick-articles-list').slideUp('0.5');
				$(activeDropdown.active).removeClass('dropdown');
				$(this).find('ul.quick-articles-list').slideDown('0.5');
				$(this).addClass('dropdown');
				activeDropdown.active = $(this);
			}
			else {
				$(activeDropdown.active).find('ul.quick-articles-list').slideUp('0.5');
				$(activeDropdown.active).removeClass('dropdown');
				activeDropdown.active = false;
			}
		});
	});
}(jQuery)