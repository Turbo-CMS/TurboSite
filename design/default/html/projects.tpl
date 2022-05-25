{* List of projects *}

{* Canonical page address *}
{if $projects_category}
	{$canonical="/projects/{$projects_category->url}" scope=parent}
{elseif $keyword}
	{$canonical="/projects/?keyword={$keyword|escape}" scope=global}
{else}
	{$canonical="/projects" scope=parent}
{/if}

<div class="row">
	<div class="mobile-offcanvas col-lg-3 bg-white" id="sidebar">
		<div class="offcanvas-header my-4">
			<button class="btn btn-danger btn-close-sidebar float-right"> &times {$lang->close}</button>
			<h5 class="py-2">{$lang->catalog}</h5>
		</div>
		<!-- Search -->
		<form class="input-group my-4" action="{$lang_link}projects">
			<input class="form-control" type="text" name="keyword" autocomplete="off" value="{$keyword|escape}" placeholder="{$lang->search_project}" />
			<div class="input-group-append">
				<button class="btn btn-success" type="submit"><i class="fal fa-search"></i></button>
			</div>
		</form>
		<!-- Search (The End)-->
		<div class="list-group my-4">
			{foreach $projects_categories as $c}
				{if $c->visible}
					<span class="hidden-sm-down list-group-item {if $projects_category->id == $c->id}bg-primary{/if}">
						<a data-projects-category="{$c->id}" href="{$lang_link}projects/{$c->url}">
							{$c->name|escape}
						</a>
						{if $c->subcategories}
							<a data-toggle="collapse" data-parent="#sidebar" href="#menu{$c->id}" {if $projects_category->id == $c->id || in_array($projects_category->id, $c->children)}aria-expanded="true" {/if}>
								<i class="far fa-angle-down"></i>
							</a>
						{/if}
					</span>
					{if $c->subcategories}
						<div class="collapse cat {if in_array($projects_category->id, $c->children)}show{/if}" id="menu{$c->id}">
							{foreach $c->subcategories as $cat}
								{if $c->visible}
									<span class="hidden-sm-down list-group-item {if $projects_category->id == $cat->id}bg-primary{/if}">
										<a data-projects-category="{$cat->id}" href="{$lang_link}projects/{$cat->url}">
											{$cat->name|escape}
										</a>
										{if $cat->subcategories}
											<a data-toggle="collapse" href="#menusub{$cat->id}" {if $projects_category->id == $cat->id || in_array($projects_category->id, $cat->children)}aria-expanded="true" {/if}>
												<i class="far fa-angle-down"></i>
											</a>
										{/if}
									</span>
									{if $cat->subcategories}
										<div class="collapse cat3 {if in_array($projects_category->id, $cat->children)}show{/if}" id="menusub{$cat->id}">
											{foreach $cat->subcategories as $cat3}
												{if $cat3->visible}
													<a data-projects-category="{$cat3->id}" href="{$lang_link}projects/{$cat3->url}" class="list-group-item {if $projects_category->id == $cat3->id}bg-primary text-white{/if}" data-parent="#menusub{$cat->id}">{$cat3->name|escape}</a>
												{/if}
											{/foreach}
										</div>
									{/if}
								{/if}
							{/foreach}
						</div>
					{/if}
				{/if}
			{/foreach}
		</div>
		{* Last comments *}
		{get_comments var=last_comments}
		{if $last_comments}
			<div class="card my-4">
				<h5 class="card-header">{$lang->comments_global}</h5>
				<div class="card-body">
					{get_comments var=last_comments limit=3 type='project'}
					{if $last_comments}
						{foreach $last_comments as $comment}
							<h5 class="card-title">{$comment->name}</h5>
							<p class="card-text"><small class="text-muted">{$comment->date|date} {$lang->at} {$comment->date|time}</small></p>
							<p class="card-text">{$comment->text|strip_tags|truncate:150}</p>
							<p>
								<a href="{$lang_link}project/{$comment->url}#comment_{$comment->id}" class="card-link"><small>{$comment->project}</small></a>
							</p>
							<hr>
						{/foreach}
					{/if}
					{get_comments var=last_comments limit=3 type='article'}
					{if $last_comments}
						{foreach $last_comments as $comment}
							<h5 class="card-title">{$comment->name}</h5>
							<p class="card-text"><small class="text-muted">{$comment->date|date} {$lang->at} {$comment->date|time}</small></p>
							<p class="card-text">{$comment->text|strip_tags|truncate:150}</p>
							<p>
								<a href="{$lang_link}article/{$comment->url}#comment_{$comment->id}" class="card-link"><small>{$comment->article}</small></a>
							</p>
							<hr>
						{/foreach}
					{/if}
					{get_comments var=last_comments limit=3 type='blog'}
					{if $last_comments}
						{foreach $last_comments as $comment}
							<h5 class="card-title">{$comment->name}</h5>
							<p class="card-text"><small class="text-muted">{$comment->date|date} {$lang->at} {$comment->date|time}</small></p>
							<p class="card-text">{$comment->text|strip_tags|truncate:150}</p>
							<p>
								<a href="{$lang_link}blog/{$comment->url}#comment_{$comment->id}" class="card-link"><small>{$comment->post}</small></a>
							</p>
							<hr>
						{/foreach}
					{/if}
					{get_comments var=last_comments limit=3 type='review'}
					{if $last_comments}
						{foreach $last_comments as $comment}
							<h5 class="card-title">{$comment->name}</h5>
							<p class="card-text"><small class="text-muted">{$comment->date|date} {$lang->at} {$comment->date|time}</small></p>
							<p class="card-text">{$comment->text|strip_tags|truncate:150}</p>
							<p>
								<a href="{$lang_link}reviews/{$comment->url}#comment_{$comment->id}" class="card-link"><small>{$lang->reviews_global}</small></a>
							</p>
							<hr>
						{/foreach}
					{/if}
				</div>
			</div>
		{/if}
	</div>
	<div class="col-lg-9 order-lg-2 order-1">
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary d-lg-none mt-4 rounded">
			<a class="navbar-brand" href="#">{$lang->catalog}</a>
			<button class="navbar-toggler" type="button" data-trigger="#sidebar">
				<span class="navbar-toggler-icon"></span>
			</button>
		</nav>
		<!-- Breadcrumbs -->
		{$level = 1}
		<nav class="mt-4" aria-label="breadcrumb">
			<ol itemscope itemtype="https://schema.org/BreadcrumbList" class="breadcrumb bg-light">
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
					<a itemprop="item" href="/"><span itemprop="name">{$lang->home}</span></a>
					<meta itemprop="position" content="{$level++}" />
				</li>
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
					<a itemprop="item" href="/projects"><span itemprop="name">{$lang->global_projects}</span></a>
					<meta itemprop="position" content="{$level++}" />
				</li>
				{if $projects_category}
					{foreach from=$projects_category->path item=cat}
						<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active">
							<a itemprop="item" href="projects/{$cat->url}" title="{$cat->name|escape}"><span itemprop="name">{$cat->name|escape}</span></a>
							<meta itemprop="position" content="{$level++}" />
						</li>
					{/foreach}
				{/if}
			</ol>
		</nav>
		{if $projects}
			<div class="btn-toolbar justify-content-between my-4" role="toolbar" aria-label="Toolbar with button groups">
				{* Page title *}
				{if $keyword}
					<h1>{$lang->search} {$keyword|escape}</h1>
				{elseif $page}
					<h1>{$page->name|escape}</h1>
				{else}
					<h1>{$projects_category->name|escape}</h1>
				{/if}
				<a class="btn btn-light dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					{$lang->sort_by}
				</a>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
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
									<img style="width: 210px; height: 210px;" src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$project->name|escape}" />
								</span>
							{/if}
							<div class="card-body">
								<h5 class="card-title"><a data-project="{$project->id}" href="{$lang_link}project/{$project->url}">{$project->name|escape}</a></h5>
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

			{* Page description (if set) *}
			{$page->body}

			{if $current_page_num==1}
				{* Category description *}
				{$projects_category->description}
			{/if}
		{else}
			<div class="alert alert-warning mt-4" role="alert">
				{$lang->no_projects_found}
			</div>
		{/if}

	</div>
</div>