
+function() {
	$( document ).ready(function() {


	
    // Target your .container, .wrapper, .post, etc.
    $(".not-sidebar-content").fitVids();

		var dropdown = $('.quick-menu .categorie.dropdown');
		$(dropdown).find('ul.quick-articles-list').show();
		var activeDropdown = {active : dropdown};
		$('.quick-menu .categorie > a').click(function() {
			if(!$(this).is(activeDropdown.active) ) {
				$(activeDropdown.active).parent().find('ul.quick-articles-list').slideUp('0.5');
				$(activeDropdown.active).parent().removeClass('dropdown');
				$(this).parent().find('ul.quick-articles-list').slideDown('0.5');
				$(this).parent().addClass('dropdown');
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