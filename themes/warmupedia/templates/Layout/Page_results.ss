<div class="banner banner-article" >
       
</div>
<div id="Content" class="searchResults container">
    <h1>$Title</h1>

    <% if $Query %>
        <p class="searchQuery">You searched for &quot;{$Query}&quot;</p>
    <% end_if %>

    <% if $Results %>
    <div class="list-articles">
        <% loop $Results %>
        <div class="article">
            <div class="article-title">
                <h3>$Title</h3> 
            </div>
            <div class="summmary">
                <% if $Content %>
                    <p>$Content.LimitWordCountXML</p>
                <% end_if %>
                Article : {$Title}
            </div>
            <div class="link">
                <a href="$Link" class="btn btn-large category-button  ">Read more <i class="glyphicon glyphicon-menu-right"></i></a>
            </div>
            
            
            
        </div>
        <% end_loop %>
    </div>
    <% else %>
    <p>Sorry, your search query did not return any results.</p>
    <% end_if %>

    <% if $Results.MoreThanOnePage %>
    <div id="PageNumbers">
        <div class="pagination">
            <% if $Results.NotFirstPage %>
            <a class="prev" href="$Results.PrevLink" title="View the previous page">&larr;</a>
            <% end_if %>
            <span>
                <% loop $Results.Pages %>
                    <% if $CurrentBool %>
                    $PageNum
                    <% else %>
                    <a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a>
                    <% end_if %>
                <% end_loop %>
            </span>
            <% if $Results.NotLastPage %>
            <a class="next" href="$Results.NextLink" title="View the next page">&rarr;</a>
            <% end_if %>
        </div>
        <p>Page $Results.CurrentPage of $Results.TotalPages</p>
    </div>
    <% end_if %>
</div>
