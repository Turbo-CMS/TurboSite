<!DOCTYPE html>
<html {if $language->label}lang="{$language->label|escape}" {/if}>

<head>
	<base href="{$config->root_url}/" />

	{* Title *}
	{if $seo->seo_automation == "on"}
		<title>{($meta_title|default:$auto_meta->title)|escape}</title>
	{else}
		<title>{($auto_meta->title|default:$meta_title)|escape}</title>
	{/if}

	{* Meta tags *}
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	{if $seo->seo_automation == "on"}
		<meta name="description" content="{($meta_description|default:$auto_meta->description)|escape}" />
	{else}
		<meta name="description" content="{($auto_meta->description|default:$meta_description)|escape}" />
	{/if}

	{if $seo->seo_automation == "on"}
		<meta name="keywords" content="{($meta_keywords|default:$auto_meta->keywords)|escape}" />
	{else}
		<meta name="keywords" content="{($auto_meta->keywords|default:$meta_keywords)|escape}" />
	{/if}
	<meta name="author" content="Turbo CMS">
	<meta name="generator" content="Turbo CMS">

	{if $module == 'BlogView' && $post}
		<meta property="og:url" content="{$config->root_url}{if $lang_link}/{str_replace('/', '', $lang_link)}{/if}{$canonical}">
		<meta property="og:type" content="article">
		<meta property="og:title" content="{$post->name|escape}">
		{if $post->image}
			<meta property="og:image" content="{$post->image|resize_posts:400:300}">
			<link rel="image_src" href="{$post->image|resize_posts:400:300}">
		{else}
			<meta property="og:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
			<meta name="twitter:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
		{/if}
		<meta property="og:description" content='{$post->annotation|strip_tags|escape}'>
		{* Twitter *}
		<meta name="twitter:card" content="summary">
		<meta name="twitter:title" content="{$post->name|escape}">
		<meta name="twitter:description" content="{$post->annotation|strip_tags|escape}">
		<meta name="twitter:image" content="{$post->image|resize_posts:400:300}">
	{elseif $module=='ArticlesView' && $post}
		<meta property="og:url" content="{$config->root_url}{if $lang_link}/{str_replace('/', '', $lang_link)}{/if}{$canonical}">
		<meta property="og:type" content="article">
		<meta property="og:title" content="{$post->name|escape}">
		{if $post->image}
			<meta property="og:image" content="{$post->image|resize_articles:400:300}">
			<link rel="image_src" href="{$post->image|resize_articles:400:300}">
		{else}
			<meta property="og:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
			<meta name="twitter:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
		{/if}
		<meta property="og:description" content='{$post->annotation|strip_tags|escape}'>
		{*twitter*}
		<meta name="twitter:card" content="summary">
		<meta name="twitter:title" content="{$post->name|escape}">
		<meta name="twitter:description" content="{$post->annotation|strip_tags|escape}">
		<meta name="twitter:image" content="{$post->image|resize_articles:400:300}">
	{elseif $module=='ProjectsView' && $project}
		<meta property="og:url" content="{$config->root_url}{$canonical}">
		<meta property="og:type" content="website">
		<meta property="og:title" content="{$project->name|escape}">
		<meta property="og:description" content='{$project->annotation|strip_tags|escape}'>
		<meta property="og:image" content="{$project->image->filename|resize:330:300}">
		<link rel="image_src" href="{$project->image->filename|resize:330:300}">
		{*twitter*}
		<meta name="twitter:card" content="project" />
		<meta name="twitter:url" content="{$config->root_url}{$canonical}">
		<meta name="twitter:site" content="{$settings->site_name|escape}">
		<meta name="twitter:title" content="{$project->name|escape}">
		<meta name="twitter:description" content="{$project->annotation|strip_tags|escape}">
		<meta name="twitter:image" content="{$project->image->filename|resize:330:300}">
		<meta name="twitter:label2" content="{$settings->site_name|escape}">
	{else}
		<meta property="og:title" content="{$settings->site_name|escape}">
		<meta property="og:type" content="website">
		<meta property="og:url" content="{$config->root_url}">
		<meta property="og:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
		<meta property="og:site_name" content="{$settings->site_name|escape}">
		{if $seo->seo_automation == "on"}
			<meta property="og:description" content="{($meta_description|default:$auto_meta->description)|escape}" />
		{else}
			<meta property="og:description" content="{($auto_meta->description|default:$meta_description)|escape}" />
		{/if}
		<link rel="image_src" href="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
		{* Twitter *}
		<meta name="twitter:card" content="summary">
		<meta name="twitter:title" content="{$settings->site_name|escape}">
		{if $seo->seo_automation == "on"}
			<meta name="twitter:description" content="{($meta_description|default:$auto_meta->description)|escape}" />
		{else}
			<meta name="twitter:description" content="{($auto_meta->description|default:$meta_description)|escape}" />
		{/if}
		<meta name="twitter:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
	{/if}

	{* Canonical page address *}
	{if isset($canonical)}
	<link rel="canonical" href="{$config->root_url}{$canonical}" />{/if}

	{* Language attribute *}
	{foreach $languages as $lang}
		{if $lang->enabled}
			<link rel="alternate" hreflang="{if $lang@first}x-default{else}{$lang->label}{/if}" href="{$config->root_url}{if !$lang@first}/{/if}{preg_replace('/^(.+)\/$/', '$1', $lang->url)}">
		{/if}
	{/foreach}

	{* Styles *}
	{css id="libs" include=[
	"design/{$settings->theme|escape}/css/bootstrap.min.css",
	"design/{$settings->theme|escape}/css/style.css",
	"design/{$settings->theme|escape}/css/fontawesome-all.min.css",
	"design/{$settings->theme|escape}/css/jquery.fancybox.min.css",
	"design/{$settings->theme|escape}/css/flag-icon.css",
	"design/{$settings->theme|escape}/css/toast.css"
	]}{/css}
	{stylesheet minify=true}

	{if $module == 'ProjectsView'}
		{css id="product" include=[
		"design/{$settings->theme|escape}/css/project.css"
		]}{/css}
		{stylesheet minify=true}
	{/if}

	{if $module == 'BlogView' && $post || $module=='ArticlesView' && $post}
		{css id="post" include=[
		"design/{$settings->theme|escape}/css/post.css"
		]}{/css}
		{stylesheet minify=true}
	{/if}

	{if $module == 'FAQView'}
		{css id="faq" include=[
		"design/{$settings->theme|escape}/css/faq.css"
		]}{/css}
		{stylesheet minify=true}
	{/if}

	<link href="design/{$settings->theme|escape}/images/favicon.ico" rel="icon" type="image/x-icon" />
	<link href="design/{$settings->theme|escape}/images/favicon.ico" rel="shortcut icon" type="image/x-icon" />
	<!-- Custom styles for this template -->
	<style>
		{if $module=='MainView'}
			.carousel-item {
				height: 65vh;
				min-height: 300px;
				background: no-repeat center center scroll;
				-webkit-background-size: cover;
				-moz-background-size: cover;
				-o-background-size: cover;
				background-size: cover;
			}

		{/if}
		.portfolio-item {
			margin-bottom: 30px;
		}
	</style>
	{if $counters['head']}
		{foreach $counters['head'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}
</head>

<body itemscope itemtype="https://schema.org/WebPage">

	{if $counters['body_top']}
		{foreach $counters['body_top'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}
	<!-- Navigation -->
	<nav itemscope itemtype="https://schema.org/SiteNavigationElement" class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="{$lang_link}"><i class="fal fa-globe"></i> TurboSite</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarsExample09">
				<ul class="navbar-nav mr-auto">
					{foreach $pages as $p}
						{if $p->menu_id == 1}
							{if $p->visible}
								{if $p->subpages}
									<li itemprop="name" class="nav-item dropdown {if $page && $page->id == $p->id}active{/if}">
										<a itemprop="url" class="nav-link dropdown-toggle" href="{$lang_link}{$p->url}" id="dropdown{$p->id}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{$p->header}</a>
										<div class="dropdown-menu" aria-labelledby="dropdown{$p->id}">
											{foreach $p->subpages as $p2}
												<a itemprop="url" class="dropdown-item" href="{$lang_link}{$p2->url}">{$p2->header}</a>
											{/foreach}
										</div>
									</li>
								{else}
									<li itemprop="name" class="nav-item {if $page && $page->id == $p->id}active{/if}">
										<a itemprop="url" class="nav-link" href="{$lang_link}{$p->url}">{$p->header}</a>
									</li>
								{/if}
							{/if}
						{/if}
					{/foreach}
				</ul>
				<ul class="nav navbar-nav navbar-right">
					{* Languages *}
					{if $languages|count > 1}
						{$cnt = 0}
						{foreach $languages as $ln}
							{if $ln->enabled}
								{$cnt = $cnt+1}
							{/if}
						{/foreach}
						{if $cnt>1}
							<li class="nav-item dropdown">
								{foreach $languages as $l}
									{if $language->id == $l->id}
										<a class="nav-link dropdown-toggle" href="{$config->root_url}{$lang_link}" id="dropdown09" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="flag-icon flag-icon-{$l->label}"></span> {$l->label}</a>
									{/if}
								{/foreach}
								<div class="dropdown-menu" aria-labelledby="dropdown09">
									{foreach $languages as $l}
										{if $l->enabled}
											<a href="{$l->url}" class="dropdown-item {if $language->id == $l->id}active{/if}"><span class="flag-icon flag-icon-{$l->label}"></span> {$l->label}</a>
										{/if}
									{/foreach}
								</div>
							</li>
						{/if}
					{/if}
					{if $user}
						<li class="nav-link"><i class="fal fa-user"></i> <a class="text-white-50 text-decoration-none" href="{$lang_link}user">{$user->name}</a></li>
						<li class="nav-link"><i class="fal fa-sign-out"></i> <a class="text-white-50 text-decoration-none" href="{$lang_link}user/logout">{$lang->logout}</a></li>
					{else}
						<li class="nav-link"><i class="fal fa-sign-in"></i> <a class="text-white-50 text-decoration-none" href="{$lang_link}user/login">{$lang->login}</a></li>
						<li class="nav-link"><i class="fal fa-user-plus"></i> <a class="text-white-50 text-decoration-none" href="{$lang_link}user/register">{$lang->registration}</a></li>
					{/if}
				</ul>
			</div>
		</div>
	</nav>
	{if $module=='MainView'}
		{get_banner var=banner_1 group='1'}
		{if $banner_1->items}
			<header itemscope itemtype="https://schema.org/WPHeader">
				<div id="carouselExampleIndicators" class="carousel slide main-slider" data-ride="carousel">
					<ol class="carousel-indicators">
						{foreach $banner_1->items as $s name=indicator}
							<li data-target="#carouselExampleIndicators" data-slide-to="{$smarty.foreach.indicator.index}" {if $smarty.foreach.indicator.first}class="active" {/if}></li>
						{/foreach}
					</ol>
					<div class="carousel-inner" role="listbox">
						{foreach $banner_1->items as $s name=foo}
							<div class="carousel-item {if $smarty.foreach.foo.first}active{/if}" style="background-image: url('{$config->banners_images_dir}{$s->image}')">
								<div class="carousel-caption">
									<h3>{$s->name|escape}</h3>
									<p>{$s->description}</p>
								</div>
							</div>
						{/foreach}
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</header>
		{/if}
		<div class="bg-light">
			<div class="container">
				<div class="row text-center pad-top pad-bottom">
					<div class="col-md-4">
						<i class="fal fa-comments fa-3x icon-custom text-primary"></i>
						<h4>{$lang->features_support}</h4>
						<hr>
						<p>
							{$lang->message_support}
						</p>
					</div>
					<div class="col-md-4">
						<i class="fal fa-desktop fa-3x icon-custom text-primary"></i>
						<h4>{$lang->quick_start}</h4>
						<hr>
						<p>
							{$lang->message_support}
						</p>
					</div>
					<div class="col-md-4">
						<i class="fal fa-recycle fa-3x icon-custom text-primary"></i>
						<h4>{$lang->simple_solution}</h4>
						<hr>
						<p>
							{$lang->message_support}
						</p>
					</div>
				</div>
			</div>
		</div>
	{/if}
	<!-- Page Content -->
	<div class="container">
		{$content}
	</div>
	{if $module=='MainView'}
		<!-- /.container -->
		<div class="container mt-5">
			{if $module=='MainView'}
				{get_posts var=last_posts limit=3}
				{if $last_posts}
					<header class="section-heading">
						<a href="{$lang_link}blog" class="btn btn-outline-primary float-right">{$lang->see_all}</a>
						<h2 class="section-title my-2">{$lang->index_blog}</h2>
					</header><!-- sect-heading -->
					<hr>
					<div class="row">
						{foreach $last_posts as $post}
							<div class="col-md-6 col-lg-4 mb-5">
								<div class="card h-100">
									{if $post->image}
										<img class="card-img-top" src="{$post->image|resize_posts:750:300}" alt="{$post->name|escape}">
									{else}
										<span class="text-center mt-4">
											<img style="width: 210px; height: 210px;" src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$article->name|escape}" />
										</span>
									{/if}
									<div class="card-body">
										<h5 class="card-title"><a data-post="{$post->id}" href="blog/{$post->url}">{$post->name|escape}</a></h5>
										<p class="card-text"><small class="text-muted">{$post->date|date}</small></p>
										<p class="card-text">{$post->annotation|strip_tags|truncate:150}</p>
									</div>
									<div class="card-footer">
										<a href="{$lang_link}blog/{$post->url}" class="btn btn-primary btn-sm">{$lang->more_details}</a>
									</div>
								</div>
							</div>
							<!-- /.col-md-4 -->
						{/foreach}
					</div>
				{/if}
			{/if}
			{if $module=='MainView'}
				{get_articles var=last_articles limit=3}
				{if $last_articles}
					<header class="section-heading">
						<a href="{$lang_link}articles" class="btn btn-outline-primary float-right">{$lang->see_all}</a>
						<h2 class="section-title my-2">{$lang->index_articles}</h2>
					</header><!-- sect-heading -->
					<hr>
					<div class="row">
						{foreach $last_articles as $article}
							<div class="col-md-6 col-lg-4 mb-5">
								<div class="card h-100">
									{if $article->image}
										<img class="card-img-top" src="{$article->image|resize_articles:750:300}" alt="{$article->name|escape}">
									{else}
										<span class="text-center mt-4">
											<img style="width: 210px; height: 210px;" src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$article->name|escape}" />
										</span>
									{/if}
									<div class="card-body">
										<h5 class="card-title"><a data-article="{$article->id}" href="{$lang_link}article/{$article->url}">{$article->name|escape}</a></h5>
										<p class="card-text"><small class="text-muted">{$article->date|date}</small></p>
										<p class="card-text">{$article->annotation|strip_tags|truncate:150}</p>
									</div>
									<div class="card-footer">
										<a href="{$lang_link}article/{$article->url}" class="btn btn-primary btn-sm">{$lang->more_details}</a>
									</div>
								</div>
							</div>
							<!-- /.col-md-4 -->
						{/foreach}
					</div>
				{/if}
			{/if}
		</div>
	{/if}
	<!-- Subscribe to news -->
	<div class="container-fluid bg-light">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<form class="form-group my-5" id="loginForm" novalidate="" method="post">
					{if $subscribe_error}
						<label class="error text-danger">
							{if $subscribe_error == 'email_exist'}
								{$lang->already_subscribe}
							{/if}
							{if $subscribe_error == 'empty_email'}
								{$lang->enter_your_email}
							{/if}
						</label>
					{/if}
					{if $subscribe_success}
						<label class="success text-success">
							{$lang->success_subscribe}
						</label>
					{/if}
					<div class="input-group mb-2">
						<input type="email" name="subscribe_email" class="form-control {if $subscribe_error}border-danger{/if} {if $subscribe_success}border-success{/if}" required size="20" value="" placeholder="{$lang->enter_your_email}">
						<div class="input-group-append">
							<button type="submit" name="subscribe" value="{$lang->subscribe_to}" id="btnLogin" class="btn btn-warning"><i class="fa fa-envelope"></i></button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Subscribe to news (The End)-->
	<a href="#" id="back-to-top" title="Back to top"><i class="fa fa-angle-double-up"></i></a>
	<!-- Footer -->
	<footer itemscope itemtype="https://schema.org/WPFooter" class="page-footer font-small bg-dark text-white pt-4">
		<!-- Footer Links -->
		<div class="container text-center text-md-left">
			<!-- Footer links -->
			<div class="row text-center text-md-left mt-3 pb-3">
				<!-- Grid column -->
				<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
					<h6 class="text-uppercase mb-4 font-weight-bold">{$settings->company_name|escape}</h6>
					<p class="text-muted">{$lang->main_description}</p>
				</div>
				<!-- Grid column -->
				<hr class="w-100 clearfix d-md-none">
				<!-- Grid column -->
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
					<h6 class="text-uppercase mb-4 font-weight-bold">{$lang->about_company}</h6>
					{foreach $pages as $p}
						{if $p->menu_id == 1}
							<p {if $page && $page->id == $p->id}class="selected" {/if}>
								<a data-page="{$p->id}" href="{$lang_link}{$p->url}">{$p->header|escape}</a>
							</p>
						{/if}
					{/foreach}
				</div>
				<!-- Grid column -->
				<hr class="w-100 clearfix d-md-none">
				<!-- Grid column -->
				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
					<h6 class="text-uppercase mb-4 font-weight-bold">{$lang->services}</h6>
					{foreach $pages as $p}
						{if $p->menu_id == 3}
							<p {if $page && $page->id == $p->id}class="selected" {/if}>
								<a data-page="{$p->id}" href="{$lang_link}{$p->url}">{$p->header|escape}</a>
							</p>
						{/if}
					{/foreach}
				</div>
				<!-- Grid column -->
				<hr class="w-100 clearfix d-md-none">
				<!-- Grid column -->
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
					<h6 class="text-uppercase mb-4 font-weight-bold">{$lang->contacts}</h6>
					<p><i class="far fa-home mr-3 text-muted"></i>{$lang->contact_details}</p>
					<p><i class="far fa-envelope mr-3 text-muted"></i> info@gmail.com</p>
					<p><i class="far fa-phone mr-3 text-muted"></i> (123) 456-78-90</p>
					<p><i class="far fa-print mr-3 text-muted"></i> (987) 654-32-10</p>
				</div>
				<!-- Grid column -->
			</div>
			<!-- Footer links -->
			<hr>
			<!-- Grid row -->
			<div class="row d-flex align-items-center">
				<!-- Grid column -->
				<div class="col-md-4 col-lg-4">
					<!--Copyright-->
					<p class="text-center text-md-left text-muted">© <span itemprop="copyrightYear">{$smarty.now|date_format:"Y"}</span>
						<a href="https://turbo-cms.com">
							<strong>TurboCMS</strong>
						</a>
					</p>
				</div>
				<!-- Grid column -->
				<!-- Grid column -->
				<div class="col-md-4 col-lg-4">
					<p class="text-center text-md-center text-muted"><i class="flag-icon flag-icon-ua"></i>
						<strong>Made in Ukraine</strong>
					</p>
				</div>
				<!-- Grid column -->
				<!-- Grid column -->
				<div class="col-md-4 col-lg-4 ml-lg-0">
					<!-- Social buttons -->
					<div class="text-center text-md-right">
						<ul class="list-unstyled list-inline">
							<li class="list-inline-item">
								<a href="#" class="btn-floating btn-sm rgba-white-slight mx-1">
									<i class="fab fa-facebook-f"></i>
								</a>
							</li>
							<li class="list-inline-item">
								<a href="#" class="btn-floating btn-sm rgba-white-slight mx-1">
									<i class="fab fa-twitter"></i>
								</a>
							</li>
							<li class="list-inline-item">
								<a href="#" class="btn-floating btn-sm rgba-white-slight mx-1">
									<i class="fab fa-google-plus-g"></i>
								</a>
							</li>
							<li class="list-inline-item">
								<a href="#" class="btn-floating btn-sm rgba-white-slight mx-1">
									<i class="fab fa-linkedin-in"></i>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- Grid column -->
			</div>
			<!-- Grid row -->
		</div>
		<!-- Footer Links -->
	</footer>
	<!-- Footer -->

	{* Javascripts *}
	{js id="libs" priority=99 include=[
	"design/{$settings->theme|escape}/js/jquery.min.js",
	"design/{$settings->theme|escape}/js/bootstrap.bundle.min.js",
	"design/{$settings->theme|escape}/js/jquery.fancybox.min.js",
	"design/{$settings->theme|escape}/js/script.js"
	]}{/js}
	{javascript minify=true}

	{* Reviews *}
	{if $module == 'CommentsView'}
		{js id="reviews" priority=99 include=[
		"design/{$settings->theme}/js/rating.js"
		]}{/js}
		{javascript minify=true}
	{/if}

	{js id="prism" priority=99 include=[
	"design/{$settings->theme}/js/prism.js"
	]}{/js}
	{javascript minify=false}

	{* Blog Articles*}
	{if $module=='BlogView' || $module=='ArticlesView'}
		{css id="prism" include=[
		"design/{$settings->theme|escape}/css/prism.css"
		]}{/css}
		{stylesheet minify=true}

		{js id="prism" priority=99 include=[
		"design/{$settings->theme}/js/prism.js"
		]}{/js}
		{javascript minify=false}

		{js id="toc" priority=99 include=[
		"design/{$settings->theme}/js/owl.carousel.min.js",
		"design/{$settings->theme}/js/jquery.toc.js"
		]}{/js}
		{javascript minify=true}
	{/if}

	{* Ctrl-navigate *}
	{js id="libs" priority=99 include=[
	"js/ctrlnavigate.js"
	]}{/js}
	{javascript minify=true}

	{* Maske *}
	{js id="libs" priority=99 include=[
	"design/{$settings->theme|escape}/js/jquery.maskedinput.min.js"
	]}{/js}
	{javascript minify=true}

	{literal}
		<script>
			$(function() {
				if ($('#back-to-top').length) {
					var scrollTrigger = 100, // px
						backToTop = function() {
							var scrollTop = $(window).scrollTop();
							if (scrollTop > scrollTrigger) {
								$('#back-to-top').addClass('show');
							} else {
								$('#back-to-top').removeClass('show');
							}
						};
					backToTop();
					$(window).on('scroll', function() {
						backToTop();
					});
					$('#back-to-top').on('click', function(e) {
						e.preventDefault();
						$('html,body').animate({
							scrollTop: 0
						}, 700);
					});
				}
			});
		</script>
	{/literal}
	<script>
		$("#btnLogin").click(function(event) {
			var form = $("#loginForm");
			if (form[0].checkValidity() === false) {
				event.preventDefault();
				event.stopPropagation();
			}
			form.addClass('was-validated');
		});
	</script>
	<!-- Modal -->
	<div class="modal fade fade bd-example-modal-sm" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">{$lang->callback}</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form class="form feedback_form" method="post">
					<div class="modal-body">
						{if $call_sent}
							<div id="elasto_callback_s1_alert" class="alert alert-success" style="display: block;">
								{$lang->message_sent}
							</div>
						{/if}
						{if $call_error}
							<div class="alert alert-danger" role="alert">
								{if $call_error == 'empty_name'}
									{$lang->enter_your_name}
								{elseif $call_error == 'empty_phone'}
									{$lang->enter_phone_number}
								{elseif $call_error == 'captcha'}
									{$lang->captcha_incorrect}
								{else}
									{$call_error}
								{/if}
							</div>
						{/if}
						<p class="modal-caption">{$lang->your_phone_number}</p>
						<div class="form-group has-feedback">
							<div class="input-group">
								<div class="input-group-prepend">
									<div class="input-group-text text-primary"><i class="fv-icon-no-has fal fa-user"></i></div>
								</div>
								<input type="text" name="name" data-format=".+" data-notice="{$lang->enter_your_name}" value="{if $callname}{$callname|escape}{else}{$user->name|escape}{/if}" class="form-control" placeholder="{$lang->name}" required />
							</div>
						</div>
						<div class="form-group has-feedback">
							<div class="input-group">
								<div class="input-group-prepend">
									<div class="input-group-text text-primary"><i class="fv-icon-no-has fal fa-phone-alt"></i></div>
								</div>
								<input data-format=".+" data-notice="{$lang->enter_phone_number}" required value="{if $callphone}{$callphone|escape}{else}{$user->phone|escape}{/if}" id="call_mask" name="phone" maxlength="255" type="text" class="form-control" placeholder="{$lang->phone}" />
							</div>
						</div>
						{*
						<div class="form-group has-feedback">									
							<div class="input-group">
								<div class="input-group-prepend"> 
									<div class="input-group-text text-primary"><i class="fv-icon-no-has fal fa-envelope"></i></div>
								</div>
								<input value="{if $callemail}{$callemail|escape}{else}{$user->email|escape}{/if}" name="email" maxlength="255" type="email" class="form-control" placeholder="E-mail"/>
							</div>
						</div>
						*}
						{if $settings->captcha_callback}
							<div class="form-row">
								<div class="form-group col-sm-6">
									{get_captcha var="captcha_callback"}
									<div class="secret_number">{$captcha_callback[0]|escape} + ? = {$captcha_callback[1]|escape}</div>
								</div>
								<div class="form-group col-sm-6">
									<input class="form-control" type="text" name="captcha_code" placeholder="{$lang->captcha}" required="" autocomplete="off" value="" data-format=".+" data-notice="{$lang->enter_captcha}" />
								</div>
							</div>
						{/if}
					</div>
					<div class="modal-footer">
						<input class="btn btn-primary mx-auto" type="submit" name="callback" value="{$lang->send}" />
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="position-fixed top-0 start-50 translate-middle-x p-3 mt-5" style="z-index: 1060">
		<div id="subscribe" class="toast fade hide align-items-center text-white {if $subscribe_error}bg-danger{/if}{if $subscribe_success}bg-success{/if} border-0" role="alert" aria-live="assertive" data-delay="4000" aria-atomic="true">
			<div class="d-flex">
				<div class="toast-body">
					{if $subscribe_error}
						{if $subscribe_error == 'email_exist'}
							{$lang->already_subscribe}
						{/if}
						{if $subscribe_error == 'empty_email'}
							{$lang->enter_your_email}
						{/if}
					{/if}
					{if $subscribe_success}
						{$lang->success_subscribe}
					{/if}
				</div>
				<button type="button" class="btn-close btn-close-white me-2 m-auto" data-dismiss="toast" aria-label="Close"></button>
			</div>
		</div>
	</div>
	<div class="position-fixed top-0 start-50 translate-middle-x p-3 mt-5" style="z-index: 1060">
		<div id="rate_danger" class="toast fade hide align-items-center text-white bg-danger border-0" role="alert" aria-live="assertive" data-delay="4000" aria-atomic="true">
			<div class="d-flex">
				<div class="toast-body">
					{$lang->already_voted}
				</div>
				<button type="button" class="btn-close btn-close-white me-2 m-auto" data-dismiss="toast" aria-label="Close"></button>
			</div>
		</div>
	</div>
	{if $call_sent}
		<script type='text/javascript'>
			$(window).on("load", function() {
				$('#exampleModal').modal('show');
			});
		</script>
	{/if}
	{if $subscribe_success || $subscribe_error}
		<script type='text/javascript'>
			$(window).on("load", function() {
				$('#subscribe').toast('show');
			});
		</script>
	{/if}
	<script type="text/javascript">
		/// some script

		// jquery ready start
		$(document).ready(function() {
			// jQuery code

			$("[data-trigger]").on("click", function(e) {
				e.preventDefault();
				e.stopPropagation();
				var offcanvas_id = $(this).attr('data-trigger');
				$(offcanvas_id).toggleClass("show");
				$('body').toggleClass("offcanvas-active");
				$(".screen-overlay").toggleClass("show");
			});

			// Close menu when pressing ESC
			$(document).on('keydown', function(event) {
				if (event.keyCode === 27) {
					$(".mobile-offcanvas").removeClass("show");
					$("body").removeClass("overlay-active");
				}
			});

			$(".btn-close-sidebar, .screen-overlay").click(function(e) {
				$(".screen-overlay").removeClass("show");
				$(".mobile-offcanvas").removeClass("show");
				$("body").removeClass("offcanvas-active");
			});

		}); // jquery end
	</script>
	{if $module == 'ProjectsView'}
		<script>
			$('[id^=carousel-selector-]').click(function() {
				var id_selector = $(this).attr("id");
				var id = id_selector.substr(id_selector.length - 1);
				id = parseInt(id);
				$('[id^=carousel-selector-]').removeClass('selected');
				$(this).addClass('selected');
			});
		</script>
	{/if}
	{if $module == 'CommentsView'}
		<script>
			$("#review").rating({
				"value": 4,
				"click": function(e) {
					console.log(e);
					$("#starsInput").val(e.stars);
				}
			});
		</script>
	{/if}
	<script>
		$(function() {
			$("#call_mask").mask("+*(999) 999-99-99");
			$("#phone").mask("+*(999) 999-99-99");
			$("#feedback_phone").mask("+*(999) 999-99-99");
		});
	</script>
	{css id="chat" include=[
	"design/{$settings->theme|escape}/css/online-chat.css"
	]}{/css}
	{stylesheet minify=true}

	{js id="chat" priority=99 include=[
	"design/{$settings->theme}/js/online-chat.js"
	]}{/js}
	{javascript minify=false}
	{if $settings->chat_viber || $settings->chat_whats_app || $settings->chat_telegram || $settings->chat_facebook}
		{include file="online_chat.tpl"}
	{/if}
	{if $smarty.session.admin == 'admin'}
		{$admintooltip}
	{/if}
	{if $counters['body_bottom']}
		{foreach $counters['body_bottom'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}
</body>

</html>