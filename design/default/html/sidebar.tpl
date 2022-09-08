<div class="mobile-offcanvas col-lg-3 bg-body" id="sidebar">
	<div class="offcanvas-header my-4">
		<button type="button" class="btn-close float-end" aria-label="Close"></button>
		<h5>{$lang->catalog}</h5>
	</div>
	{if $module=='ArticlesView'}
		<!-- Search -->
		<form class="input-group my-4" action="{$lang_link}articles">
			<input class="form-control" type="text" name="keyword" autocomplete="off" value="{$keyword|escape}" placeholder="{$lang->search_article}">
			<button class="btn btn-success" type="submit"><i class="fal fa-search"></i></button>
		</form>
		<!-- Search (The End)-->
		<div class="list-group my-4">
			{foreach $articles_categories as $c}
				{if $c->visible}
					<span class="hidden-sm-down list-group-item {if $category->id == $c->id}bg-primary{/if}">
						<a data-articles-category="{$c->id}" class="text-decoration-none" href="{$lang_link}articles/{$c->url}">
							{$c->name|escape}
						</a>
						{if $c->subcategories}
							<a data-bs-toggle="collapse" data-parent="#sidebar" class="text-decoration-none" href="#menu{$c->id}" {if in_array($category->id, $c->children)}aria-expanded="true"{/if}>
								<i class="far fa-angle-down"></i>
							</a>
						{/if}
					</span>
					{if $c->subcategories}
						<div class="collapse cat {if in_array($category->id, $c->children)}show{/if}" id="menu{$c->id}">
							{foreach $c->subcategories as $cat}
								{if $c->visible}
									<span class="hidden-sm-down list-group-item {if $category->id == $cat->id}bg-primary{/if}">
										<a data-articles-category="{$cat->id}" class="text-decoration-none" href="{$lang_link}articles/{$cat->url}">
											{$cat->name|escape}
										</a>
										{if $cat->subcategories}
											<a data-bs-toggle="collapse" aria-expanded="false" class="text-decoration-none" href="#menusub{$cat->id}" {if in_array($category->id, $cat->children)}aria-expanded="true"{/if}>
												<i class="far fa-angle-down"></i>
											</a>
										{/if}
									</span>
									{if $cat->subcategories}
										<div class="collapse cat3 {if in_array($category->id, $cat->children)}show{/if}" id="menusub{$cat->id}">
											{foreach $cat->subcategories as $cat3}
												{if $cat3->visible}
													<a data-articles-category="{$cat3->id}" href="{$lang_link}articles/{$cat3->url}" class="list-group-item text-decoration-none {if $category->id == $cat3->id}bg-primary text-white{/if}" data-parent="#menusub{$cat->id}">{$cat3->name|escape}</a>
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
	{elseif $module=='BlogView'}
		<!-- Search-->
		<form class="input-group my-4" action="{$lang_link}blog">
			<input class="form-control" type="text" name="keyword" autocomplete="off" value="{$keyword|escape}" placeholder="{$lang->search_blog}">
			<button class="btn btn-success" type="submit"><i class="fal fa-search"></i></button>
		</form>
		<!-- Search (The End)-->
	{else}
		{if $module!=='SearchView'}
			<!-- Search -->
			<form class="input-group my-4" action="{$lang_link}projects">
				<input class="input_search form-control" type="text" name="keyword" value="{$keyword|escape}" placeholder="{$lang->search}...">
				<button class="btn btn-success" type="submit"><i class="fal fa-search"></i></button>
			</form>
			<!-- Search (The End)-->
		{/if}
		{if $module=='ProjectsView'}
			<div class="list-group mt-4">
				{foreach $projects_categories as $c}
						{if $c->visible}
						<span class="hidden-sm-down list-group-item {if $category->id == $c->id}bg-primary{/if}">
							<a data-projects-category="{$c->id}" class="text-decoration-none" href="{$lang_link}projects/{$c->url}">
								{$c->name|escape}
							</a>
							{if $c->subcategories}
								<a data-bs-toggle="collapse" data-parent="#sidebar" class="text-decoration-none" href="#menu{$c->id}" {if $category->id == $c->id || in_array($category->id, $c->children)}aria-expanded="true"{/if}>
									<i class="far fa-angle-down"></i>
								</a>
							{/if}
						</span>
						{if $c->subcategories}
							<div class="collapse cat {if in_array($category->id, $c->children)}show{/if}" id="menu{$c->id}">
								{foreach $c->subcategories as $cat}
									{if $c->visible}
										<span class="hidden-sm-down list-group-item {if $category->id == $cat->id}bg-primary{/if}">
											<a data-projects-category="{$cat->id}" class="text-decoration-none" href="{$lang_link}projects/{$cat->url}">
												{$cat->name|escape}
											</a>
											{if $cat->subcategories}
												<a data-bs-toggle="collapse" class="text-decoration-none" href="#menusub{$cat->id}" {if $category->id == $cat->id || in_array($category->id, $cat->children)}aria-expanded="true"{/if}>
													<i class="far fa-angle-down"></i>
												</a>
											{/if}
										</span>
										{if $cat->subcategories}
											<div class="collapse cat3 {if in_array($category->id, $cat->children)}show{/if}" id="menusub{$cat->id}">
												{foreach $cat->subcategories as $cat3}
													{if $cat3->visible}
														<a data-projects-category="{$cat3->id}" class="text-decoration-none" href="{$lang_link}projects/{$cat3->url}" class="list-group-item {if $category->id == $cat3->id}bg-primary text-white{/if}" data-parent="#menusub{$cat->id}">{$cat3->name|escape}</a>
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
		{/if}
	{/if}
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
							<a href="{$lang_link}project/{$comment->url}#comment_{$comment->id}" class="text-decoration-none"><small>{$comment->project}</small></a>
						</p>
						<hr class="text-black-50">
					{/foreach}
				{/if}
				{get_comments var=last_comments limit=3 type='article'}
				{if $last_comments}
					{foreach $last_comments as $comment}
						<h5 class="card-title">{$comment->name}</h5>
						<p class="card-text"><small class="text-muted">{$comment->date|date} {$lang->at} {$comment->date|time}</small></p>
						<p class="card-text">{$comment->text|strip_tags|truncate:150}</p>
						<p>
							<a href="{$lang_link}article/{$comment->url}#comment_{$comment->id}" class="text-decoration-none"><small>{$comment->article}</small></a>
						</p>
						<hr class="text-black-50">
					{/foreach}
				{/if}
				{get_comments var=last_comments limit=3 type='blog'}
				{if $last_comments}
					{foreach $last_comments as $comment}
						<h5 class="card-title">{$comment->name}</h5>
						<p class="card-text"><small class="text-muted">{$comment->date|date} {$lang->at} {$comment->date|time}</small></p>
						<p class="card-text">{$comment->text|strip_tags|truncate:150}</p>
						<p>
							<a href="{$lang_link}blog/{$comment->url}#comment_{$comment->id}" class="text-decoration-none"><small>{$comment->post}</small></a>
						</p>
						<hr class="text-black-50">
					{/foreach}
				{/if}
				{get_comments var=last_comments limit=3 type='review'}
				{if $last_comments}
					{foreach $last_comments as $comment}
						<h5 class="card-title">{$comment->name}</h5>
						<p class="card-text"><small class="text-muted">{$comment->date|date} {$lang->at} {$comment->date|time}</small></p>
						<p class="card-text">{$comment->text|strip_tags|truncate:150}</p>
						<p>
							<a href="{$lang_link}reviews/{$comment->url}#comment_{$comment->id}" class="text-decoration-none"><small>{$lang->reviews_global}</small></a>
						</p>
						<hr class="text-black-50">
					{/foreach}
				{/if}
			</div>
		</div>
	{/if}
</div>