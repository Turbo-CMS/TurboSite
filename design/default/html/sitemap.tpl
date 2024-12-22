{* Sitemap *}

{if $page}
	{* Canonical *}
	{$canonical="/{$page->url}" scope=global}
{else}
	{* Meta Title *}
	{$meta_title = $lang->sitemap scope=global}

	{* Canonical *}
	{$canonical="/sitemap" scope=global}
{/if}

{* Page Title *}
{if $page && $page->name}
	<h1 class="my-4">
		<span data-page="{$page->id}">{$page->name|escape}</span>
	</h1>
{else}
	<h1 class="my-4">{$lang->sitemap|escape}</h1>
{/if}

{* Page Body *}
{if $page && $page->body}
	{$page->body}
{/if}

<div class="row">
	{* Pages *}
	<div class="col-sm-6 col-md-4 col-lg-4 mb-4">
		<h2 class="my-4">{$settings->site_name|escape}</h2>
		<ul>
			{foreach $pages as $p1}
				{if $p1->menu_id == 1}
					{if $p1->visible}
						<li>
							<a class="text-decoration-none" href="{$lang_link}{$p1->url}">
								{$p1->header|escape}
							</a>
						</li>
					{/if}
				{/if}
			{/foreach}
		</ul>
	</div>
	<div class="col-sm-6 col-md-4 col-lg-4 mb-4">
		<h2 class="my-4">{$lang->information|escape}</h2>
		<ul>
			{foreach $pages as $p3}
				{if $p3->menu_id == 3}
					{if $p3->visible}
						<li>
							<a class="text-decoration-none" href="{$lang_link}{$p3->url}">
								{$p3->header|escape}
							</a>
						</li>
					{/if}
				{/if}
			{/foreach}
		</ul>
	</div>
	<div class="col-sm-6 col-md-4 col-lg-4 mb-4">
		<h2 class="my-4">{$lang->help|escape}</h2>
		<ul>
			{foreach $pages as $p4}
				{if $p4->menu_id == 4}
					{if $p4->visible}
						<li>
							<a class="text-decoration-none" href="{$lang_link}{$p4->url}">
								{$p4->header|escape}
							</a>
						</li>
					{/if}
				{/if}
			{/foreach}
		</ul>
	</div>
	{* Blog *}
	{if $posts}
		<div class="col-sm-6 col-md-4 col-lg-4 mb-4">
			<h2 class="my-4">{$lang->global_blog|escape}</h2>
			<ul>
				{foreach $posts as $p}
					<li>
						<a class="text-decoration-none" href="{$lang_link}blog/{$p->url}">
							{$p->name|escape}
						</a>
					</li>
				{/foreach}
			</ul>
		</div>
	{/if}
	{* Articles *}
	{if $articles_cats}
		<div class="col-sm-6 col-md-4 col-lg-4 mb-4">
			<h2 class="my-4">{$lang->global_articles|escape}</h2>
			{function name=cat_art}
				{if $articles}
					<ul>
						{foreach $articles as $a}
							{if $a->visible}
								<li>
									<a class="text-decoration-none" href="{$lang_link}article/{$a->url}">
										{$a->name|escape}
									</a>
								</li>
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
									<a class="text-decoration-none" href="{$lang_link}articles/{$c->url}">
										<strong>{$c->name|escape}</strong>
									</a>
									{if $c->subcategories}
										{articles_cat_tree articles_cats=$c->subcategories}
									{/if}
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
	{* Projects *}
	{if $projects_cats}
		<div class="col-sm-6 col-md-4 col-lg-4 mb-4">
			<h2 class="my-4">{$lang->global_projects|escape}</h2>
			{function name=cat_proj}
				{if $proj}
					<ul>
						{foreach $proj as $p}
							{if $p->visible}
								<li>
									<a class="text-decoration-none" href="{$lang_link}project/{$p->url}">
										{$p->name|escape}
									</a>
								</li>
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
									<a class="text-decoration-none" href="{$lang_link}projects/{$c->url}">
										<strong>{$c->name|escape}</strong>
									</a>
									{if $c->subcategories}
										{projects_cat_tree projects_cats=$c->subcategories}
									{/if}
									{cat_proj proj=$c->projects}
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