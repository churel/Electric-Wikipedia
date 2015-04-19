<div class="for-print visible-print-block">
    <img alt="Brand" src="{$ThemeDir}/images/logo-high-res.png" class=" print-logo" />
  </div>
<header >
	<nav class="navbar navbar-default navbar-static-top container">
		<div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/"><img alt="Brand" src="{$ThemeDir}/images/logo-high-res.png"></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
         <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <% if $Menu(2) %>
          <ul class="nav navbar-nav category-products">
          <% loop $Menu(2) %>
            <li><a href="$Link"><div class="visible-lg-block visible-md-block" >$Icon</div>$Title</a></li>
          <% end_loop %>
           </ul>
        <% end_if %>
          <ul class="nav navbar-nav navbar-right hidden-xs">
            <li>
            <div class="form-group">
              <% if $SearchForm %>
					$SearchForm
			<% end_if %>
            </div>
            
          </form></li>
           
          </ul>
          </div><!-- /.navbar-collapse -->
        
      </div>
	</nav>
</header>
