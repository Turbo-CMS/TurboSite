<div class="container mt-3">
	{* Blog *}
	{get_posts var=last_posts limit=3}
	{if isset($last_posts)}
		<div class="section-heading">
			<a href="{$lang_link}blog" class="btn btn-outline-primary float-end">{$lang->see_all}<i class="fal fa-chevron-right ms-2"></i></a>
			<h2 class="section-title my-2">{$lang->global_blog}</h2>
		</div>
		<hr class="text-black-50">
		<div class="row">
			{foreach $last_posts as $post}
				<div class="col-md-6 col-lg-4 mb-3">
					<div class="card h-100">
						{if $post->image}
							<img class="card-img-top" src="{$post->image|resize_posts:750:300}" alt="{$post->name|escape}">
						{else}
							<span class="text-center mt-4">
								<img style="width: 210px; height: 210px;" src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$article->name|escape}">
							</span>
						{/if}
						<div class="card-body">
							<h5 class="card-title"><a data-post="{$post->id}" class="text-decoration-none" href="{$lang_link}blog/{$post->url}">{$post->name|escape}</a></h5>
							<div class="my-1"><small class="text-muted">{$post->date|date}</small></div>
							<div class="my-1">{$post->annotation|strip_tags|truncate:150}</div>
						</div>
						<div class="card-footer">
							<a href="{$lang_link}blog/{$post->url}" class="btn btn-primary btn-sm">{$lang->more_details}<i class="fal fa-arrow-right ms-2"></i></a>
						</div>
					</div>
				</div>
			{/foreach}
		</div>
	{/if}

	{* Articles *}
	{get_articles var=last_articles limit=3}
	{if isset($last_articles)}
		<div class="section-heading">
			<a href="{$lang_link}articles" class="btn btn-outline-primary float-end">{$lang->see_all}<i class="fal fa-chevron-right ms-2"></i></a>
			<h2 class="section-title my-2">{$lang->global_articles}</h2>
		</div>
		<hr class="text-black-50">
		<div class="row">
			{foreach $last_articles as $article}
				<div class="col-md-6 col-lg-4 mb-3">
					<div class="card h-100">
						{if $article->image}
							<img class="card-img-top" src="{$article->image|resize_articles:750:300}" alt="{$article->name|escape}">
						{else}
							<span class="text-center mt-4">
								<img style="width: 210px; height: 210px;" src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$article->name|escape}">
							</span>
						{/if}
						<div class="card-body">
							<h5 class="card-title"><a data-article="{$article->id}" class="text-decoration-none" href="{$lang_link}article/{$article->url}">{$article->name|escape}</a></h5>
							<div class="small text-muted">
								<i class="fal fa-calendar me-1"></i>
								<span itemprop="datePublished" class="text-muted me-1" content="{$article->date}">{$article->date|date}</span>
								{if $article->author}
									<i class="fal fa-user-edit me-1"></i>
									<a class="mr-2 text-decoration-none me-1" href="{$lang_link}articles/?author={$article->author|escape}">
										{$article->author|escape}
									</a>
								{/if}
								{if $article->category->name}
									<i class="fal fa-edit me-1"></i>
									<a href="{$lang_link}articles/{$article->category->url}" class="text-decoration-none">
										{$article->category->name}
									</a>
								{/if}
							</div>
							<div class="my-1">{$article->annotation|strip_tags|truncate:150}</div>
						</div>
						<div class="card-footer">
							<a href="{$lang_link}article/{$article->url}" class="btn btn-primary btn-sm">{$lang->more_details}<i class="fal fa-arrow-right ms-2"></i></a>
						</div>
					</div>
				</div>
			{/foreach}
		</div>
	{/if}
</div>