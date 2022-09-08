{* List of projects *}

{* Canonical page address *}
{if $category}
	{$canonical="/projects/{$category->url}" scope=parent}
{elseif $keyword}
	{$canonical="/projects/?keyword={$keyword|escape}" scope=global}
{else}
	{$canonical="/projects" scope=parent}
{/if}

<!-- Breadcrumbs -->
{$level = 1}
<nav class="mt-4" aria-label="breadcrumb">
	<ol itemscope itemtype="https://schema.org/BreadcrumbList" class="breadcrumb">
		<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
			<a itemprop="item" class="text-decoration-none" href="{if $lang_link}{$lang_link}{else}/{/if}"><span itemprop="name">{$lang->home}</span></a>
			<meta itemprop="position" content="{$level++}">
		</li>
		<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
			<a itemprop="item" class="text-decoration-none" href="/projects"><span itemprop="name">{$lang->global_projects}</span></a>
			<meta itemprop="position" content="{$level++}">
		</li>
		{if $category}
			{foreach from=$category->path item=cat}
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active">
					<a itemprop="item" class="text-decoration-none" href="projects/{$cat->url}" title="{$cat->name|escape}"><span itemprop="name">{$cat->name|escape}</span></a>
					<meta itemprop="position" content="{$level++}">
				</li>
			{/foreach}
		{/if}
	</ol>
</nav>
{if $projects}
	<div class="btn-toolbar justify-content-between mb-4" role="toolbar" aria-label="Toolbar sort">
		{* Page title *}
		{if $keyword}
			<h1>{$lang->search} {$keyword|escape}</h1>
		{elseif $page}
			<h1>{$page->name|escape}</h1>
		{else}
			<h1>{$category->name|escape}</h1>
		{/if}
		<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="sortBy" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			{$lang->sort_by}
		</a>
		<div class="dropdown-menu" aria-labelledby="sortBy">
			<a class="dropdown-item {if $sort=='position'}active{/if}" href="{url sort=position page=null}">{$lang->default}</a>
			<a class="dropdown-item {if $sort=='name'}active{/if}" href="{url sort=name page=null}">{$lang->sort_name}</a>
			<a class="dropdown-item {if $sort=='date'}active{/if}" href="{url sort=date page=null}">{$lang->sort_date}</a>
		</div>
	</div>
	<div class="row">
		{foreach $projects as $project}
			<div class="col-md-6 col-lg-6 mb-5">
				<div class="card h-100">
					{if $project->image}
						<img class="card-img-top" src="{$project->image->filename|resize:750:300}" alt="{$project->name|escape}">
					{else}
						<span class="text-center mt-4">
							<img style="width: 210px; height: 210px;" src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$project->name|escape}">
						</span>
					{/if}
					<div class="card-body">
						<h5 class="card-title"><a data-project="{$project->id}" class="text-decoration-none" href="{$lang_link}project/{$project->url}">{$project->name|escape}</a></h5>
						<p class="card-text"><small class="text-muted">{$project->date|date}</small></p>
						<p class="card-text">{$project->annotation|strip_tags|truncate:165}</p>
					</div>
					<div class="card-footer">
						<a href="{$lang_link}project/{$project->url}" class="btn btn-primary btn-sm">{$lang->more_details}</a>
					</div>
				</div>
			</div>
		{/foreach}
	</div>

	<!-- Pagination -->
	{include file='pagination.tpl'}

	{* Page description *}
	{$page->body}

	{if $current_page_num==1}
		{* Category description *}
		{$category->description}
	{/if}
{else}
	{$lang->nothing_found}
{/if}