	<% include Schrattenholz\Slider\Includes\Slider %>
	<% include CallToActions %>
<% loop ContentObjects.Sort('SortID') %>
 <% if $First &&  $Layout.Title="Teaser Box" %>
 $renderIT

 <% end_if %>
<% end_loop %>
   <!-- Banners-->
 <div class="spacer-light bg-light pt-5">
    <section class="container">
      <div class="row">
        <div class="col-md-7 mb-4">
              $Top.Content
        </div>
        <div class="col-md-5 mb-4">
		<% loop $ContentObjects %>
				<% if $ClassName=="Schrattenholz\ContentObject\CO_Infobox" %>
					$renderIT
				<% end_if %>
		<% end_loop %>
          </div>
      </div>
    </section>
</div>
<% loop ContentObjects.Sort('SortID') %>
	<% if not $Top.Content %>
		 <% if  $Layout.Title="Teaser Box"&& $ClassName!="Schrattenholz\ContentObject\CO_Infobox" %>
		$renderIT
		<% end_if %>
	<% else %>
	<% if not $First %>
			<% if  $Layout.Title="Teaser Box" && $ClassName!="Schrattenholz\ContentObject\CO_Infobox" %>
			$renderIT
			<% end_if %>
		<% end_if %>
	<% end_if %>		
<% end_loop %>



