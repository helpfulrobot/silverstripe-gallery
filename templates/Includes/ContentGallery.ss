<% if $Images %>
<%-- The following line force the inclusion of JQuery before ad-gallery --%>
<% include JQuery %>
<% require css(gallery/css/jquery.ad-gallery.css) %>
<% require javascript(gallery/javascript/jquery.ad-gallery.min.js) %>
<% require javascript(gallery/javascript/gallery.js) %>
<div class="row">
	<div id="gallery" class="ad-gallery">
		<div class="ad-image-wrapper"></div>
		<div class="ad-controls"></div>
		<div class="ad-nav">
			<div class="ad-thumbs">
				<ul class="ad-thumb-list"><% loop $Images %>
					<li>
						<a href="$Link"><img src="$CroppedImage(60,60).Link" <% if not Top.HideDescription %>alt="$Title"<% end_if %> class="image{$Pos}"></a>
					</li><% end_loop %>
				</ul>
			</div>
		</div>
	</div>
</div>
<% end_if %>
