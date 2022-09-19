<div  class=" colorSet{$ColorSetID} py-5 container-fluid px-0">
	<!-- Featured category -->

    <section class="row no-gutters ">
		
			<div class="col-md-6 bg-position-center bg-size-cover <% if $ImageLeft %>order-md-2<% else %>order-md-1<% end_if %>">
				<div class="mx-auto py-lg-5" style="max-width: 35rem;">
				<% if $ShowTitle %>
							<h2  class="<% if $SubHead %>mb-0<% end_if %>">$Title</h2>
							<% if $SubTitle %>
							<h6 class="font-size-lg font-weight-normal  pb-4">$SubTitle</h6>
							<% end_if %>
						<% end_if %>
						$Content
				</div>
			</div>

			<div class="col-md-6 bg-position-center bg-size-cover bg-secondary <% if $ImageLeft %>order-md-1<% else %>order-md-2<% end_if %>" style="min-height: 30rem; background-image: url($Image.ScaleWidth(800).URL);">
				<span class="split-section-arrow arrow-right"></span>
				</div>

		
	</section>

</div>