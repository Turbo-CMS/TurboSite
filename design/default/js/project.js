(function ($) {
	"use strict";
	
	/*
	// Carousel
	*/

	$(function () {
		$('[id^=carousel-selector-]').click(function () {
			var id_selector = $(this).attr("id");
			var id = id_selector.substr(id_selector.length - 1);
			id = parseInt(id);
			$('[id^=carousel-selector-]').removeClass('selected');
			$(this).addClass('selected');
		});
	});

})(jQuery);		