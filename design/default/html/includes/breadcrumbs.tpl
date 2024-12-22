{* Breadcrumbs *}

{$level = 1}
{if $module != 'MainView'}
	<nav class="mt-4" aria-label="breadcrumb">
		<ol itemscope itemtype="http://schema.org/BreadcrumbList" class="breadcrumb">
			<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item">
				<a itemprop="item" class="text-decoration-none" href="{if $lang_link}{$lang_link}{else}/{/if}">
					<span itemprop="name" title="{$lang->home|escape}">
						<i class="fal fa-house me-2"></i>
						{$lang->home|escape}
					</span>
				</a>
				<meta itemprop="position" content="{$level++}">
			</li>

			{if $module == 'PageView'}
				<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
					<link href="{$lang_link}{$page->url}" itemprop="item">
					<span itemprop="name">{$page->header|escape}</span>
					<meta itemprop="position" content="{$level++}">
				</li>
			{elseif $module == 'ArticlesView'}
				{if $articles_category || $keyword || $author}
					<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
						<a itemprop="item" class="text-decoration-none" href="{$lang_link}articles">
							<span itemprop="name">{$lang->global_articles|escape}</span>
						</a>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}articles" itemprop="item">
						<span itemprop="name">{$lang->global_articles|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
				{if $post}
					{if $articles_category}
						{foreach $articles_category->path as $cat}
							<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
								<a itemprop="item" class="text-decoration-none" href="{$lang_link}articles/{$cat->url}">
									<span itemprop="name">{$cat->name|escape}</span>
								</a>
								<meta itemprop="position" content="{$level++}">
							</li>
						{/foreach}
					{/if}
					<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}article/{$post->url}" itemprop="item">
						<span itemprop="name">{$post->name|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					{if $articles_category}
						{foreach $articles_category->path as $cat}
							{if !$cat@last || $keyword}
								<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
									<a itemprop="item" class="text-decoration-none" href="{$lang_link}articles/{$cat->url}">
										<span itemprop="name">{$cat->name|escape}</span>
									</a>
									<meta itemprop="position" content="{$level++}">
								</li>
							{else}
								<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
									<link href="{$lang_link}articles/{$cat->url}" itemprop="item">
									<span itemprop="name">{$cat->name|escape}</span>
									<meta itemprop="position" content="{$level++}">
								</li>
							{/if}
						{/foreach}
					{elseif $keyword}
						<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
							<link href="{$lang_link}articles?keyword={$keyword|escape}" itemprop="item">
							<span itemprop="name">{$lang->search|escape}</span>
							<meta itemprop="position" content="{$level++}">
						</li>
					{elseif $author}
						<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
							<link href="{$lang_link}articles?author={$author|escape}" itemprop="item">
							<span itemprop="name">{$lang->author|escape}</span>
							<meta itemprop="position" content="{$level++}">
						</li>
					{/if}
				{/if}
			{elseif $module == 'ProjectsView'}
				{if $projects_category || $keyword || $project}
					<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
						<a itemprop="item" class="text-decoration-none" href="{$lang_link}projects">
							<span itemprop="name">{$lang->global_projects|escape}</span>
						</a>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}projects" itemprop="item">
						<span itemprop="name">{$lang->global_projects|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
				{if $project}
					{if $projects_category}
						{foreach $projects_category->path as $cat}
							<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
								<a itemprop="item" class="text-decoration-none" href="{$lang_link}projects/{$cat->url}">
									<span itemprop="name">{$cat->name|escape}</span>
								</a>
								<meta itemprop="position" content="{$level++}">
							</li>
						{/foreach}
					{/if}
					<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}project/{$project->url}" itemprop="item">
						<span itemprop="name">{$project->name|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					{if $projects_category}
						{foreach $projects_category->path as $cat}
							{if !$cat@last || $keyword}
								<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item">
									<a itemprop="item" class="text-decoration-none" href="{$lang_link}projects/{$cat->url}">
										<span itemprop="name">{$cat->name|escape}</span>
									</a>
									<meta itemprop="position" content="{$level++}">
								</li>
							{else}
								<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
									<link href="{$lang_link}projects/{$cat->url}" itemprop="item">
									<span itemprop="name">{$cat->name|escape}</span>
									<meta itemprop="position" content="{$level++}">
								</li>
							{/if}
						{/foreach}
					{elseif $keyword}
						<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
							<link href="{$lang_link}projects?keyword={$keyword|escape}" itemprop="item">
							<span itemprop="name">{$lang->search|escape}</span>
							<meta itemprop="position" content="{$level++}">
						</li>
					{/if}
				{/if}	
			{elseif $module == 'BlogView'}
				{if $keyword || $post}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<a itemprop="item" class="text-decoration-none" href="{$lang_link}blog">
							<span itemprop="name">{$lang->global_blog|escape}</span>
						</a>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}blog" itemprop="item">
						<span itemprop="name">{$lang->global_blog|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
				{if $post}
					<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}blog/{$post->url}" itemprop="item">
						<span itemprop="name">{$post->name|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					{if $keyword}
						<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
							<link href="{$lang_link}blog?keyword={$keyword|escape}" itemprop="item">
							<span itemprop="name">{$lang->search|escape}</span>
							<meta itemprop="position" content="{$level++}">
						</li>
					{/if}
				{/if}
			{elseif $module == 'FAQView'}
				{if $page}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}{$page->url}" itemprop="item">
						<span itemprop="name">{$page->header|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}faq" itemprop="item">
						<span itemprop="name">{$lang->faq_name|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
			{elseif $module == 'FeedbackView'}
				{if $page}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}{$page->url}" itemprop="item">
						<span itemprop="name">{$page->header|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}contact" itemprop="item">
						<span itemprop="name">{$lang->contacts|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
			{elseif $module == 'SearchView'}
				{if $page}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}{$page->url}" itemprop="item">
						<span itemprop="name">{$page->header|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}search" itemprop="item">
						<span itemprop="name">{$lang->search|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
			{elseif $module == 'SitemapView'}
				{if $page}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}{$page->url}" itemprop="item">
						<span itemprop="name">{$page->header|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}sitemap" itemprop="item">
						<span itemprop="name">{$lang->sitemap|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
			{elseif $module == 'ReviewsView'}
				{if $page}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}{$page->url}" itemprop="item">
						<span itemprop="name">{$page->header|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}reviews" itemprop="item">
						<span itemprop="name">{$lang->global_reviews|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
			{elseif $module == 'LoginView' && isset($smarty.get.action) && $smarty.get.action == 'password_remind'}
				{if $page}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}{$page->url}" itemprop="item">
						<span itemprop="name">{$page->header|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}user/password_remind" itemprop="item">
						<span itemprop="name">{$lang->password_reminder|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
			{elseif $module == 'LoginView'}
				{if $page}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}{$page->url}" itemprop="item">
						<span itemprop="name">{$page->header|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}user/login" itemprop="item">
						<span itemprop="name">{$lang->login|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
			{elseif $module == 'RegisterView'}
				{if $page}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}{$page->url}" itemprop="item">
						<span itemprop="name">{$page->header|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{else}
					<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
						<link href="{$lang_link}user/register" itemprop="item">
						<span itemprop="name">{$lang->registration|escape}</span>
						<meta itemprop="position" content="{$level++}">
					</li>
				{/if}
			{elseif $module == 'UserView'}
				<li itemprop="itemListElement" itemscope itemtype="https://schema.org/ListItem" class="breadcrumb-item active" aria-current="page">
					<link href="{$lang_link}user" itemprop="item">
					<span itemprop="name">{$user->name|escape}</span>
					<meta itemprop="position" content="{$level++}">
				</li>
			{/if}
		</ol>
	</nav>
{/if}