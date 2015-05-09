+function() {
	$( document ).ready(function() {
		$('.not-sidebar-content  img').each(function() {
		 	$(this).removeAttr('width');
		 	$(this).removeAttr('height');
		});
	    $(".not-sidebar-content").fitVids();

		var dropdown = $('.quick-menu .categorie.dropdown');
		$(dropdown).find('ul.quick-articles-list').show();

		var activeDropdown = {active : $('.quick-menu .categorie.dropdown > a')};

		$('.quick-menu .categorie > a').click(function() {
				if(!$(this).is(activeDropdown.active) ) {
					var self = this;
					if(activeDropdown.active == false) {
						$(this).parent().find('ul.quick-articles-list').slideDown('0.5','swing', function() {
						});
					}
					else {
						$(activeDropdown.active).parent().find('ul.quick-articles-list').slideUp('0.5','swing', function() {
							$(self).parent().find('ul.quick-articles-list').slideDown('0.5');
						});
					}
					
					
					$(activeDropdown.active).parent().removeClass('dropdown');
					
					$(this).parent().addClass('dropdown');
					activeDropdown.active = $(this);
					}
				else {
					$(activeDropdown.active).parent().find('ul.quick-articles-list').slideUp('0.5','swing',function() {
					});
					$(activeDropdown.active).parent().removeClass('dropdown');
					activeDropdown.active = false;
				}
			//}
		});
	});
}(jQuery)