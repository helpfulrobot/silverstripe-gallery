<% if $SortedImages %>
<% include Fotorama %>
<div class="row">
	<div class="fotorama" data-nav="thumbs" data-width="100%" data-captions="$Captions" data-height="$Top.SlideHeight" data-thumbheight="$Top.StripHeight" data-allowfullscreen="native"><% loop $SortedImages %>
		<a data-caption="$Title.ATT" href="$SetHeight($Top.SlideHeight).Link"><img <% with $SetHeight($Top.StripHeight) %>width="$Width" height="$Height" src="$Link"<% end_with %> data-full="$Link"></a><% end_loop %>
	</div>
</div>
<% end_if %>
