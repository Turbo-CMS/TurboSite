{* Single article post page *}

{* Canonical page address *}
{$canonical="/article/{$post->url}" scope=global}

<div class="row">
	<div class="mobile-offcanvas col-lg-3 bg-white" id="sidebar">
		<div class="offcanvas-header my-4">
			<button class="btn btn-danger btn-close-sidebar float-right"> &times {$lang->close}</button>
			<h5 class="py-2">{$lang->catalog}</h5>
		</div>
		<!-- Search -->
		<form class="input-group my-4" action="{$lang_link}articles">
			<input class="form-control" type="text" name="keyword" autocomplete="off" value="{$keyword|escape}" placeholder="{$lang->search_article}" />
			<div class="input-group-append">
				<button class="btn btn-success" type="submit"><i class="fal fa-search"></i></button>
			</div>
		</form>
		<!-- Search (The End)-->
		<div class="list-group my-4">
			{foreach $articles_categories as $c}
				{if $c->visible}
					<span class="hidden-sm-down list-group-item {if $articles_category->id == $c->id}bg-primary{/if}">
						<a data-articles-category="{$c->id}" href="{$lang_link}articles/{$c->url}">
							{$c->name|escape}
						</a>
						{if $c->subcategories}
							<a data-toggle="collapse" data-parent="#sidebar" href="#menu{$c->id}" {if $articles_category->id == $c->id || in_array($articles_category->id, $c->children)}aria-expanded="true" {/if}>
								<i class="far fa-angle-down"></i>
							</a>
						{/if}
					</span>
					{if $c->subcategories}
						<div class="collapse cat {if in_array($articles_category->id, $c->children)}show{/if}" id="menu{$c->id}">
							{foreach $c->subcategories as $cat}
								{if $c->visible}
									<span class="hidden-sm-down list-group-item {if $articles_category->id == $cat->id}bg-primary{/if}">
										<a data-articles-category="{$cat->id}" href="{$lang_link}articles/{$cat->url}">
											{$cat->name|escape}
										</a>
										{if $cat->subcategories}
											<a data-toggle="collapse" aria-expanded="false" href="#menusub{$cat->id}" {if $articles_category->id == $cat->id || in_array($articles_category->id, $cat->children)}aria-expanded="true" {/if}>
												<i class="far fa-angle-down"></i>
											</a>
										{/if}
									</span>
									{if $cat->subcategories}
										<div class="collapse cat3 {if in_array($articles_category->id, $cat->children)}show{/if}" id="menusub{$cat->id}">
											{foreach $cat->subcategories as $cat3}
												{if $cat3->visible}
													<a data-articles-category="{$cat3->id}" href="{$lang_link}articles/{$cat3->url}" class="list-group-item {if $articles_category->id == $cat3->id}bg-primary text-white{/if}" data-parent="#menusub{$cat->id}">{$cat3->name|escape}</a>
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
	<div class="col-lg-9 order-lg-2 order-1 mb-4">
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary d-lg-none mt-4 rounded">
			<a class="navbar-brand" href="#">{$lang->catalog}</a>
			<button class="navbar-toggler" type="button" data-trigger="#sidebar">
				<span class="navbar-toggler-icon"></span>
			</button>
		</nav>
		<!-- Breadcrumb /-->
		{$level = 1}
		<nav class="mt-4" aria-label="breadcrumb">
			<ol itemscope itemtype="https://schema.org/BreadcrumbList" class="breadcrumb bg-light">
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
					<a itemprop="item" href="{if $lang_link}{$lang_link}{else}/{/if}"><span itemprop="name" title="{$lang->home}">{$lang->home}</span></a>
					<meta itemprop="position" content="{$level++}" />
				</li>
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
					<a itemprop="item" href="{$lang_link}articles"><span itemprop="name">{$lang->index_articles}</span></a>
					<meta itemprop="position" content="{$level++}" />
				</li>
				{foreach from=$articles_category->path item=cat}
					<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
						<a itemprop="item" href="{$lang_link}articles/{$cat->url}"><span itemprop="name">{$cat->name|escape}</span></a>
						<meta itemprop="position" content="{$level++}" />
					</li>
				{/foreach}
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active">
					<a itemprop="item" href="{$lang_link}article/{$post->url}"><span itemprop="name">{$post->name|escape}</span></a>
					<meta itemprop="position" content="{$level++}" />
				</li>
			</ol>
		</nav>
		<!-- Breadcrumb #End /-->

		<div itemscope itemtype="http://schema.org/Article">

			<div itemprop="publisher" itemscope itemtype="https://schema.org/Organization">
				<meta itemprop="name" content="{$settings->site_name|escape}">
				<span itemprop="logo" itemscope itemtype="https://schema.org/ImageObject">
					<meta itemprop="image url" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png" />
					<meta property="url" content="{$config->root_url}/" />
				</span>
			</div>
			<meta itemprop="dateModified" content="{$post->date}">
			<meta itemprop="author" content="{$post->author|escape}">
			<meta itemscope itemprop="mainEntityOfPage" itemType="https://schema.org/WebPage" itemid="{$lang_link}article/{$post->url}" />
			<link itemprop="url" href="{$lang_link}article/{$post->url}" />

			<!-- Page title -->
			<h1 itemprop="headline name" data-article="{$post->id}" class="mt-4">{$post->name|escape}</h1>
			<hr>
			<!-- Date/Time -->
			<p>
				{if $post->author}<a href="{$lang_link}articles/?keyword={$post->author|escape}" class="btn text-muted"><i class="far fa-user"></i><span class="badge card-link">{$post->author|escape}</span></a>{/if}
				<span class="btn text-muted"><i class="far fa-calendar"></i><span itemprop="datePublished" content="{$post->date}" class="badge card-link">{$post->date|date}</span></span>
				<span class="btn text-muted"><i class="far fa-eye"></i><span class="badge card-link">{$post->views}</span></span>
				<span class="btn text-muted"><i class="far fa-comment"></i><span class="badge card-link">{$comments|count}</span></span>
			</p>
			<hr>
			{if $post->image}
				<!-- Preview Image -->
				<div class="card mb-4">
					<img itemprop="image" class="img-fluid rounded" src="{$post->image|resize_articles:700:700}" alt="{$post->name|escape}">
				</div>
				<hr>
				<!-- Post Content -->
			{/if}
			<article class="block__description content entry-content" itemprop="articleBody">
				{if $post->text|stristr:"h2" || $post->text|stristr:"h3" || $post->text|stristr:"h4"}
					<div class="table-of-contents open">
						<div class="table-of-contents__header"><span class="js-table-of-contents-hide table-of-contents__hide">{$lang->table_of_contents} <i class="icon-action fa fa-chevron-down"></i></span></div>
						<ol data-toc=".content" data-toc-headings="h2,h3,h4" class="table-of-contents__list js-table-of-contents-list"></ol>
					</div>
				{/if}
				{$post->text}
			</article>
		</div>
		<div class="tags">
			{foreach $tags as $tag}
				<a class="mr-2 btn btn-outline-primary" href="{$lang_link}articles/?keyword={$tag}">#{$tag}</a>
			{/foreach}
		</div>
		<span class="btn-group vote my-4">
			<a class="btn vote__button--plus" href="ajax/articles.rate.php?id={$post->id}&rate=up"><i class="fa fa-chevron-up" aria-hidden="true"></i></a>
			{if $post->rate>0}
				<span class="btn vote__value pos">{$post->rate}</span>
			{elseif $post->rate == 0}
				<span class="btn text-muted vote__value">{$post->rate}</span>
			{else}
				<span class="btn vote__value neg">{$post->rate}</span>
			{/if}
			<a class="btn vote__button--minus" href="ajax/articles.rate.php?id={$post->id}&rate=down"><i class="fa fa-chevron-down" aria-hidden="true"></i></a>
		</span>
		{if $prev_post || $next_post}
			<hr>
			<div class="row">
				<div class="col-lg-6 col-sm-6 col-6 text-left">
					{if $prev_post}
						<a href="{$lang_link}article/{$prev_post->url}">←&nbsp;{$prev_post->name}</a>
					{/if}
				</div>
				<div class="col-lg-6 col-sm-6 col-6 text-right">
					{if $next_post}
						<a href="{$lang_link}article/{$next_post->url}">{$next_post->name}&nbsp;→</a>
					{/if}
				</div>
			</div>
			<hr>
		{/if}

		{* Comments *}
		{if $settings->comments_tree_articles == "on"}
			{include file='comments_tree_aticles.tpl'}
		{else}
			{include file='comments_aticles.tpl'}
		{/if}
	</div>
</div>