{* List Projects *}

{* Canonical *}
{if $projects_category}
	{$canonical="/projects/{$projects_category->url}" scope=global}
{elseif $keyword}
	{$canonical="/projects/?keyword={$keyword|escape}" scope=global}
{else}
	{$canonical="/projects" scope=global}
{/if}

{if $projects}
	<div class="btn-toolbar justify-content-between mb-4" role="toolbar" aria-label="toolbarSort">
		{* Page title *}
		{if $keyword}
			<h1>{$lang->search|escape} {$keyword|escape}</h1>
		{elseif $page}
			<h1 data-page="{$page->id}">{$page->name|escape}</h1>
		{else}
			<h1>
				{if $projects_category && $projects_category->name_h1}
					<span data-projects-category="{$projects_category->id}">{$projects_category->name_h1|escape}</span>
				{elseif $projects_category && $projects_category->name}
					<span data-projects-category="{$projects_category->id}">{$projects_category->name|escape}</span>
				{/if}
			</h1>
		{/if}
		
		{* Sort *}
		<div class="align-self-center">
			<a class="btn btn-outline-secondary dropdown-toggle" href="#" role="button" id="dropdownSortLink" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				{$lang->sort_by|escape}
			</a>
			<div class="dropdown-menu" aria-labelledby="dropdownSortLink">
				<a class="dropdown-item {if $sort=='position'}active{/if}" href="{url sort=position page=null}">{$lang->default|escape}</a>
				<a class="dropdown-item {if $sort=='date'}active{/if}" href="{url sort=date page=null}">{$lang->sort_date|escape}</a>
				<a class="dropdown-item {if $sort=='rate'}active{/if}" href="{url sort=rate page=null}">{$lang->by_rating|escape}</a>
			</div>
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
						<a href="{$lang_link}project/{$project->url}" class="btn btn-primary btn-sm">{$lang->more_details|escape}<i class="fal fa-arrow-right ms-2"></i></a>
					</div>
				</div>
			</div>
		{/foreach}
	</div>

	{* Pagination *}
	{include file='paginations/pagination.tpl'}

	{* Page Description *}
	{if $page}
		{$page->body}
	{/if}

	{* Category Description *}
	{if $projects_category && $current_page_num == 1}
		{$projects_category->description}
	{/if}	
{else}
	{$lang->nothing_found|escape}
{/if}