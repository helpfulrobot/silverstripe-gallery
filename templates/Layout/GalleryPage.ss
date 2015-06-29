<%-- WARNING! The silverstrap theme overrides this template --%>
<h1>$Title</h1>
<% include ContentGallery %>
<div class="typography">
	$Content
	$Form
</div>

<%-- Include Fotorama 4 and Colorbox 1
     Once my PR is included (if it will be) we can use jsdelivr for everything:
     https://github.com/jsdelivr/jsdelivr/pull/5523 --%>
<% require CSS("//cdn.jsdelivr.net/jquery.fotorama/4/fotorama.min.css") %>
<% require CSS("//cdnjs.cloudflare.com/ajax/libs/jquery.colorbox/1.4.33/example5/colorbox.min.css") %>
<script type="text/javascript" src="//cdn.jsdelivr.net/g/jquery@1,jquery.fotorama@4,colorbox@1"></script>

<%-- Enable the gallery --%>
<script type="text/javascript">
\$(document).ready(function () {
	// Enable zoom with colorbox
	var transition;
	\$(document).on('fotorama:show', function () {
		transition = true;
	}).on('fotorama:showend', function () {
		transition = false;
	}).on('fotorama:load', function (ev, fotorama, extra) {
		extra.frame['\$stageFrame'].find('.fotorama__img').not('.fotorama__img--full')
			.css('cursor', 'zoom-in')
			.on('click', function () {
				if (transition)
					return;
				\$.colorbox({
					href: extra.frame.full,
					title: extra.frame.caption,
					photo: true
				});
			});
	});

	// Enable the Fotorama gallery
	\$('#ss-gallery').fotorama({
		nav: 'thumbs',
		click: false,
		allowfullscreen: 'native',
		width: '100%'
	});
});
</script>
