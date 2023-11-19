{* Project page *}

{* Canonical *}
{$canonical="/project/{$project->url}" scope=global}

{* Breadcrumb *}
{$level = 1}
<nav class="mt-4" aria-label="breadcrumb">
	<ol itemscope itemtype="https://schema.org/BreadcrumbList" class="breadcrumb">
		<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
			<a itemprop="item" class="text-decoration-none" href="{if $lang_link}{$lang_link}{else}/{/if}">
				<span itemprop="name"><i class="fal fa-house me-2"></i>{$lang->home}</span>
			</a>
			<meta itemprop="position" content="{$level++}">
		</li>
		<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
			<a itemprop="item" class="text-decoration-none" href="{$lang_link}projects">
				<span itemprop="name">{$lang->global_projects}</span>
			</a>
			<meta itemprop="position" content="{$level++}">
		</li>
		{foreach from=$category->path item=cat}
			<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
				<a itemprop="item" class="text-decoration-none" href="{$lang_link}projects/{$cat->url}" title="{$cat->name|escape}">
					<span itemprop="name">{$cat->name|escape}</span>
				</a>
				<meta itemprop="position" content="{$level++}">
			</li>
		{/foreach}
		<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active">
			<a itemprop="item" class="text-decoration-none" href="{$lang_link}">
				<span itemprop="name">{$project->name|escape}</span>
			</a>
			<meta itemprop="position" content="{$level++}">
		</li>
	</ol>
</nav>

{* Project *}
<div class="row mb-3">
	<div class="col-md-7 pt-3">
		<div id="projectImages" class="carousel slide" data-bs-ride="false">
			<div class="carousel-inner" role="listbox">
				{if $project->image}
					{foreach $project->images as $i=>$image name=img}
						<div class="carousel-item image {if $smarty.foreach.img.first}active{/if}">
							<a data-fancybox="gallery" href="{if $settings->watermark_enable}{$image->filename|resize:1000:1000:w}{else}{$image->filename|resize:800:800}{/if}">
								<img src="{$image->filename|resize:750:500}" class="rounded" alt="{$project->name|escape}">
								<span class="icon-focus"><i class="fal fa-search-plus"></i></span>
							</a>
						</div>
					{/foreach}
				{else}
					<div class="image">
						<img src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$project->name|escape}">
					</div>
				{/if}
			</div>
		</div>
		{* Gallery Thumblist *}
		{if $project->images|count > 1}
			<div id="project-slider-pagination" class="project-gallery-thumblist">
				{foreach $project->images as $i => $image name=images}
					<div id="image{$image->id}">
						<a id="carousel-selector-{$image->id}" class="project-gallery-thumblist-item d-flex justify-content-center align-items-center {if $smarty.foreach.images.first}selected{/if}" href="#" data-bs-target="#projectImages" data-bs-slide-to="{$smarty.foreach.images.index}">
							<img src="{$image->filename|resize:95:95}" alt="{$project->name|escape}">
						</a>
					</div>
				{/foreach}
			</div>
		{/if}
	</div>
	{* Details *}
	<div class="col-md-5 pt-4 pt-lg-1">
		<div class="project-details ms-auto pb-3">
			<h1 data-project="{$project->id}" class="h3">{$project->name|escape}</h1>
			{if $project->annotation}
				<div class="my-3">{$project->annotation}</div>
			{/if}
			<h3 class="my-3">{$lang->project_details}</h3>
			<ul class="list-unstyled">
				<li><strong>{$lang->date}:</strong> {$project->date|date}</li>
				{if $category}<li><strong>{$lang->category}:</strong> {$category->name|escape}</li>{/if}
				{if $project->site}<li><strong>{$lang->site}:</strong> {$project->site|escape}</li>{/if}
				{if $project->client}<li><strong>{$lang->customer}:</strong> {$project->client|escape}</li>{/if}
			</ul>
		</div>
	</div>
</div>

{* Tabs *}
<ul class="nav nav-tabs" id="myTab" role="tablist">
	<li class="nav-item">
		<a class="nav-link active" id="home-tab" data-bs-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">{$lang->description}</a>
	</li>
	<li class="nav-item">
		<a class="nav-link" id="contact-tab" data-bs-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">{$lang->comments_global} ({$comments|count})</a>
	</li>
</ul>

<div class="tab-content mt-4" id="myTabContent">
	<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
		<div class="block-description">{$project->text}</div>
	</div>
	<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
		{include file='comments/comments_projects.tpl'}
	</div>
</div>

{* Next & Prev *}
{if $prev_project || $next_project}
	<hr class="text-black-50">
	<div class="row">
		<div class="col-lg-6 col-sm-6 col-6 text-start">
			{if $prev_project}
				<a class="text-decoration-none" href="project/{$prev_project->url}">←&nbsp;{$prev_project->name|escape}</a>
			{/if}
		</div>
		<div class="col-lg-6 col-sm-6 col-6 text-end">
			{if $next_project}
				<a class="text-decoration-none" href="project/{$next_project->url}">{$next_project->name|escape}&nbsp;→</a>
			{/if}
		</div>
	</div>
	<hr class="text-black-50">
{/if}

{* Related Projects *}
{if $related_projects}
	<h3 class="my-4">{$lang->related_projects}</h3>
	<div class="row">
		{foreach $related_projects as $related_project}
			<div class="col-md-6 col-lg-4 mb-5">
				<div class="card h-100">
					{if $related_project->image}
						<img class="card-img-top" src="{$related_project->image->filename|resize:750:300}" alt="{$related_project->name|escape}">
					{else}
						<span class="text-center mt-4">
							<img style="width: 210px; height: 210px;" src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$related_project->name|escape}">
						</span>
					{/if}
					<div class="card-body">
						<h5 class="card-title"><a data-project="{$related_project->id}" class="text-decoration-none" href="{$lang_link}project/{$related_project->url}">{$related_project->name|escape}</a></h5>
						<p class="card-text"><small class="text-muted">{$related_project->date|date}</small></p>
					</div>
					<div class="card-footer">
						<a href="{$lang_link}project/{$related_project->url}" class="btn btn-primary btn-sm">{$lang->more_details}<i class="fal fa-arrow-right ms-2"></i></a>
					</div>
				</div>
			</div>
		{/foreach}
	</div>
{/if}