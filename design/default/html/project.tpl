{* Project page *}

{* Canonical page address *}
{$canonical="/project/{$project->url}" scope=global}

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
			<ol itemscope itemtype="https://schema.org/BreadcrumbList" class="breadcrumb  bg-light">
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
					<a itemprop="item" href="{if $lang_link}{$lang_link}{else}/{/if}"><span itemprop="name">{$lang->home}</span></a>
					<meta itemprop="position" content="{$level++}" />
				</li>
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
					<a itemprop="item" href="{$lang_link}projects"><span itemprop="name">{$lang->global_projects}</span></a>
					<meta itemprop="position" content="{$level++}" />
				</li>
				{foreach from=$projects_category->path item=cat}
					<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
						<a itemprop="item" href="{$lang_link}projects/{$cat->url}" title="{$cat->name|escape}"><span itemprop="name">{$cat->name|escape}</span></a>
						<meta itemprop="position" content="{$level++}" />
					</li>
				{/foreach}
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active">
					<a itemprop="item" href="{$lang_link}"><span itemprop="name">{$project->name|escape}</span></a>
					<meta itemprop="position" content="{$level++}" />
				</li>
			</ol>
		</nav>
		<h1 data-project="{$project->id}" class="my-4">{$project->name|escape}</h1>
		<!-- Portfolio Item Row -->
		<div class="row">
			<div class="col-md-8">
				<div id="carouselExampleIndicators" class="carousel slide my-4" data-interval="false" data-ride="carousel">
					<div class="carousel-inner" role="listbox">
						{if $project->image}
							{foreach $project->images as $i=>$image name=foo}
								<div class="carousel-item image {if $smarty.foreach.foo.first}active{/if}">
									<a data-fancybox="gallery" href="{$image->filename|resize:800:800:w}">
										<img src="{$image->filename|resize:750:500}" alt="{$project->name|escape}">
										<span class="icon-focus"><i class="fal fa-search-plus"></i></span>
									</a>
								</div>
							{/foreach}
						{else}
							<div class="image">
								<img src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$project->name|escape}" />
							</div>
						{/if}
					</div>
				</div>
				{if $project->images|count>1}
					<span class="d-sm-none d-md-block d-none">
						<div id="project-slider-pagination" class="row text-center text-lg-left">
							{foreach $project->images as $i=>$image name=images}
								<div id="image{$image->id}" class="col-lg-3 col-md-4 col-xs-6 mb-4">
									<a href="#" id="carousel-selector-{$image->id}" data-target="#carouselExampleIndicators" data-slide-to="{$smarty.foreach.images.index}" class="d-block text-center img-thumbnail {if $smarty.foreach.images.first}selected{/if}">
										<img class="img-fluid thumbnail" src="{$image->filename|resize:95:95}" alt="{$project->name|escape}">
									</a>
								</div>
							{/foreach}
						</div>
					</span>
				{/if}
			</div>
			<div class="col-md-4">
				{if $project->annotation}
					<h3 class="my-3">{$lang->project_annotation}</h3>
					<p>{$project->annotation}</p>
				{/if}
				<h3 class="my-3">{$lang->project_details}</h3>
				<ul>
					<li>{$lang->date}: {$post->date|date}</li>
					{if $category->name}<li>{$lang->category}: {$category->name|escape}</li>{/if}
					{if $project->site}<li>{$lang->site}: {$project->site|escape}</li>{/if}
					{if $project->client}<li>{$lang->customer}: {$project->client|escape}</li>{/if}
				</ul>
			</div>
		</div>
		<!-- /.row -->
		<ul class="nav nav-tabs mt-4" id="myTab" role="tablist">
			<li class="nav-item">
				<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">{$lang->description}</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">{$lang->comments_global} ({$comments|count})</a>
			</li>
		</ul>
		<div class="tab-content mt-4" id="myTabContent">
			<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">{$project->text}</div>
			<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
				{* Comments *}
				{if $settings->comments_tree_projects == "on"}
					{include file='comments_tree_projects.tpl'}
				{else}
					{include file='comments_projects.tpl'}
				{/if}
			</div>
		</div>
		{if $prev_project || $next_project}
			<!-- Neighboring projects /-->
			<hr>
			<div class="row">
				<div class="col-lg-6 col-sm-6 col-6 text-left">
					{if $prev_project}
						<a href="project/{$prev_project->url}">←&nbsp;{$prev_project->name|escape}</a>
					{/if}
				</div>
				<div class="col-lg-6 col-sm-6 col-6 text-right">
					{if $next_project}
						<a href="project/{$next_project->url}">{$next_project->name|escape}&nbsp;→</a>
					{/if}
				</div>
			</div>
			<hr>
		{/if}
		{if $related_projects}
			<!-- Related Projects Row -->
			<h3 class="my-4">{$lang->related_projects}</h3>
			<div class="row">
				{foreach $related_projects as $related_project}
					<div class="col-md-6 col-lg-4 mb-5">
						<div class="card h-100">
							{if $related_project->image}
								<img class="card-img-top" src="{$related_project->image->filename|resize:750:300}" alt="{$related_project->name|escape}">
							{else}
								<span class="text-center mt-4">
									<img style="width: 210px; height: 210px;" src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$related_project->name|escape}" />
								</span>
							{/if}
							<div class="card-body">
								<h5 class="card-title"><a data-project="{$related_project->id}" href="{$lang_link}project/{$related_project->url}">{$related_project->name|escape}</a></h5>
							</div>
						</div>
					</div>
				{/foreach}
			</div>
			<!-- /.row -->
		{/if}
	</div>
</div>