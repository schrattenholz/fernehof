 <style>
 .headerImage{
	height:200px;
	background:url($MainImage.ScaleWidth(767).URL) center center no-repeat fixed;
	background-size:cover;
 }
 @media only screen and (min-width: 768px) {
   .headerImage{
   height:400px;
	background:url($MainImage.URL) center center no-repeat fixed;
	
 }
}
 </style>
 <% if $MainImage %>
 <div class="container-fluid p-0">
  <div class="row no-gutters">
    <div class="col-md-12 headerImage">

    </div>
  </div>
</div>
<% end_if %>
<!-- Split section: Map + Contact form-->
<div class="colorSet{$ColorSetID}">
	<section class="container p-4 mb-md-3  " >
		<div class="row"> 
			<aside class="col-md-8 mb-4">
				$Content
				<div class="mt-5">
				$Form
				</div>
			</aside>
		<div class="col-md-4 mb-4 align-self-start">
			<div class="d-flex flex-column h-100 justify-content-center bg-size-cover bg-position-center rounded-lg">
				<div class="py-4 my-2 px-4">
              <!-- Contacts card: Shadow -->
					<div class="card border-0 box-shadow">
						<div class="card-body">
                           <ul class="list-unstyled">
                               <li class="media mb-0">
                                  <h4>
								<i class="czi-location text-secondary"></i></span>
								</h4>
                                   <div class="media-body  pl-3">
                                       <address>
									$SiteConfig.Street <br/>
									$SiteConfig.ZIP $SiteConfig.City
                                          
                                       </address>
                                   </div>
                               </li>
							<li class="media mb-0 pt-2">
							 <h4>
                                   <i class="czi-phone text-secondary"></i>
								</h4>
								<div class="media-body  pl-3">
								$SiteConfig.Phone
								</div>
                               </li>
							<% if $SiteConfig.Fax %>
							<li  class="media mb-0 pt-2">
							 <h4>
                               <i class="czi-document text-secondary"></i>
							</h4>
							<div class="media-body pl-3">
							$SiteConfig.Fax
							</div>
                               </li>
							<% end_if %>
                               <li class="media mb-0 pt-2">
							 <h4>
                                   <i class="czi-mail text-secondary"></i>
								</h4>
								<div class="media-body pl-3">
								<a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a>
								</div>
                               </li>
                               <li class="media mb-0 pt-2">
							 <h4>
                                   <i class="czi-globe text-secondary"></i>
								</h4>
								<div class="media-body  pl-3">
								$SiteConfig.Website 
								</div>
                               </li>
							<li class="media mb-0 pt-2">
							 <h4>
								<i class="czi-delivery text-secondary"></i>
								</h4>
								<div class="media-body pl-3">
								<a href="http://maps.google.com/maps?daddr=$SiteConfig.Street, $SiteConfig.City $SiteConfig.ZIP, $SiteConfig.Countr" target="_blank">Zum Routenplaner</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="container-fluid px-0" id="map">
		<div class="row">
			<!-- Google Map -->
			<div class="col-12 google-map">				
				<div  id="map-canvas" data-address="$SiteConfig.Street, $SiteConfig.City $SiteConfig.ZIP, $SiteConfig.Country">
				</div>
			</div>
			<!-- End Google Map -->
		</div>
	</div>
</div>