// object.watch
if (!Object.prototype.watch) {
	Object.defineProperty(Object.prototype, "watch", {
		  enumerable: false
		, configurable: true
		, writable: false
		, value: function (prop, handler) {
			var
			  oldval = this[prop]
			, newval = oldval
			, getter = function () {
				return newval;
			}
			, setter = function (val) {
				oldval = newval;
				return newval = handler.call(this, prop, oldval, val);
			}
			;
			
			if (delete this[prop]) { // can't watch constants
				Object.defineProperty(this, prop, {
					  get: getter
					, set: setter
					, enumerable: true
					, configurable: true
				});
			}
		}
	});
}
 
// object.unwatch
if (!Object.prototype.unwatch) {
	Object.defineProperty(Object.prototype, "unwatch", {
		  enumerable: false
		, configurable: true
		, writable: false
		, value: function (prop) {
			var val = this[prop];
			delete this[prop]; // remove accessors
			this[prop] = val;
		}
	});
}
+function ($) {

	var activeFilter = {active : false};
	$( document ).ready(function() {
		var width = (window.innerWidth > 0) ? window.innerWidth : screen.width;
		if(width > 768) {
			$('.filters').stickThis();
		}
		
		$('.filters a').click(function() {
			if(activeFilter.active == $(this).data('filter')) {
				activeFilter.active = false;
			}
			else {
				activeFilter.active = $(this).data('filter');
			}
		});
		$('.btn-category').click(function() {
			if(activeFilter.active == $(this).data('filter')) {
				activeFilter.active = false;
			}
			else {
				activeFilter.active = $(this).data('filter');
			}
		});
	});
	activeFilter.watch('active',function(id, oldval, newval) {

		if(newval === false) {
			$('.list-articles .article').show();
			$('.filters .active').removeClass('active');
		}
		else {
			$('.list-articles .article').not('.' + newval).hide();
			$('.list-articles .article.' + newval).show();
			$('.filters .active').removeClass('active');
			$('.filters .' + newval).addClass('active');	
		}
		$('html, body').animate({
        	scrollTop: $("#contain").not('.cloned').offset().top
    	}, 500);
		return newval;
	});

}(jQuery)