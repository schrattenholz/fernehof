	<% include Schrattenholz\Slider\Includes\Slider %>
	<% include CallToActions %>
<% loop ContentObjects.Sort('SortID').First %>
 <% if  $Layout.Title=="Teaser Box" %>
 $renderIT
 <% end_if %>
<% end_loop %>
   <!-- Banners-->

<% loop ContentObjects.Sort('SortID') %>
	<% if not $Top.Content %>
		 <% if  $Layout.Title!="Teaser Box" %>
		$renderIT
		<% end_if %>
	<% else %>
	<% if not $First %>
			
			$renderIT
			
		<% end_if %>
	<% end_if %>		
<% end_loop %>



