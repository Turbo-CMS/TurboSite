{* List Projects *}

{* Canonical *}
{if isset($projects_category)}
	{$canonical="/projects/{$projects_category->url}" scope=global}
{elseif isset($keyword)}
	{$canonical="/projects/?keyword={$keyword|escape}" scope=global}
{else}
	{$canonical="/projects" scope=global}
{/if}

{* Breadcrumb *}
{$level = 1}
<nav class="mt-4" aria-label="breadcrumb">
	<ol itemscope itemtype="https://schema.org/BreadcrumbList" class="breadcrumb">
		<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
			<a itemprop="item" class="text-decoration-none" href="{if $lang_link}{$lang_link}{else}/{/if}">
				<span itemprop="name" title="{$lang->home}"><i class="fal fa-house me-2"></i>{$lang->home}</span>
			</a>
			<meta itemprop="position" content="{$level++}" />
		</li>
		<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
			<a itemprop="item" class="text-decoration-none" href="{$lang_link}projects">
				<span itemprop="name">{$lang->global_projects}</span>
			</a>
			<meta itemprop="position" content="{$level++}" />
		</li>
		{if isset($projects_category)}
			{foreach $projects_category->path as $cat}
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active">
					<a itemprop="item" class="text-decoration-none" href="{$lang_link}projects/{$cat->url}" title="{$cat->name|escape}">
						<span itemprop="name">{$cat->name|escape}</span>
					</a>
					<meta itemprop="position" content="{$level++}" />
				</li>
			{/foreach}
		{elseif isset($keyword)}
			<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active">
				<a itemprop="item" class="text-decoration-none" href="{$lang_link}articles?keyword={$keyword|escape}">
					<span itemprop="name">{$lang->search}</span>
				</a>
				<meta itemprop="position" content="{$level++}" />
			</li>
		{/if}
	</ol>
</nav>

{if $projects}
	<div class="btn-toolbar justify-content-between mb-4" role="toolbar" aria-label="toolbarSort">
		{* Page title *}
		{if isset($keyword)}
			<h1>{$lang->search} {$keyword|escape}</h1>
		{elseif isset($page)}
			<h1 data-page="{$page->id}">{$page->name|escape}</h1>
		{else}
			<h1 data-projects-category="{$projects_category->id}">
				{if isset($projects_category->name_h1) && $projects_category->name_h1}
					{$projects_category->name_h1|escape}
				{elseif isset($projects_category->name) && $projects_category->name}
					{$projects_category->name|escape}
				{/if}
			</h1>
		{/if}
		<a class="btn btn-outline-secondary dropdown-toggle" href="#" role="button" id="sortBy" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
			<div class="col-md-6 col-lg-6 mb-4">
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
						<div class="card-text"><small class="text-muted">{$project->date|date}</small></div>
						<div class="card-text">{$project->annotation|strip_tags|truncate:165}</div>
					</div>
					<div class="card-footer">
						<a href="{$lang_link}project/{$project->url}" class="btn btn-primary btn-sm">{$lang->more_details}<i class="fal fa-arrow-right ms-2"></i></a>
					</div>
				</div>
			</div>
		{/foreach}
	</div>

	{* Pagination *}
	{include file='paginations/pagination.tpl'}

	{* Page description *}
	{if isset($page)}
		{$page->body}
	{/if}

	{* Category description *}
	{if isset($projects_category) && $current_page_num == 1}
		{$projects_category->description}
	{/if}	
{else}
	{$lang->nothing_found}
{/if}