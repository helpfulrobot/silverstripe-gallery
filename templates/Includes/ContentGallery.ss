<% if $SortedImages %>
<% include Fotorama %>
<div class="row">
	<div id="ss-gallery" class="fotorama" data-auto="false" data-captions="$Captions" data-height="$Top.SlideHeight" data-thumbheight="$Top.StripHeight"><% loop $SortedImages %>
		<a data-caption="$Title.ATT" data-full="$Link.ATT" href="$SetHeight($Top.SlideHeight).Link.ATT"><% with $SetHeight($Top.StripHeight) %><img width="$Width" height="$Height" src="$Link"><% end_with %></a><% end_loop %>
	</div>
</div>
<% end_if %>
