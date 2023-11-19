<div class="mobile-offcanvas offcanvas-star bg-body col-lg-3" tabindex="-1" id="sidebar" aria-labelledby="sidebarLabel">

	{* Header Sidebar *}
	<div class="offcanvas-header mt-3">
		<h5 class="offcanvas-title" id="sidebarLabel">{$lang->catalog}</h5>
		<button type="button" class="btn-close" data-bs-dismiss="offcanvas" data-bs-target="#sidebar" aria-label="Close"></button>
	</div>

	{if $module=='ArticlesView'}
		{* Articles Sidebar *}
		{include file='sidebars/articles_sidebar.tpl'}
	{elseif $module=='ProjectsView'}
		{*  Projects Sidebar *}
		{include file='sidebars/projects_sidebar.tpl'}
	{elseif $module=='BlogView'}
		{* Blog Sidebar *}
		{include file='sidebars/blog_sidebar.tpl'} 
	{else}
		{if $module!='SearchView'}
			{* Search *}
			<form class="input-group my-4" action="{$lang_link}search">
				<input class="form-control pages-search" type="text" name="keyword" value="{if isset($keyword) && $keyword}{$keyword|escape}{/if}" placeholder="{$lang->search}...">
				<button class="btn btn-success" type="submit"><i class="fal fa-search"></i></button>
			</form>
		{/if}
	{/if}

	{* Last Comments *}
	{include file='sidebars/last_comments.tpl'}

</div>