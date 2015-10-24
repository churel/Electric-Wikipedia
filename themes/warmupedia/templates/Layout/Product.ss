
<div class="banner" <% if $Parent.BannerImg %> style="background: url($Parent.BannerImg.url) " <% end_if %> >
	<div class="container content-area banner-content-product">
		<div class="banner-content"> 
			<a href="/">Home</a> / <a href="$Parent.Link">$Parent.Title</a>
			<h1>$Title</h1>
			$Content
		</div>
		<div class="products-download">
			<% if $Manual_Installation %>
				<a target="blank" class="btn-product btn-warmupedia" href="$Manual_Installation.url"> <i class="glyphicon glyphicon-download-alt"> </i>  Download Installation Manual</a>
			<% end_if %>
			<% if $Manual_Programmation %>
				<a target="blank" class="btn-product btn-warmupedia" href="$Manual_Programmation.url"> <i class="glyphicon glyphicon-download-alt"> </i>  Download Programming Manual</a>
			<% end_if %>
			<% if $Specification_Sheet %>
				<a target="blank" class="btn-product btn-warmupedia" href="$Specification_Sheet.url"> <i class="glyphicon glyphicon-download-alt"> </i>  Download Specification Sheet</a>
			<% end_if %>
		</div>
	</div>
</div>

<% if $Children %>
<div class="container" >
	<div class="filters" id="contain">
		<h2 class="text-filter ">Please use these filters : </h2>
		$getCategories()
	</div>

	 	<div class="list-articles">
	 		<% loop $Children %>
	 			<div class="article $getCategoryClass() <% if $Video %> cat-video <% end_if%> <% if $Picture %> cat-picture <% end_if%> ">
	 				<div class="article-title">

		 				<h3>$Title</h3> 
		 				<% if $Category %>
		 				<div class="category">
			 					<a class="btn-category" href="#filter-$getCategoryClass()"data-filter="$getCategoryClass()"><i class="glyphicon glyphicon-tag"></i> $Category</a>
			 					<% if $Video %>
			 						<a class="btn-category btn-category-video" href="#cat-video" data-filter="cat-video"><i class="glyphicon glyphicon-play"></i>Video</a>
			 					<% end_if %>
			 					<% if $Picture %>
			 						<a class="btn-category btn-category-picture"  href="#cat-picture" data-filter="cat-picture"><i class="glyphicon glyphicon-picture"></i>Picture</a>
			 					<% end_if %>
			 			</div>
			 			<% end_if %>
		 			</div>
	 				<div class="summmary">
	 					$Teaser
	 				</div>
	 				<div class="link">
	 					<a href="$Link" class="btn btn-large category-button ">Read more <i class="glyphicon glyphicon-menu-right"></i></a>
	 				</div>
	 			</div>
	 		<% end_loop %>
		</div>
		<div class="return-top">
			<a class="center btn btn-product  " id="btn-top"href="#top"><i class=" glyphicon  glyphicon-chevron-up"></i>Back to top</a>	
		</div>
	</div>
<% end_if %>