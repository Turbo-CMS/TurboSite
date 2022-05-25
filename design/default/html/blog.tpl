{* Blog post list *}

{* Canonical page address *}
{if $keyword}
	{$canonical="/blog/?keyword={$keyword|escape}" scope=global}
{else}
	{$canonical="/blog" scope=global}
{/if}

<div class="row">
	<div class="mobile-offcanvas col-lg-3 bg-white" id="sidebar">
		<div class="offcanvas-header my-4">
			<button class="btn btn-danger btn-close-sidebar float-right"> &times {$lang->close}</button>
			<h5 class="py-2">{$lang->catalog}</h5>
		</div>
		<!-- Search-->
		<form class="input-group my-4" action="{$lang_link}blog">
			<input class="form-control" type="text" name="keyword" autocomplete="off" value="{$keyword|escape}" placeholder="{$lang->search_blog}" />
			<div class="input-group-append">
				<button class="btn btn-success" type="submit"><i class="fal fa-search"></i></button>
			</div>
		</form>
		<!-- Search (The End)-->
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
	<div class="col-lg-9 order-lg-2 order-1 mb-4">
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary d-lg-none mt-4 rounded">
			<a class="navbar-brand" href="#">{$lang->catalog}</a>
			<button class="navbar-toggler" type="button" data-trigger="#sidebar">
				<span class="navbar-toggler-icon"></span>
			</button>
		</nav>
		<!-- Breadcrumb /-->
		<nav class="mt-4" aria-label="breadcrumb">
			<ol itemscope itemtype="http://schema.org/BreadcrumbList" class="breadcrumb bg-light">
				<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item">
					<a itemprop="item" href="{if $lang_link}{$lang_link}{else}/{/if}"><span itemprop="name" title="{$lang->home}">{$lang->home}</span></a>
					<meta itemprop="position" content="1">
				</li>
				<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
					<a itemprop="item" href="{$lang_link}blog"><span itemprop="name">{$lang->index_blog}</span></a>
					<meta itemprop="position" content="2">
				</li>
			</ol>
		</nav>
		<!-- Breadcrumb #End /-->

		{if $posts}
			<div class="btn-toolbar justify-content-between my-4" role="toolbar" aria-label="Toolbar with button groups">
				{if $keyword}
					<h1>#{$keyword|escape}</h1>
				{else}
					<h1>{$page->name|escape}</h1>
				{/if}
				<a class="btn btn-light dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					{$lang->sort_by}
				</a>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
					<a class="dropdown-item {if $sort=='date'}active{/if}" href="{url sort=date page=null}">{$lang->sort_date}</a>
					<a class="dropdown-item {if $sort=='rate'}active{/if}" href="{url sort=rate page=null}">{$lang->by_rating}</a>
				</div>
			</div>
			{foreach $posts as $post}
				<!-- Blog Post -->
				<div itemscope itemtype="http://schema.org/Blog" class="card mb-4 my-4">
					<article itemprop="blogPosts" itemscope itemtype="http://schema.org/BlogPosting">
						<div itemprop="publisher" itemscope itemtype="https://schema.org/Organization">
							<meta itemprop="name" content="{$settings->site_name|escape}">
							<span itemprop="logo" itemscope itemtype="https://schema.org/ImageObject">
								<meta itemprop="image url" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png" />
								<meta property="url" content="{$config->root_url}/" />
							</span>
						</div>
						<meta itemprop="dateModified" content="{$post->date}">
						<meta itemprop="author" content="{$settings->site_name|escape}">
						<meta itemscope itemprop="mainEntityOfPage" itemType="https://schema.org/WebPage" itemid="/blog/{$post->url}" />
						<link itemprop="url" href="/blog/{$post->url}" />
						<div class="card-body">
							<a href="{$lang_link}blog/{$post->url}">
								<h2 itemprop="name headline" data-post="{$post->id}" class="card-title">{$post->name|escape}</h2>
							</a>
							<p class="card-text"><small itemprop="datePublished" content="{$post->date}" class="text-muted"><i class="far fa-calendar"></i> {$post->date|date}</small></p>
							{if $post->image}<img itemprop="image" class="card-img-top" src="{$post->image|resize_posts:750:750}" alt="{$post->name|escape}">{/if}
							<p itemprop="description" class="card-text">{$post->annotation}</p>
							<div class="btn-group" role="group" aria-label="First group">
								<a class="btn text-muted" href="{$lang_link}blog/{$post->url}"><i class="far fa-comment"></i><span class="badge card-link">{$post->comments}</span></a>
								<a class="btn text-muted" href="{$lang_link}blog/{$post->url}"><i class="far fa-eye"></i><span class="badge card-link">{$post->views}</span></a>
							</div>
							<span class="float-right btn-group vote">
								<a class="btn vote__button--plus" href="ajax/blog.rate.php?id={$post->id}&rate=up"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
								{if $post->rate>0}
									<span class="btn vote__value pos">{$post->rate}</span>
								{elseif $post->rate == 0}
									<span class="btn text-muted vote__value">{$post->rate}</span>
								{else}
									<span class="btn vote__value neg">{$post->rate}</span>
								{/if}
								<a class="btn vote__button--minus" href="ajax/blog.rate.php?id={$post->id}&rate=down"><i class="fa fa-chevron-down" aria-hidden="true"></i></a>
							</span>
						</div>
					</article>
				</div>
			{/foreach}
			<!-- Pagination -->
			{include file='pagination.tpl'}
		{else}
			<p>
				{$lang->no_post_found}
			</p>
		{/if}
	</div>
</div>