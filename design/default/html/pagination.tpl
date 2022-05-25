{* Pagination *}

{if $total_pages_num>1}
	{* Script for paging through ctrl > *}
	{* Links to adjacent pages must have id PrevLink and NextLink *}
	<script type="text/javascript" src="js/ctrlnavigate.js"></script>

	<!-- Pagination -->
	<nav aria-label="Page navigation example">
		<ul class="pagination justify-content-center">

			{* Number of displayed links to pages *}
			{$visible_pages = 11}

			{* By default, start output from page 1 *}
			{$page_from = 1}

			{* If the page selected by the user is farther than the middle of the "window" - we start output not from the first one *}
			{if $current_page_num > floor($visible_pages/2)}
				{$page_from = max(1, $current_page_num-floor($visible_pages/2)-1)}
			{/if}

			{* If the page selected by the user is close to the end of navigation, start from the "end-window" *}
			{if $current_page_num > $total_pages_num-ceil($visible_pages/2)}
				{$page_from = max(1, $total_pages_num-$visible_pages-1)}
			{/if}

			{* To which page to display - display the entire window, but not more than the actual number of pages *}
			{$page_to = min($page_from+$visible_pages, $total_pages_num-1)}

			{if $current_page_num==2}<li class="page-item"><a class="page-link" href="{url page=null}">{$lang->back}</a></li>{/if}
			{if $current_page_num>2}<li class="page-item"><a class="page-link" href="{url page=$current_page_num-1}">{$lang->back}</a></li>{/if}

			{* Link to 1 page is always displayed *}
			<li class="page-item {if $current_page_num==1}active{/if}"><a class="page-link" href="{url page=null}">1</a></li>

			{* Display the pages of our "window" *}
			{section name=pages loop=$page_to start=$page_from}
				{* Number of the currently displayed page *}
				{$p = $smarty.section.pages.index+1}
				{* For the outermost pages of the "window", display ellipsis if the window is not near the navigation border *}
				{if ($p == $page_from+1 && $p!=2) || ($p == $page_to && $p != $total_pages_num-1)}
					<li class="page-item {if $p==$current_page_num}active{/if}"><a class="page-link" href="{url page=$p}">...</a></li>
				{else}
					<li class="page-item {if $p==$current_page_num}active{/if}"><a class="page-link" href="{url page=$p}">{$p}</a></li>
				{/if}
			{/section}

			{* Link to the last page is always displayed *}
			<li class="page-item  {if $current_page_num==$total_pages_num}active{/if}"><a class="page-link" href="{url page=$total_pages_num}">{$total_pages_num}</a></li>

			{if $current_page_num<$total_pages_num}<li class="page-item"><a class="page-link" href="{url page=$current_page_num+1}">{$lang->forward}</a></li>{/if}
			<li class="page-item"><a class="page-link" href="{url page=all}">{$lang->all_at_once}</a></li>
		</ul>
	</nav>
	<!-- Pagination (The End) -->
{/if}