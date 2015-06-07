<footer class="hidden-print">
	<div class="container ">
	<div class="row">
		<div class="col-md-12 sitemap" >
			<div class="row" id="list-link">
			<h3>Sitemap</h3>
			<% if $Menu(2) %>
	 			<ul >
				  <% loop $Menu(2) %>
				    <li class="col-md-3">
				    	<a href="$Link" class="link footer-title-link">$Title</a>
				    	<% if $Children %>
				 			<ul>
							  <% loop $Children %>
							    <li><a href="$Link" class="link">$Title</a></li>    	
							  <% end_loop %>
							</ul>
						<% end_if %>
				    </li>    	
				  <% end_loop %>
				</ul>
			<% end_if %>
			</div>
		</div>
		

		<div class="col-md-4 socials">
			<h3>Social Media <i class="icon-plus"></i></h3>
			<a href="https://www.facebook.com/WarmupNorthAmerica" class="icon-social icon-facebook" target="_blank" onclick="ga('send', 'social', 'Facebook', 'Click', 'Browse Products', {'page': document.URL});">facebook</a>
			<a href="https://www.linkedin.com/company/warmup-inc?trk=nmp_rec_act_company_photo" class="icon-social icon-linkedin" target="_blank" onclick="ga('send', 'social', 'LinkedIn', 'Click', 'Browse Products', {'page': document.URL});">linkedin</a>
			<a href="https://twitter.com/Warmup_NAmerica" class="icon-social icon-twitter" target="_blank" onclick="ga('send', 'social', 'Twitter', 'Click', 'Browse Products', {'page': document.URL});">twitter</a>
			<a href=" https://plus.google.com/u/1/+WarmupNorthAmerica/posts" class="icon-social icon-google" target="_blank" onclick="ga('send', 'social', 'Google+', 'Click', 'Browse Products', {'page': document.URL});">google+</a>
			<a href=" https://www.youtube.com/user/WarmupInc" class="icon-social icon-youtube" target="_blank" onclick="ga('send', 'social', 'YouTube', 'Click', 'Browse Products', {'page': document.URL});">youtube</a>
		</div>

		

		<div class="clear"></div>
		<div class="col-md-8 accreditations">
				<h3>Accreditations</h3>
			     	<ul>
	                    <li><img src="/themes/warmupedia/images/accreditations/image6.png" alt="" height="35"></li>
				     
	                    <li><img src="/themes/warmupedia/images/accreditations/image8.png" alt="" height="35"></li>
				     
	                    <li><img src="/themes/warmupedia/images/accreditations/image11.png" alt="" height="35"></li>
				     
	                    <li><img src="/themes/warmupedia/images/accreditations/image9.png" alt="" height="35"></li>
				     
	                    <li><img src="/themes/warmupedia/images/accreditations/image13.png" alt="" height="35"></li>
				     
	                    <li><img src="/themes/warmupedia/images/accreditations/image5.png" alt="" height="35"></li>
				     
	                    <li><img src="/themes/warmupedia/images/accreditations/image10.png" alt="" height="35"></li>
				     
	                    <li><img src="/themes/warmupedia/images/accreditations/image7.png" alt="" height="35"></li>
			     </ul>
			
		</div>
	</div>
	</div>

</footer>