{* Project *}

{* Canonical *}
{$canonical="/project/{$project->url}" scope=global}

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
						<div class="breadcrumbs__item" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
							<a class="breadcrumbs__link" href="{$lang_link}projects" title="{$lang->global_projects}" itemprop="item">
								<span itemprop="name" class="breadcrumbs__item-name font_13">{$lang->global_projects}</span>
								<meta itemprop="position" content="{$level++}">
							</a>
						</div>
						{if isset($category)}
							{foreach $category->path as $cat}
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
						{/if}
						<span class="breadcrumbs__separator">
							<i class="svg inline muted-use fill-dark-light" aria-hidden="true">
								<svg width="7" height="5">
									<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#right-7-5"></use>
								</svg>
							</i>
						</span>
						<span class="breadcrumbs__item" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
							<link href="{$lang_link}blog/{$project->url}" itemprop="item"><span>
								<span itemprop="name" class="breadcrumbs__item-name font_13">{$project->name|escape}</span>
								<meta itemprop="position" content="{$level++}">
							</span>
						</span>
					</div>
				</div>
			</div>
			<!--h1_content-->
			<div class="topic">
				<div class="topic__inner">
					<div class="topic__heading">
						<h1 id="pagetitle" class="switcher-title"><span data-project="{$project->id}">{$project->name|escape}</span></h1>
						<div class="heading-icons">
							<div class="item-action item-action--horizontal fill-theme-hover hover-block">
								<div class="hover-block__item">
									<div class="top share fill-theme-hover hover-block">
										<div class="item-action item-action--horizontal share fill-theme-hover hover-block">
											<div class="item-action__inner item-action__inner--md item-action__inner--sm-to-600 shares-block hover-block__item">
												<i class="svg inline fill-dark-light-block" aria-hidden="true">
													<svg width="16" height="16">
														<use xlink:href="design/{$settings->theme|escape}/images/svg/catalog/item_icons.svg#share-16-16"></use>
													</svg>
												</i>
												<div class="a2a-share2 hover-block__item-wrapper" style="display: none;">
													<!-- AddToAny BEGIN -->
													<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
														<ul class="a2a-share2__list a2a-share2__list_direction_horizontal">
															<li class="a2a-share2__item">
																<a class="a2a_button_facebook"></a>
															</li>
															<li class="a2a-share2__item">
																<a class="a2a_button_x"></a>
															</li>
															<li class="a2a-share2__item">
																<a class="a2a_button_facebook_messenger"></a>
															</li>
															<li class="a2a-share2__item">
																<a class="a2a_button_whatsapp"></a>
															</li>
															<li class="a2a-share2__item">
																<a class="a2a_button_telegram"></a>
															</li>
															<li class="a2a-share2__item">
																<a class="a2a_button_viber"></a>
															</li>
															<li class="a2a-share2__item">
																<a class="a2a_button_google_gmail"></a>
															</li>
														</ul>
													</div>
													<script async src="https://static.addtoany.com/menu/page.js"></script>
													<!-- AddToAny END -->
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="blog-list__item-text-bottom-part">
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
					<div class="detail detail-maxwidth blog" itemscope="" itemtype="http://schema.org/Service">
						{if $project->image}
							<meta itemprop="image" content="{$project->image->filename|resize:1500:738}">
						{/if}
						<meta itemprop="name" content="{$project->name|escape}">
						<link itemprop="url" href="{$lang_link}project/{$project->url}">
						<div class="rounded-4 bordered top-info">
							<div class="flexbox flexbox--direction-row">
								<div class="top-info__picture flex-1">
									<div class="owl-carousel owl-carousel--color-dots owl-carousel--nav-hover-visible owl-bg-nav owl-carousel--light owl-carousel--button-wide" data-plugin-options='{literal}{"items": "1", "autoplay" : false, "autoplayTimeout" : "3000", "smartSpeed":1000, "dots": true, "dotsContainer": false, "nav": true, "loop": false, "index": true, "margin": 0}{/literal}'>
										{foreach $project->images as $i=>$image}
											<div class="top-info__picture-item">
												<a href="{$image->filename|resize:1500:738}" class="top-info__link fancy" data-fancybox="big-gallery" target="_blank">
													<span class="lazyload top-info__img" style="background-image:url(data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==)" data-bg="{$image->filename|resize:1500:738}"></span>
												</a>
											</div>
										{/foreach}
									</div>
								</div>
								<div class="top-info__text flex-1">
									<div class="top-info__text-inner">
										<div class="top-info__task">
											<div class="font_13 color_999">
												{$project->date|date}
											</div>
											<div class="font_18 color_333 font_large top-info__task-value">
												Автоматизировали работу отдела, чтобы увеличить продажи агентства
											</div>
										</div>
										<div class="line-block line-block--align-normal line-block--40 top-info__bottom">
											<div class="line-block__item flex-1">
												<div class="properties list">
													{if $category}
														<div class="properties__item">
															<div class="properties__title font_13 color_999">
																{$lang->category}
															</div>
															<div class="properties__value color_333 font_15 font_short">
																{$category->name|escape}
															</div>
														</div>
													{/if}
													{if $project->site}
														<div class="properties__item">
															<div class="properties__title font_13 color_999">
																{$lang->site}
															</div>
															<div class="properties__value color_333 font_15 font_short">
																<!--noindex-->
																<a class="dark_link" href="{$project->site|escape}" rel="nofollow" target="_blank">
																	{$project->site|escape}
																</a>
																<!--/noindex-->
															</div>
														</div>
													{/if}
													{if $project->client}
														<div class="properties__item">
															<div class="properties__title font_13 color_999">
																{$lang->customer}
															</div>
															<div class="properties__value color_333 font_15 font_short">
																{$project->client|escape}
															</div>
														</div>
													{/if}
												</div>
											</div>
											<div class="line-block__item flex-1 buttons-block">
												<div>
													<div class="btn btn-default btn-wide btn-lg animate-load" data-event="jqm" data-url="{$lang_link}contact/?tpl=feedback_modal" data-name="question">
														<span>{$lang->ask_question}</span>
													</div>
												</div>
												<div>
													<div class="btn btn-default btn-wide btn-lg btn-transparent-border animate-load" data-event="jqm" data-url="{$lang_link}contact/?tpl=callback" data-name="callback">
														<span>{$lang->callback}</span>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="services-detail__bottom-info">
							{if $project->annotation}
								<div class="detail-block ordered-block desc">
									<div class="content">
										{$project->annotation}
									</div>
								</div>
							{/if}
							<div class="detail-block ordered-block desc">
								<div class="content" itemprop="description">
									{$project->text}
								</div>
							</div>
							{* Related Projects *}
							{if $related_projects}
								<div class="detail-block ordered-block related">
									<h3 class="switcher-title">{$lang->related_projects}</h3>
									<div class="blog-list blog-list--items-offset blog-list-template">
										<div class="js_append grid-list grid-list--items-3-1200 grid-list--items-2-992 grid-list--items-2-768 grid-list--items-1-601 grid-list--gap-row-40 grid-list--normal">
											{foreach $related_projects as $related_project}
												<div class="js-infinite blog-list__wrapper grid-list__item">
													<div class="blog-list__item height-100 flexbox color-theme-parent-all">
														<div class="blog-list__item-image-wrapper">
															<a class="blog-list__item-link" href="{$lang_link}project/{$related_project->url}">
																{if isset($related_project->image) && $related_project->image}
																	<span class="lazyload blog-list__item-image outer-rounded-x" style="background-image:url(data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==);" data-bg="{$related_project->image->filename|resize:700:464}"></span>
																{else}
																	<span style="display: flex; justify-content: center; align-items: center;" class="blog-list__item-image outer-rounded-x">
																		<img class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" data-src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$related_project->name|escape}" style="max-width: 100%; max-height: 100%;">
																	</span>
																{/if}
															</a>
														</div>
														<div class="blog-list__item-text-wrapper flex-grow-1 flexbox">
															<div class="blog-list__item-text-top-part flexbox">
																<div class="blog-list__item-title switcher-title font_weight--500 font_16">
																	<a class="dark_link color-theme-target" href="{$lang_link}project/{$related_project->url}">
																		<span data-project="{$related_project->id}">{$related_project->name|escape}</span>
																	</a>
																</div>
																<div class="blog-list__item-text-bottom-part">
																	<div class="blog-list__item-period font_14">
																		<span class="blog-list__item-period-date">{$related_project->date|date}</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											{/foreach}
										</div>
									</div>
								</div>
							{/if}
							<div class="detail-block ordered-block comments">
								<div class="tb_soc_comments_div tb_important tb_blue">
									<div class="tb-catalog-tab-section-container tabs arrow_scroll swipeignore">
										<div class="tabs_wrap">
											<ul class="tb-catalog-tab-list1 nav nav-tabs">
												<li class="color_666 rounded-4 font_14 BLOG active">
													<a href="#comments" data-toggle="tab">
														<i class="svg inline svg-inline-blog" aria-hidden="true">
															<svg width="13" height="13" viewBox="0 0 13 13" fill="none" xmlns="http://www.w3.org/2000/svg">
																<path d="M2.20711 11.7929L2.91421 12.5L2.91421 12.5L2.20711 11.7929ZM4 10V9C3.73478 9 3.48043 9.10536 3.29289 9.29289L4 10ZM2 3C2 2.44772 2.44772 2 3 2V0C1.34315 0 0 1.34315 0 3H2ZM2 6.38743V3H0V6.38743H2ZM2 8V6.38743H0V8H2ZM2 11.2929V8H0V11.2929H2ZM1.70711 11C1.86887 11 2 11.1311 2 11.2929H0C0 12.2357 0.764299 13 1.70711 13V11ZM1.5 11.0858C1.55493 11.0309 1.62942 11 1.70711 11V13C2.15986 13 2.59407 12.8201 2.91421 12.5L1.5 11.0858ZM3.29289 9.29289L1.5 11.0858L2.91421 12.5L4.70711 10.7071L3.29289 9.29289ZM10 9H4V11H10V9ZM11 8C11 8.55228 10.5523 9 10 9V11C11.6569 11 13 9.65685 13 8H11ZM11 3V8H13V3H11ZM10 2C10.5523 2 11 2.44772 11 3H13C13 1.34315 11.6569 0 10 0V2ZM3 2H10V0H3V2Z" fill="#333333"></path>
															</svg>
														</i>
														{$lang->global_comments}
													</a>
												</li>
											</ul>
											<div class="arrows_wrapper">
												<div class="arrow arrow_left colored_theme_hover_text fill-dark-light-block disabled">
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="8" viewBox="0 0 12 8">
														<rect width="12" height="8" fill="#333" fill-opacity="0"></rect>
														<path d="M1015.69,507.693a0.986,0.986,0,0,1-1.4,0l-4.31-4.316-4.3,4.316a0.993,0.993,0,0,1-1.4-1.408l4.99-5.009a1.026,1.026,0,0,1,1.43,0l4.99,5.009A0.993,0.993,0,0,1,1015.69,507.693Z" fill="#333" transform="translate(-1004 -501)"></path>
													</svg>
												</div>
												<div class="arrow arrow_right colored_theme_hover_text fill-dark-light-block disabled">
													<svg xmlns="http://www.w3.org/2000/svg" width="12" height="8" viewBox="0 0 12 8">
														<rect width="12" height="8" fill="#333" fill-opacity="0"></rect>
														<path d="M1015.69,507.693a0.986,0.986,0,0,1-1.4,0l-4.31-4.316-4.3,4.316a0.993,0.993,0,0,1-1.4-1.408l4.99-5.009a1.026,1.026,0,0,1,1.43,0l4.99,5.009A0.993,0.993,0,0,1,1015.69,507.693Z" fill="#333" transform="translate(-1004 -501)"></path>
													</svg>
												</div>
											</div>
										</div>
										<div class="tb-catalog-tab-body-container">
											<div class="tb-catalog-tab-container">
												<div id="comments">
													<div class="blog-comments">
														<div class="js-form-comment hidden" id="form_comment_" style="display:none;">
															<div id="form_c_del" style="display:none;">
																<div class="blog-comment__form">
																	<form enctype="multipart/form-data" method="POST" name="form_comment" id="form_comment">
																		<input type="hidden" id="parent" name="parent_id" value="0">
																		<input type="hidden" id="admin" name="admin" value="{if isset($smarty.session.admin) && $smarty.session.admin == 'admin'}1{else}0{/if}">
																		<div class="form popup blog-comment-fields outer-rounded-x bordered">
																			<div class="form-header">
																				<div class="blog-comment-field blog-comment-field-user">
																					<div class="row form">
																						<div class="col-md-6 col-sm-6">
																							<div class="form-group ">
																								<label for="user_name">{$lang->name}<span class="required-star">*</span></label>
																								<div class="input">
																									<input maxlength="255" size="30" class="form-control required" required="" tabindex="3" type="text" name="name" id="user_name" value="{if isset($comment_text)}{$comment_name|escape}{/if}">
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div class="row form comment">
																					<div class="col-md-12">
																						<div class="form-group">
																							<label for="comment">{$lang->comment}</label>
																							<div class="input">
																								<textarea rows="3" class="form-control" tabindex="3" name="text" id="comment" value="">{if isset($comment_text)}{$comment_text}{/if}</textarea>
																							</div>
																						</div>
																					</div>
																				</div>
																				{if $settings->captcha_project}
																					<div class="clearfix fill-animate">
																						<label class="font_14">
																							<span>{$lang->captcha_label}&nbsp;<span class="required-star">*</span></span>
																						</label>
																					</div>
																					<div class="row">
																						<div class="form-group col-sm-6 pb-3">
																							{get_captcha var="captcha_project"}
																							<div class="secret-number">{$captcha_project[0]|escape} + ? = {$captcha_project[1]|escape}</div>
																						</div>
																						<div class="form-group col-sm-6">
																							<div class="input">
																								<input type="text" class="form-control required" name="captcha_code" value="" autocomplete="off" required>
																							</div>
																						</div>
																					</div>
																				{/if}
																				<div class="blog-comment-buttons-wrapper font_15">
																					<input tabindex="10" class="btn btn-default" value="{$lang->send}" type="submit" name="comment" id="project-button">
																				</div>
																			</div>
																		</div>
																	</form>
																</div>
															</div>
														</div>
														<div class="blog-add-comment">
															<a class="btn btn-default btn-lg btn-wide btn-transparent-border has-ripple clicked blog-comment-action__link" data-id="0" href="javascript:void(0)">{$lang->add_comments}</a>
														</div>
														{* Error *}
														{if isset($error)}
															<div class="alert alert-danger" role="alert">
																{if $error=='captcha'}
																	{$lang->captcha_incorrect}
																{elseif $error=='empty_name'}
																	{$lang->enter_your_name}
																{elseif $error=='empty_comment'}
																	{$lang->enter_a_comment}
																{/if}
															</div>
														{/if}
														<div class="js-form-comment" id="form_comment_0" style="display: none;"></div>
														{if $comments}
															<div class="reviews_sort">
																<div class="filter-panel sort_header">
																	<div class="filter-panel__sort">
																		<div class="filter-panel__sort-form__inner flexbox flexbox--row flexbox--wrap">
																			<div class="filter-panel__sort-form__item dropdown-select dropdown-select--with-dropdown">
																				<div class="dropdown-select__title font_14 font_large fill-dark-light bordered rounded-x shadow-hovered shadow-no-border-hovered">
																					<span>
																						{if isset($sort) && $sort=='rate'}
																							{$lang->popular}
																						{elseif isset($sort) && $sort=='date'}
																							{$lang->in_order}
																						{/if}
																					</span>
																					<i class="svg inline dropdown-select__icon-down" aria-hidden="true">
																						<svg width="7" height="5">
																							<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#down-7-5"></use>
																						</svg>
																					</i>
																				</div>
																				<div class="dropdown-select__list dropdown-menu-wrapper" role="menu">
																					<div class="dropdown-menu-inner rounded-x">
																						<div class="dropdown-select__list-item font_15">
																							{if $sort=='rate'}
																								<span class="dropdown-menu-item color_222 dropdown-menu-item--current">
																									<span>{$lang->popular}</span>
																								</span>
																							{else}
																								<a href="{url sort=rate page=null}" class="dropdown-menu-item dark_link">
																									<span>{$lang->popular}</span>
																								</a>
																							{/if}
																						</div>
																						<div class="dropdown-select__list-item font_15">
																							{if $sort=='date'}
																								<span class="dropdown-menu-item color_222 dropdown-menu-item--current">
																									<span>{$lang->in_order}</span>
																								</span>
																							{else}
																								<a href="{url sort=date page=null}" class="dropdown-menu-item dark_link">
																									<span>{$lang->in_order}</span>
																								</a>
																							{/if}
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															<div class="js_append blog-comment__container">
																{function name=comments_tree level=0}
																	{foreach $comments as $comment name=tree}
																		{if $level == 0}
																			<div class="js-infinite blog-comment parent bordered outer-rounded-x">
																			{else}
																				<div class="blog-comment blog-comment--child" style="--blog_comment_padding: 0">
																				{/if}
																				<a name="comment_{$comment->id}"></a>
																				<div id="blg-comment-{$comment->id}" class="blog-comment__content">
																					{if $level == 1}
																						<div class="blog-comment__icon-answer">
																							<i class="svg inline stroke-dark-light" aria-hidden="true">
																								<svg width="12" height="12">
																									<use xlink:href="design/{$settings->theme|escape}/images/svg/catalog/item_icons.svg#comment_answer-12-12"></use>
																								</svg>
																							</i>
																						</div>
																					{/if}
																					<div class="blog-comment-cont table-full-width colored_theme_bg_before">
																						<div class="blog-comment-cont-white">
																							<div class="blog-comment-info">
																								<div class="left_info">
																									<div class="blog-comment__author color_222 font_16">{$comment->name|escape}</div>
																									<div class="blog-comment__date color_999 font_14">
																										{$comment->date|date} {$lang->at} {$comment->date|time}
																										{if !$comment->approved}
																											<span class="text-danger">{$lang->awaiting_moderation}</span>
																										{/if}
																									</div>
																								</div>
																							</div>
																							<div class="blog-comment-post">
																								<div class="blog-comment-post__item comment-text__text VIRTUES font_16">{$comment->text|escape|nl2br}</div>
																								<div class="blog-comment-post__item blog-comment-meta">
																									<span class="rating-vote">
																										<a href="ajax/comment_rate.php?id={$comment->id}&rate=up" class="rating-vote__item rating-vote__item-like stroke-dark-light-block dark_link plus {if $comment->rate > 0}active{/if}" data-action="plus" title="{$lang->like}">
																											<span class="rating-vote__icon">
																												<i class="svg inline" aria-hidden="true">
																													<svg width="20" height="22">
																														<use xlink:href="design/{$settings->theme|escape}/images/svg/catalog/item_icons.svg#like-20-22"></use>
																													</svg>
																												</i>
																											</span>
																										</a>
																										<span class="rating-vote__result {if $comment->rate != 0}active{/if}">{$comment->rate}</span>
																										<a href="ajax/comment_rate.php?id={$comment->id}&rate=down" class="rating-vote__item rating-vote__item-dislike stroke-dark-light-block dark_link minus {if $comment->rate < 0}active{/if}" data-action="minus" title="{$lang->dislike}">
																											<span class="rating-vote__icon">
																												<i class="svg inline" aria-hidden="true">
																													<svg width="20" height="22">
																														<use xlink:href="design/{$settings->theme|escape}/images/svg/catalog/item_icons.svg#dislike-20-22"></use>
																													</svg>
																												</i>
																											</span>
																										</a>
																									</span>
																									{if $level == 0}
																										<span class="blog-comment-answer blog-comment-action color_222">
																											<a href="javascript:void(0)" class="blog-comment-action__link dotted dark_link font_14" data-id="{$comment->id}">{$lang->add_comment}</a>
																										</span>
																									{/if}
																								</div>
																							</div>
																						</div>
																					</div>
																				</div>
																				<div id="form_comment_{$comment->id}" class="js-form-comment blog-comment__form-container" style="display: none"></div>
																				{if isset($children[$comment->id])}
																					{comments_tree comments=$children[$comment->id] level=$level+1}
																				{/if}
																			</div>
																		{/foreach}
																	{/function}
																	{comments_tree comments=$comments}
																</div>
																{if $total_pages_num > 1}
																	<div class="wrap_nav bottom_nav_wrapper">
																		<div class="bottom_nav_wrapper nav-compact">
																			<div class="bottom_nav">
																				{if $current_page_num < $total_pages_num}
																					<div class="ajax_load_btn">
																						<span class="more_text_ajax btn btn-transparent">
																							{$lang->load_more}
																						</span>
																					</div>
																				{/if}
																				{* Paginations *}
																				{include file='components/pagination.tpl'}
																			</div>
																		</div>
																	</div>
																{/if}
															{else}
																<div class="rounded-x bordered alert-empty">
																	{$lang->no_comments}
																</div>
															{/if}
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						{* Nex & Prev *}
						{if $prev_project || $next_project}
							<div class="bottom-links-block detail-maxwidth">
								{if $prev_project}
									<a class="back-url font_short stroke-dark-light-block dark_link" href="{$lang_link}project/{$prev_project->url}">
										<span class="back-url-icon">
											<i class="svg inline stroke-dark-light arrow-all__item-arrow" aria-hidden="true">
												<svg width="18" height="12">
													<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#left-18-12"></use>
												</svg>
											</i>
										</span>
										<span class="back-url-text">{$prev_project->name|escape}</span>
									</a>
								{/if}
								{if $next_project}
									<a class="back-url font_short stroke-dark-light-block dark_link" href="{$lang_link}project/{$next_project->url}">
										<span class="next-url-text">{$next_project->name|escape}</span>
										<span class="back-url-icon">
											<i class="svg inline stroke-dark-light arrow-all__item-arrow" aria-hidden="true">
												<svg width="18" height="12">
													<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#right-18-12"></use>
												</svg>
											</i>
										</span>
									</a>
								{/if}
							</div>
						{/if}
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
																								<span data-projects-category="{$cat->id}">{$cat->name|escape}</span>
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
</div>