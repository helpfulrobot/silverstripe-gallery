<% if $Images %>
<div class="row">
	<div class="lead col-xs-12">
		<div id="ss-gallery" class="fotorama" data-auto="false" data-captions="$Captions" data-height="$Height" data-thumbheight="$ThumbnailHeight"><% loop $Images %>
			<a href="$SetHeight($Top.Height).Link"<% if $Content %>
			   data-summary="$Content.FirstSentence"
			   data-caption="$Content.ATT"<% else %>
			   data-caption="$Title.ATT"<% end_if %>
			   data-full="$Link.ATT"><% with $SetHeight($Top.ThumbnailHeight) %><img width="$Width" height="$Height" src="$Link" alt="$Title.ATT" ><% end_with %></a><% end_loop %>
		</div>
	</div>
</div>
<% end_if %>
