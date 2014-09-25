$(document).ready(function () {
    var subject = $('.ad-gallery');
    if (subject.length) {
	subject.adGallery({
	    loader_image: 'gallery/images/loader.gif',
	    width: false,
	    height: false
	});
	if ($.isFunction($.colorbox)) {
	    // Enable ColorBox support for the gallery
	    subject.addClass('colorbox-enabled');
	    subject.on('click', '.ad-image', function () {
		$.colorbox({
		    href: $(this).find('img').attr('src'),
		    title: $(this).find('.ad-image-description').text()
		});
	    });
	}
    }
});
