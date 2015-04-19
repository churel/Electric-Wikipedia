
<div class="banner banner-article" <% if $Parent.Parent.BannerImg %> style="background: url($Parent.Parent.BannerImg.url) " <% end_if %>>
		<div class="container content-area">
				<div class="banner-content hidden-print"> <a href="/">Home</a> / <a href="$Parent.Parent.Link">$Parent.Parent.Title</a> / <a href="$Parent.Link">$Parent.Title</a></div>
				<div class="clear"></div>
				
		</div>
</div>

<div class="container">
		<div class="">
		</div>
		<div class="sidebar hidden-sm hidden-xs">
			<h2> Quick Menu </h3>
			<div class="sidebar-menu hidden-print" >
				<div class="share ">
					<% if not $Video %>
						<a class="btn-warmupedia" onClick="window.print()"  href="#" title="Print this page">
							<i class="glyphicon glyphicon-print"></i>
						</a>
					<% end_if %>
					<a class="btn-warmupedia" href="mailto:?subject=$Title&amp;body={$BaseHref}{$Link}" title="Share by Email">
						<i class="glyphicon glyphicon-envelope"></i> 
					</a>
				</div>
				<% control Parent %>
					<ul class="quick-menu">
					<% loop $Children %>
						
						<%if $ID = $Top.ID %>
							<li class="active <% if $First %>first<% end_if %>" ><a href="$Link">$Title  <i class="glyphicon glyphicon-menu-right"></i></a></li>
						<% else %>
							<li <% if $First %>class="first" <% end_if %>><a href="$Link">$Title  <i class="glyphicon glyphicon-menu-right" onClick="window.print()"></i></a></li>
						<% end_if %>
					<% end_loop %>
					</ul>
				</div>
			<% end_control %>
		</div>
		<div class="not-sidebar-content ">
			<h1>$Title</h1>
			<div class="share hidden-print">
				<% if not $Video %>
					<a class="btn-warmupedia" onClick="window.print()"  href="#" title="Print this page">
						<i class="glyphicon glyphicon-print"></i>
					</a>
				<% end_if %>
				<a class="btn-warmupedia" href="mailto:?subject=$Title&amp;body={$BaseHref}{$Link}" title="Share by Email">
					<i class="glyphicon glyphicon-envelope"></i>
				</a>
			</div>
			$Content
		</div>
		<div class="return-top hidden-print">
			<a class="center btn btn-product" id="btn-top"href="#top"><i class=" glyphicon  glyphicon-chevron-up"></i>Back to top</a>	
		</div>
</div>