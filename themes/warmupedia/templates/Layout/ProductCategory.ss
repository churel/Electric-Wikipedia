<div class="banner banner-product-category" <% if $BannerImg %> style="background: url($BannerImg.url) " <% end_if %> >
		<div class="container content-area">
				<div class="banner-content-category"> 
					<h1>$Title</h1>
					$Content
				</div>
			</div>
		</div>
	</div>
	<div class="container">

		<div class="main" role="main">
			<div class="inner typography line">
				
			</div>
		</div>
	 <% if $Children %>
	  <h2> Please select your product : </h2>
	  <div class="row choose-product">
	  <% loop $Children %>
	    <a href="$Link" title="$Title"  class="col-md-4 product-box" >
	    	<div class="product-inside-block" >
	    		<div class="product-content">
	     			$Photo.CroppedImage(250,200) 
	     			<h4> $Title</h4>
	     			<button class="btn product-button" type="submit">Get an answer <i class="glyphicon glyphicon-menu-right"></i></button>
	    		</div>
	    	</div>
	    </a>
	  <% end_loop %>
	 </div>
	<% end_if %>
	$Form
	<div class="return-top">
		<a class="center btn btn-product -top " id="btn-top"href="#top"><i class=" glyphicon  glyphicon-chevron-up"></i>Back to top</a>	
	</div>
</div>