{* Projects *}

{* Canonical *}
{if $category}
	{$canonical="/projects/{$category->url}" scope=global}
{elseif $keyword}
	{$canonical="/projects/?keyword={$keyword|escape}" scope=global}
{else}
	{$canonical="/projects" scope=global}
{/if}

<!--title_content-->
<div class="page-top-info">
	<div class="page-top-wrapper page-top-wrapper--white">
		<section class="page-top maxwidth-theme">
			<div class="cowl">
				{$level = 1}
				<div id="navigation">
					<div class="breadcrumbs swipeignore" itemscope="" itemtype="http://schema.org/BreadcrumbList">
						<div class="breadcrumbs__item" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
							<a class="breadcrumbs__link" href="{if $lang_link}{$lang_link}{else}/{/if}" title="{$lang->home}" itemprop="item">
								<span itemprop="name" class="breadcrumbs__item-name font_13">{$lang->home}</span>
								<meta itemprop="position" content="{$level++}">
							</a>
						</div>
						<span class="breadcrumbs__separator">
							<i class="svg inline muted-use fill-dark-light" aria-hidden="true">
								<svg width="7" height="5">
									<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#right-7-5"></use>
								</svg>
							</i>
						</span>
						{if isset($keyword)}
							<div class="breadcrumbs__item" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
								<a class="breadcrumbs__link" href="{$lang_link}projects" title="{$lang->global_projects}" itemprop="item">
									<span itemprop="name" class="breadcrumbs__item-name font_13">{$lang->global_projects}</span>
									<meta itemprop="position" content="{$level++}">
								</a>
							</div>
							<span class="breadcrumbs__separator">
								<i class="svg inline muted-use fill-dark-light" aria-hidden="true">
									<svg width="7" height="5">
										<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#right-7-5"></use>
									</svg>
								</i>
							</span>
							<span class="breadcrumbs__item" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
								<link href="{$lang_link}projects?keyword={$keyword|escape}" itemprop="item"><span>
									<span itemprop="name" class="breadcrumbs__item-name font_13">{$lang->search}</span>
									<meta itemprop="position" content="{$level++}">
								</span>
							</span>
						{elseif isset($author)}
							<div class="breadcrumbs__item" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
								<a class="breadcrumbs__link" href="{$lang_link}projects" title="{$lang->global_projects}" itemprop="item">
									<span itemprop="name" class="breadcrumbs__item-name font_13">{$lang->global_projects}</span>
									<meta itemprop="position" content="{$level++}">
								</a>
							</div>
							<span class="breadcrumbs__separator">
								<i class="svg inline muted-use fill-dark-light" aria-hidden="true">
									<svg width="7" height="5">
										<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#right-7-5"></use>
									</svg>
								</i>
							</span>
							<span class="breadcrumbs__item" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
								<link href="{$lang_link}projects?author={$author|escape}" itemprop="item"><span>
									<span itemprop="name" class="breadcrumbs__item-name font_13">{$lang->author}</span>
									<meta itemprop="position" content="{$level++}">
								</span>
							</span>
						{elseif isset($projects_category)}
							<div class="breadcrumbs__item" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
								<a class="breadcrumbs__link" href="{$lang_link}projects" title="{$lang->global_projects}" itemprop="item">
									<span itemprop="name" class="breadcrumbs__item-name font_13">{$lang->global_projects}</span>
									<meta itemprop="position" content="{$level++}">
								</a>
							</div>
							{foreach $projects_category->path as $cat}
								<span class="breadcrumbs__separator">
									<i class="svg inline muted-use fill-dark-light" aria-hidden="true">
										<svg width="7" height="5">
											<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#right-7-5"></use>
										</svg>
									</i>
								</span>
								<div class="breadcrumbs__item" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
									<a class="breadcrumbs__link" href="{$lang_link}projects/{$cat->url}" title="{$cat->name|escape}" itemprop="item">
										<span itemprop="name" class="breadcrumbs__item-name font_13">{$cat->name|escape}</span>
										<meta itemprop="position" content="{$level++}">
									</a>
								</div>
							{/foreach}
						{else}
							<span class="breadcrumbs__item" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
								<link href="{$lang_link}projects" itemprop="item"><span>
									<span itemprop="name" class="breadcrumbs__item-name font_13">{$lang->global_projects}</span>
									<meta itemprop="position" content="{$level++}">
								</span>
							</span>
						{/if}
					</div>
				</div>
			</div>
			<!--h1_content-->
			<div class="topic">
				<div class="topic__inner">
					<div class="topic__heading">
						{* Title *}
						{if isset($keyword)}
							<h1 id="pagetitle" class="switcher-title">{$keyword|escape}</h1>
						{elseif isset($author)}
							<h1 id="pagetitle" class="switcher-title">{$author|escape}</>
							{elseif isset($page)}
								<h1 id="pagetitle" class="switcher-title" data-page="{$page->id}">{$page->name|escape}</h1>
							{else}
								<h1 id="pagetitle" class="switcher-title" data-projects-category="{$projects_category->id}">
									{if isset($projects_category->name_h1) && $projects_category->name_h1}
										{$projects_category->name_h1|escape}
									{elseif isset($projects_category->name) && $projects_category->name}
										{$projects_category->name|escape}
									{/if}
								</h1>
							{/if}
					</div>
				</div>
			</div>
			<!--/h1_content-->
		</section>
	</div>
</div>
<!--end-title_content-->

<div class="container">
	<div class="row">
		<div class="maxwidth-theme">
			<div class="col-md-12 col-sm-12 col-xs-12 content-md">
				<div class="right_block narrow_Y">
					<div class="blog-list blog-list--items-offset blog-list-template">
						<div class="js_append grid-list grid-list--items-{$theme_settings->projects_grid_type}-1200 grid-list--items-2-992 grid-list--items-2-768 grid-list--items-1-601 grid-list--gap-row-40 grid-list--normal">
							{foreach $projects as $project}
								<div class="js-infinite blog-list__wrapper grid-list__item">
									<div class="blog-list__item height-100 flexbox color-theme-parent-all">
										<div class="blog-list__item-image-wrapper">
											<a class="blog-list__item-link" href="{$lang_link}project/{$project->url}">
												{if isset($project->image) && $project->image}
													<span class="lazyload blog-list__item-image outer-rounded-x" style="background-image:url(data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==);" data-bg="{$project->image->filename|resize:700:464}"></span>
												{else}
													<span style="display: flex; justify-content: center; align-items: center;" class="blog-list__item-image outer-rounded-x">
														<img class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$project->name|escape}" style="max-width: 100%; max-height: 100%;">
													</span>
												{/if}
											</a>
										</div>
										<div class="blog-list__item-text-wrapper flex-grow-1 flexbox">
											<div class="blog-list__item-text-top-part flexbox">
												<div class="blog-list__item-title switcher-title font_weight--500 font_16">
													<a class="dark_link" href="{$lang_link}project/{$project->url}">
														<span data-project="{$project->id}">{$project->name|escape}</span> 
													</a>
												</div>
												<div class="blog-list__item-text-bottom-part">
													{if $project->category->name}
														<div class="blog-list__item-section font_14">
															<a class="dark_link" href="{$lang_link}projects/{$project->category->url}">
																{$project->category->name}
															</a>
														</div>
														<span class="blog-list__item-text-bottom-part__separator">/</span>
													{/if}
													{if $project->author}
														<div class="blog-list__item-section font_14">
															<a class="dark_link" href="{$lang_link}projects/?author={$project->author|escape}">
																{$project->author|escape}
															</a>
														</div>
														<span class="blog-list__item-text-bottom-part__separator">/</span>
													{/if}
													<div class="blog-list__item-period font_14">
														<span class="blog-list__item-period-date">{$project->date|date}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							{/foreach}
						</div>
						{if $total_pages_num > 1}
							<div class="bottom_nav_wrapper nav-compact">
								<div class="bottom_nav">
									{if $current_page_num < $total_pages_num}
										<div class="ajax_load_btn">
											<span class="more_text_ajax btn btn-transparent">
												{$lang->load_more}
											</span>
										</div>
									{/if}
									{include file='components/pagination.tpl'}
								</div>
							</div>
						{/if}
					</div>
				</div>
				<div class="left_block">
					<div class="sticky-block sticky-block--show-Y">
						<div class="sidearea">
							{if isset($projects_categories)}
								<ul class="nav nav-list side-menu">
									<li class="{if !isset($projects_category->id) && !isset($keyword)}active{/if} opened child">
										<span class="bg-opacity-theme-parent-hover link-wrapper">
											<a href="{$lang_link}projects" class="dark_link top-level-link rounded-x font_short link-with-flag color-theme-parent-all {if !isset($projects_category->id) && !isset($keyword)}link--active{/if}">
												<span class="side-menu__link-text">{$lang->global_projects}</span>
											</a>
										</span>
										<div class="submenu-wrapper">
											<ul class="submenu">
												{foreach $projects_categories as $c}
													{if $c->visible}
														<li class="{if isset($projects_category->id) && $projects_category->id == $c->id}active{/if} {if isset($c->subcategories)}opened child{/if}">
															<span class="bg-opacity-theme-parent-hover link-wrapper font_short fill-theme-parent-all fill-dark-light">
																<a href="{$lang_link}projects/{$c->url}" class="dark_link top-level-link rounded-x link-with-flag {if isset($projects_category->id) && $projects_category->id == $c->id}link--active{/if}">
																	<span data-projects-category="{$c->id}">{$c->name|escape}</span>
																</a>
															</span>
															{if isset($c->subcategories)}
																<div class="submenu-wrapper">
																	<ul class="submenu">
																		{foreach $c->subcategories as $cat}
																			{if $cat->visible}
																				<li class="{if isset($projects_category->id) && $projects_category->id == $cat->id}active{/if} {if isset($cat->subcategories)}opened child{/if}">
																					<span class="bg-opacity-theme-parent-hover link-wrapper font_short fill-theme-parent-all fill-dark-light">
																						<a href="{$lang_link}projects/{$cat->url}" class="dark_link sublink rounded-x sublink--child {if isset($projects_category->id) && $projects_category->id == $cat->id}link--active{/if}">
																							<span data-projects-category="{$c->id}">{$cat->name|escape}</span>
																						</a>
																					</span>
																					{if isset($cat->subcategories)}
																						<div class="submenu-wrapper">
																							<ul class="submenu">
																								{foreach $cat->subcategories as $cat3}
																									{if $cat3->visible}
																										<li class="{if isset($projects_category->id) && $projects_category->id == $cat3->id}active{/if}">
																											<span class="bg-opacity-theme-parent-hover link-wrapper font_short fill-theme-parent-all fill-dark-light">
																												<a href="{$lang_link}projects/{$cat3->url}" class="dark_link sublink rounded-x {if isset($projects_category->id) && $projects_category->id == $cat3->id}link--active{/if}">
																													<span data-projects-category="{$cat3->id}">{$cat3->name|escape}</span>
																												</a>
																											</span>
																										</li>
																									{/if}
																								{/foreach}
																							</ul>
																						</div>
																					{/if}
																				</li>
																			{/if}
																		{/foreach}
																	</ul>
																</div>
															{/if}
														</li>
													{/if}
												{/foreach}
											</ul>
										</div>
									</li>
								</ul>
							{/if}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>