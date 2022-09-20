<div  class=" colorSet{$ColorSetID} py-5 container-fluid px-0">
	<!-- Featured category -->
	<section class="row no-gutters ">

        <!-- Product grid (carousel)-->
		<div class="mx-auto py-lg-5 font-size-sm" style="max-width: 35rem;">
			<div style="align-self:center;">
				<h2 class=""><span>$Title</span></h2>
				$Content
			</div>
        </div>
		 <div class="col-md-6 pt-4 pt-md-0">
				<div class="row mx-n2">
				<% if $LimitedEntries.Count>=4 %>
					<% loop $LimitedEntries.Limit(4) %> 
					  <div class="col-12 col-sm-6  px-2 mb-sm-3">
						<div class="card product-card card-static bg-transparent <% if $First %>rounded-big-top-left<% else_if $Last %>rounded-big-bottom-right<% end_if %>">
							<img class="w-100" src="$DefaultImage.Fill(278,278).URL" alt="$Title">
						</div>
					  </div>
					<% end_loop %>
				<% else %>
				<div class="col px-0 px-2 mb-sm-3">
						<div class="card product-card card-static bg-transparent rounded-big-top-left rounded-big-bottom-right">
							<img class="w-100" src="$LimitedEntries.First.DefaultImage.Fill(800,800).URL" alt="Product">
						</div>
					  </div>
				<% end_if %>
				</div>
			</div> 

	</section>
</div>