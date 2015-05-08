<div class="banner" >
		<div class="container content-area">
			<div class="banner-content-category"> 
				<h1>$Title</h1>
				$Content
			</div>
		</div>
</div>

	<div class="container">

		<div class="main" role="main">
			<div class="inner typography line">
				
			</div>
		</div>
	 <% if $Children %>
	  <h2> Please select your product category : </h2>
	  <div class="row choose-product">
	  <% loop $Children %>
	    <a href="$Link"  class="col-md-6 product-box" >
	    	<div class="product-block" <% if $BannerImg %> style="background: url($BannerImg.url) no-repeat center top;background-origin: content-box; background-size: cover;	 " <% end_if %>>
	    		<div class="product-content">
	     			$Image.CroppedImage(250,171) <h4>$Title</h4><button class="btn product-button" type="submit">Select <i class="glyphicon glyphicon-menu-right"></i></button>
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