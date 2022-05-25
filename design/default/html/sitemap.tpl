{* Sitemap *}

{$meta_title = $lang->sitemap scope=global}

{* Canonical page address *}
{$canonical="/{$page->url}" scope=global}

<!-- Breadcrumb /-->
{$level = 1}
<nav class="mt-4" aria-label="breadcrumb">
	<ol itemscope itemtype="http://schema.org/BreadcrumbList" class="breadcrumb bg-light">
		<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item">
			<a itemprop="item" href="{$lang_link}"><span itemprop="name">{$lang->home}</span></a>
			<meta itemprop="position" content="{$level++}" />
		</li>
		<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
			<a itemprop="item" href="{$lang_link}{$page->url}"><span itemprop="name">{$page->header|escape}</span></a>
			<meta itemprop="position" content="{$level++}" />
		</li>
	</ol>
</nav>
<!-- Breadcrumbи #End /-->

<!-- Page title -->
<h1 data-page="{$page->id}" class="my-4">{$page->name|escape}</h1>

{$page->body}

<div class="row mb-4">
	<div class="col-lg-4 col-md-4 col-sm-6">
		<h2 class="my-4">{$lang->about_company}</h2>
		<ul>
			{foreach $pages as $p1}
				{if $p1->menu_id == 1}
					{if $p1->visible}
						<li><a href="{$lang_link}{$p1->url}">{$p1->header}</a></li>
					{/if}
				{/if}
			{/foreach}
		</ul>
	</div>
	<div class="col-lg-4 col-md-4 col-sm-6">
		<h2 class="my-4">{$lang->services}</h2>
		<ul>
			{foreach $pages as $p3}
				{if $p3->menu_id == 3}
					{if $p3->visible}
						<li><a href="{$lang_link}{$p3->url}">{$p3->header}</a></li>
					{/if}
				{/if}
			{/foreach}
		</ul>
	</div>
	{if $posts}
		<div class="col-lg-4 col-md-4 col-sm-6">
			<h2 class="my-4">{$lang->index_blog}</h2>
			<ul>
				{foreach $posts as $p}
					<li><a href="{$lang_link}blog/{$p->url}">{$p->name}</a></li>
				{/foreach}
			</ul>
		</div>
	{/if}
</div>
<div class="row mb-5">
	{if $articles}
		<div class="col-lg-4 col-md-4 col-sm-6">
			<h2 class="my-4">{$lang->index_articles}</h2>
			<ul>
				{foreach $articles as $p}
					<li><a href="{$lang_link}article/{$p->url}">{$p->name}</a></li>
				{/foreach}
			</ul>
		</div>
	{/if}
	{if $articles_cats}
		<div class="col-lg-4 col-md-4 col-sm-6">
			<h2 class="my-4">{$lang->index_articles}</h2>
			{function name=cat_art}
				{if $articles}
					<ul>
						{foreach $articles as $p}
							{if $p->visible}
								<li><a href="{$lang_link}article/{$p->url}">{$p->name}</a></li>
							{/if}
						{/foreach}
					</ul>
				{/if}
			{/function}
			{function name=articles_cat_tree}
				{if $articles_cats}
					<ul>
						{foreach $articles_cats as $c}
							{if $c->visible}
								<li>
									<a href="{$lang_link}articles/{$c->url}"><b>{$c->name}</b></a>
									{articles_cat_tree articles_cats=$c->subcategories}
									{cat_art articles=$c->articles}
								</li>
							{/if}
						{/foreach}
					</ul>
				{/if}
			{/function}
			{articles_cat_tree articles_cats=$articles_cats}
		</div>
	{/if}

	{if $projects_cats}
		<div class="col-lg-4 col-md-4 col-sm-6">
			<h2 class="my-4">{$lang->global_projects}</h2>
			{function name=cat_proj}
				{if $projects}
					<ul>
						{foreach $projects as $p}
							{if $p->visible}
								<li><a href="{$lang_link}project/{$p->url}">{$p->name}</a></li>
							{/if}
						{/foreach}
					</ul>
				{/if}
			{/function}
			{function name=projects_cat_tree}
				{if $projects_cats}
					<ul>
						{foreach $projects_cats as $c}
							{if $c->visible}
								<li>
									<a href="{$lang_link}projects/{$c->url}"><b>{$c->name}</b></a>
									{projects_cat_tree projects_cats=$c->subcategories}
									{cat_proj projects=$c->projects}
								</li>
							{/if}
						{/foreach}
					</ul>
				{/if}
			{/function}
			{projects_cat_tree projects_cats=$projects_cats}
		</div>
	{/if}
</div>