<% if $Images %>
<div class="row">
	<div class="lead col-xs-12">
		<div id="ss-gallery" class="fotorama" data-auto="false" data-captions="$Captions" data-height="$Height" data-thumbheight="$ThumbnailHeight"><% loop $Images %>
			<a data-caption="$Title.ATT" data-full="$Link.ATT" href="$SetHeight($Top.Height).Link.ATT"><% with $SetHeight($Top.ThumbnailHeight) %><img width="$Width" height="$Height" src="$Link"><% end_with %></a><% end_loop %>
		</div>
	</div>
</div>
<% end_if %>
