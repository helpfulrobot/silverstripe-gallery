<% if $SortedImages %>
<%-- The following line force the inclusion of JQuery *before* ad-gallery --%>
<% include JQuery %>
<% require css(gallery/css/jquery.ad-gallery.css) %>
<% require javascript(gallery/javascript/jquery.ad-gallery.min.js) %>
<% require javascript(gallery/javascript/gallery.js) %>
<div class="row">
	<div id="ss-gallery" class="ad-gallery" style="height:$ImageHeight">
		<div class="ad-image-wrapper"></div>
		<div class="ad-controls"></div>
		<div class="ad-nav">
			<div class="ad-thumbs">
				<ul class="ad-thumb-list"><% loop $SortedImages %>
					<li>
						<a data-target="$Link" href="$Link"><% with $SetHeight($Top.StripHeight) %><img src="$Link" width="$Width" height="$Height"<% if $Top.Captions %> alt="$Title"<% end_if %>><% end_with %></a>
					</li><% end_loop %>
				</ul>
			</div>
		</div>
	</div>
</div>
<% end_if %>
