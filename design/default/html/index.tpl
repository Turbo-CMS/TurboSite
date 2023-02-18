<!DOCTYPE html>
{* General Page *}
<html {if $language->label}lang="{$language->label|escape}"{/if} {if $smarty.cookies.mode == 'mode'}data-bs-theme="dark"{/if} {if $module == 'FAQView'}itemscope itemtype="https://schema.org/FAQPage"{/if}>

<head>
	<base href="{$config->root_url}/">

	{if $seo->seo_automation == "on"}
		<title>{($meta_title|default:$auto_meta->title)|escape}</title>
	{else}
		<title>{($auto_meta->title|default:$meta_title)|escape}</title>
	{/if}

	{* Meta Tags *}
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	{if $seo->seo_automation == "on"}
		<meta name="description" content="{($meta_description|default:$auto_meta->description)|escape}">
	{else}
		<meta name="description" content="{($auto_meta->description|default:$meta_description)|escape}">
	{/if}

	{if $seo->seo_automation == "on"}
	<meta name="keywords" content="{($meta_keywords|default:$auto_meta->keywords)|escape}">
	{else}
		<meta name="keywords" content="{($auto_meta->keywords|default:$meta_keywords)|escape}">
	{/if}

	<meta name="author" content="TurboCMS">
	<meta name="generator" content="TurboCMS">

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
		<meta name="twitter:card" content="project">
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
			<meta property="og:description" content="{($meta_description|default:$auto_meta->description)|escape}">
		{else}
			<meta property="og:description" content="{($auto_meta->description|default:$meta_description)|escape}">
		{/if}
		<link rel="image_src" href="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
		{* Twitter *}
		<meta name="twitter:card" content="summary">
		<meta name="twitter:title" content="{$settings->site_name|escape}">
		{if $seo->seo_automation == "on"}
			<meta name="twitter:description" content="{($meta_description|default:$auto_meta->description)|escape}">
		{else}
			<meta name="twitter:description" content="{($auto_meta->description|default:$meta_description)|escape}">
		{/if}
		<meta name="twitter:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
	{/if}

	{if $module == 'ProjectsView' && $project}
		{if $noindex_filter && !$page}
			<meta name="robots" content="noindex,nofollow">
		{elseif $smarty.get.page || $smarty.get.sort}
			<meta name="robots" content="noindex,follow">
		{elseif isset($smarty.get.keyword)}
			<meta name="robots" content="noindex,follow">
		{else}
			<meta name="robots" content="index,follow">
		{/if}
	{elseif $smarty.get.module == "RegisterView" || $smarty.get.module == "LoginView" || $smarty.get.module == "UserView"}
		<meta name="robots" content="noindex,follow">
	{elseif $smarty.get.module == "BlogView" && $smarty.get.sort || isset($smarty.get.keyword)}
		<meta name="robots" content="noindex,follow">
	{elseif $smarty.get.module == "ArticlesView" && $smarty.get.sort || isset($smarty.get.keyword)}
		<meta name="robots" content="noindex,follow">
	{else}
		<meta name="robots" content="index,follow">
	{/if}

	{* Canonical *}
	{if isset($canonical)}
		<link rel="canonical" href="{$config->root_url}{if $lang_link}/{str_replace('/', '', $lang_link)}{/if}{$canonical}">
	{/if}

	{* Language Attribute *}
	{foreach $languages as $lang}
		{if $lang->enabled}
			<link rel="alternate" hreflang="{if $lang@first}x-default{else}{$lang->label}{/if}" href="{$config->root_url}{if !$lang@first}/{/if}{preg_replace('/^(.+)\/$/', '$1', $lang->url)}">
		{/if}
	{/foreach}

	{* Styles *}
	{if $smarty.cookies.mode == 'mode'}
		{css id="styles" include=[
		"design/{$settings->theme|escape}/css/style-dark.css"
		]}{/css}
		{stylesheet minify=true}
	{else}
		{css id="styles" include=[
		"design/{$settings->theme|escape}/css/style-light.css"
		]}{/css}
		{stylesheet minify=true}
	{/if}

	{css id="main" include=[
	"design/{$settings->theme|escape}/css/bootstrap.min.css",
	"design/{$settings->theme|escape}/css/style.css",
	"design/{$settings->theme|escape}/css/fontawesome-all.min.css",
	"design/{$settings->theme|escape}/css/flag-icon.min.css",
	"design/{$settings->theme|escape}/css/jquery.fancybox.min.css"
	]}{/css}
	{stylesheet minify=true}

	{if $module == 'ProjectsView' && $project}
		{css id="project" include=[
		"design/{$settings->theme|escape}/css/project.css"
		]}{/css}
		{stylesheet minify=true}
	{/if}

	{* Favicon *}
	<link href="design/{$settings->theme|escape}/images/favicon.ico" rel="icon" type="image/x-icon">
	<link href="design/{$settings->theme|escape}/images/favicon.ico" rel="shortcut icon" type="image/x-icon">

	{* Custom Scripts *}
	{if $counters['head']}
		{foreach $counters['head'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}
</head>

<body itemscope itemtype="https://schema.org/WebPage">

	{* Custom Scripts *}
	{if $counters['body_top']}
		{foreach $counters['body_top'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}

	<!-- Header -->
	<header>
		<!-- Navigation -->
		<nav itemscope itemtype="https://schema.org/SiteNavigationElement" class="navbar navbar-expand-lg {if $smarty.cookies.mode == 'mode'}navbar-dark bg-body-tertiary{else}navbar-light bg-light{/if} fixed-top">
			<div class="container">
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMenu" aria-controls="navbarMenu" aria-expanded="false" aria-label="Menu">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarMenu">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						{foreach $pages as $p}
							{if $p->menu_id == 1}
								{if $p->visible}
									{if $p->subpages}
										<li itemprop="name" class="nav-item dropdown {if $page && $page->id == $p->id}active{/if}">
											<a itemprop="url" class="nav-link dropdown-toggle" href="{$lang_link}{$p->url}" id="dropdown{$p->id}" data-page="{$p->id}" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">{$p->header}</a>
											<div class="dropdown-menu" aria-labelledby="dropdown{$p->id}">
												{foreach $p->subpages as $p2}
													<a itemprop="url" data-page="{$p2->id}" class="dropdown-item" href="{$lang_link}{$p2->url}">{$p2->header}</a>
												{/foreach}
											</div>
										</li>
									{else}
										<li itemprop="name" class="nav-item {if $page && $page->id == $p->id}active{/if}">
											<a itemprop="url" data-page="{$p->id}" class="nav-link" href="{$lang_link}{$p->url}">{$p->header}</a>
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
											<a class="nav-link dropdown-toggle" href="{$config->root_url}{$lang_link}" id="dropdownLang" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="flag-icon flag-icon-{$l->label}"></span> {$l->label|upper}</a>
										{/if}
									{/foreach}
									<div class="dropdown-menu" aria-labelledby="dropdownLang">
										{foreach $languages as $l}
											{if $l->enabled}
												<a href="{$l->url}" class="dropdown-item {if $language->id == $l->id}active{/if}"><span class="flag-icon flag-icon-{$l->label}"></span> {$l->name}</a>
											{/if}
										{/foreach}
									</div>
								</li>
							{/if}
						{/if}
						{if $user}
							<li class="nav-item"><a class="nav-link text-decoration-none" href="{$lang_link}user"><i class="fal fa-user"></i> {$user->name}</a></li>
							<li class="nav-item"><a class="nav-link text-decoration-none" href="{$lang_link}user/logout"><i class="fal fa-sign-out"></i> {$lang->logout}</a></li>
						{else}
							<li class="nav-item"><a class="nav-link text-decoration-none" href="{$lang_link}user/login"><i class="fal fa-sign-in"></i> {$lang->login}</a></li>
							<li class="nav-item"><a class="nav-link text-decoration-none" href="{$lang_link}user/register"><i class="fal fa-user-plus"></i> {$lang->registration}</a></li>
						{/if}
					</ul>
				</div>
				<!-- Switch Mode -->
				<div class="form-check form-switch ms-1 mt-1">
					{if $smarty.cookies.mode == 'mode'}
						<input type="checkbox" onclick="document.cookie='mode=;path=/';document.location.reload();" class="form-check-input" id="darkSwitch">
						<label class="custom-control-label" for="darkSwitch"><i class="fal fa-moon"></i></label>
					{else}
						<input type="checkbox" onclick="document.cookie='mode=mode;path=/';document.location.reload();" class="form-check-input" id="darkSwitch" checked>
						<label class="custom-control-label" for="darkSwitch"><i class="fal fa-sun"></i></label>
					{/if}
				</div>
			</div>
		</nav>
		<!-- Logo Header -->
		<div class="container">
			<div class="row">
				<!-- Logo -->
				<div class="col-lg-6 mt-2">
					<h1 class="mt-4">
						{if $module=='MainView'}
							<i class="fal fa-globe text-primary"></i> TurboSite
							{else}
							<a class="{if $smarty.cookies.mode == 'mode'}text-white{else}text-dark{/if} card-link text-decoration-none" href="{if $lang_link}{$lang_link}{else}/{/if}"><i class="fal fa-globe text-primary"></i> TurboSite</a>
						{/if}
					</h1>
				</div>
				<!-- Header Contacts -->
				<div class="col-lg-6 mt-2">
					<p class="text-end">{$lang->phone_number}<br>
						{$lang->contact_details}
					<div class="callback float-end">
						<a class="btn btn-primary btn-sm" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#CallbackModal" role="button"><i class="fal fa-phone-alt"></i> <span>{$lang->callback}</span></a>
					</div>
					</p>
				</div>
			</div>
		</div>
	</header>

	<!-- Page Content -->
	<main>
		<div class="container mb-5">
			{if $module=='MainView'}
				{* Slider *}
				{include file='slider.tpl'}
				<!-- Content -->
				{$content}
			{else}
			<div class="row">
				<!-- Sidebar -->
				{include file='sidebar.tpl'}
				<!-- /.col-lg-3 -->
				<div class="col-lg-9 order-lg-2 order-1">
					<!-- Sidebar Button -->
					<nav class="navbar navbar-expand-lg navbar-dark bg-primary d-lg-none mt-4 rounded">
						<div class="container-fluid">
							<a class="navbar-brand" href="#">{$lang->catalog}</a>
							<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#sidebar">
								<span class="navbar-toggler-icon"></span>
							</button>
						</div>
					</nav>
					{* Slider *}
					{include file='slider.tpl'}
					<!-- Content -->
					{$content}
				</div>
				<!-- /.col-lg-9 -->
			</div>
			<!-- /.row -->
			{/if}
		</div>
		<!-- /.container -->
	</main>
	<!-- /.main -->
	
	{if $module=='MainView'}
		<!-- Container -->
		<div class="container mt-5">
			{* Blog *}
			{get_posts var=last_posts limit=3}
			{if $last_posts}
				<header class="section-heading">
					<a href="{$lang_link}blog" class="btn btn-outline-primary float-end">{$lang->see_all}</a>
					<h2 class="section-title my-2">{$lang->index_blog}</h2>
				</header>
				<hr class="text-black-50">
				<div class="row">
					{foreach $last_posts as $post}
						<div class="col-md-6 col-lg-4 mb-5">
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
									<p class="card-text"><small class="text-muted">{$post->date|date}</small></p>
									<p class="card-text">{$post->annotation|strip_tags|truncate:150}</p>
								</div>
								<div class="card-footer">
									<a href="{$lang_link}blog/{$post->url}" class="btn btn-primary btn-sm">{$lang->more_details}</a>
								</div>
							</div>
						</div>
					{/foreach}
				</div>
			{/if}
			{* Articles *}
			{get_articles var=last_articles limit=3}
			{if $last_articles}
				<header class="section-heading">
					<a href="{$lang_link}articles" class="btn btn-outline-primary float-end">{$lang->see_all}</a>
					<h2 class="section-title my-2">{$lang->index_articles}</h2>
				</header>
				<hr class="text-black-50">
				<div class="row">
					{foreach $last_articles as $article}
						<div class="col-md-6 col-lg-4 mb-5">
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
									<p class="card-text"><small class="text-muted">{$article->date|date}</small></p>
									<p class="card-text">{$article->annotation|strip_tags|truncate:150}</p>
								</div>
								<div class="card-footer">
									<a href="{$lang_link}article/{$article->url}" class="btn btn-primary btn-sm">{$lang->more_details}</a>
								</div>
							</div>
						</div>
					{/foreach}
				</div>
			{/if}
			<div class="mb-5">
				{* Page title *}
				<h1>{$page->name}</h1>
				{* Page body *}
				{$page->body}
			</div>
		</div>
	{/if}

	<!-- Subscribe -->
	<div class="container-fluid bg-dark mt-4">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<form class="form-group my-5" id="FormValidation" method="post" novalidate>
					{if $subscribe_error}
						<label class="error text-danger">
							{if $subscribe_error == 'email_exist'}
								{$lang->you_are_already_subscribed}
							{/if}
							{if $subscribe_error == 'empty_email'}
								{$lang->enter_your_email}
							{/if}
						</label>
					{/if}
					{if $subscribe_success}
						<label class="success text-success">
							{$lang->you_have_been_successfully_subscribed}
						</label>
					{/if}
					<div class="input-group mb-2">
						<input type="email" class="form-control {if $subscribe_error}border-danger{/if} {if $subscribe_success}border-success{/if}" name="subscribe_email" value="" placeholder="{$lang->enter_your_email}" size="20" required>
						<button type="submit" class="btn btn-primary" name="subscribe" id="btnValidation" value="{$lang->subscribe_to}"><i class="fa fa-envelope"></i></button>
					</div>
				</form>
			</div>
			<hr class="text-black-50">
		</div>
	</div>

	<!-- Footer -->
	<footer itemscope itemtype="https://schema.org/WPFooter" class="page-footer font-small bg-dark text-white">
		<div class="container text-center text-md-start">
			<div class="row text-center text-md-start">
				<!-- Footer Description -->
				<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
					<h6 class="text-uppercase mb-4 font-weight-bold">{$settings->company_name|escape}</h6>
					<p>{$lang->main_description}</p>
				</div>
				<hr class="text-black-50 w-100 clearfix d-md-none">
				<!-- Footer Links -->
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
					<h6 class="text-uppercase mb-4 font-weight-bold">{$lang->about_company}</h6>
					{foreach $pages as $p}
						{if $p->menu_id == 1}
							<p {if $page && $page->id == $p->id}class="selected" {/if}>
								<a data-page="{$p->id}" class="text-decoration-none" href="{$lang_link}{$p->url}">{$p->header|escape}</a>
							</p>
						{/if}
					{/foreach}
				</div>
				<hr class="text-black-50 w-100 clearfix d-md-none">
				<!-- Footer Links -->
				<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3">
					<h6 class="text-uppercase mb-4 font-weight-bold">{$lang->information}</h6>
					{foreach $pages as $p}
						{if $p->menu_id == 3}
							<p {if $page && $page->id == $p->id}class="selected" {/if}>
								<a data-page="{$p->id}" class="text-decoration-none" href="{$lang_link}{$p->url}">{$p->header|escape}</a>
							</p>
						{/if}
					{/foreach}
				</div>
				<hr class="text-black-50 w-100 clearfix d-md-none">
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
					<!-- Footer Contacts -->
					<h6 class="text-uppercase mb-4 font-weight-bold">{$lang->contacts}</h6>
					<p><i class="fal fa-map-marker-alt text-white-50 me-2"></i>{$lang->contact_details}</p>
					<p><i class="fal fa-envelope text-white-50 me-2"></i> info@gmail.com</p>
					<p><i class="fal fa-phone-alt text-white-50 me-2"></i> (123) 456-78-90</p>
					<p><i class="fal fa-print text-white-50 me-2"></i> (987) 654-32-10</p>
				</div>
			</div>
			<hr class="text-black-50">
			<div class="row d-flex align-items-center">
				<div class="col-md-4 col-lg-4">
					<!-- Copyright -->
					<p class="text-center text-md-start text-white-50">© <span itemprop="copyrightYear">{$smarty.now|date_format:"Y"}</span>
						<strong>Turbo CMS</strong>
					</p>
				</div>
				<!-- Made -->
				<div class="col-md-4 col-lg-4">
					<p class="text-center text-md-center text-white-50"><i class="flag-icon flag-icon-ua"></i>
						<strong>Made in Ukraine</strong>
					</p>
				</div>
				<div class="col-md-4 col-lg-4 ml-lg-0">
					<!-- Social Buttons -->
					<div class="text-center text-md-end">
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
							<li class="list-inline-item">
								<a href="{$lang_link}sitemap" class="btn-floating btn-sm rgba-white-slight mx-1">
									<i class="fa fa-sitemap"></i>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</footer>

	<!-- Back to Top -->
	<a href="#" id="back-to-top" title="Back to top"><i class="fal fa-angle-double-up"></i></a>

	<!-- Callback Modal -->
	<div class="modal fade fade bd-example-modal-sm" id="CallbackModal" tabindex="-1" role="dialog" aria-labelledby="CallbackModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="CallbackModalLabel">{$lang->request_a_call}</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
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
						<p class="modal-caption">{$lang->leave_your_phone_number}</p>
						<div class="input-group mb-3">
							<div class="input-group-text"><i class="fal fa-user"></i></div>
							<input type="text" class="form-control" name="name" value="{if $callname}{$callname|escape}{else}{$user->name|escape}{/if}" placeholder="{$lang->name}" required>
						</div>
						<div class="input-group mb-3">
							<div class="input-group-text"><i class="fal fa-phone-alt"></i></div>
							<input type="text" class="form-control" name="phone" id="call-mask" value="{if $callphone}{$callphone|escape}{else}{$user->phone|escape}{/if}" placeholder="{$lang->phone}" maxlength="255" required>
						</div>
						{if $settings->captcha_callback}
							<div class="row">
								<div class="form-group col-sm-6 pb-3">
									{get_captcha var="captcha_callback"}
									<div class="secret-number">{$captcha_callback[0]|escape} + ? = {$captcha_callback[1]|escape}</div>
								</div>
								<div class="form-group col-sm-6">
									<input type="text" class="form-control" name="captcha_code" value="" placeholder="{$lang->captcha}" autocomplete="off" required>
								</div>
							</div>
						{/if}
					</div>
					<div class="modal-footer">
						<input type="submit" class="btn btn-primary mx-auto" name="callback" value="{$lang->send}">
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Subscribe Modal -->
	<div class="position-fixed top-0 start-50 translate-middle-x p-3 mt-5" style="z-index: 1060">
		<div id="Subscribe" class="toast fade hide align-items-center text-white {if $subscribe_error}bg-danger{/if}{if $subscribe_success}bg-success{/if} border-0" role="alert" aria-live="assertive" aria-atomic="true">
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
				<button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
		</div>
	</div>

	<!-- Toast rate danger -->
	<div class="position-fixed top-0 start-50 translate-middle-x p-3 mt-5" style="z-index: 1060">
		<div id="rate-danger" class="toast fade hide align-items-center text-white bg-danger border-0" role="alert" aria-live="assertive" aria-atomic="true">
			<div class="d-flex">
				<div class="toast-body">
					{$lang->already_voted}
				</div>
				<button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
		</div>
	</div>

	<!-- Toast rate success -->
	<div class="position-fixed top-0 start-50 translate-middle-x p-3 mt-5" style="z-index: 1060">
		<div id="rate" class="toast fade hide align-items-center text-white bg-success border-0" role="alert" aria-live="assertive" aria-atomic="true">
			<div class="d-flex">
				<div class="toast-body">
					{$lang->vote_counted}
				</div>
				<button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
			</div>
		</div>
	</div>

	{* Javascripts *}
	{js id="main" priority=99 include=[
	"design/{$settings->theme|escape}/js/jquery.min.js",
	"design/{$settings->theme|escape}/js/bootstrap.bundle.min.js",
	"design/{$settings->theme|escape}/js/jquery.maskedinput.min.js",
	"design/{$settings->theme|escape}/js/jquery.fancybox.min.js",
	"design/{$settings->theme|escape}/js/jquery-ui.min.js",
	"design/{$settings->theme|escape}/js/main.js"
	]}{/js}
	{javascript minify=true}

	{* Reviews *}
	{if $module == 'CommentsView'}
		{js id="reviews" priority=99 include=[
		"design/{$settings->theme|escape}/js/rating.js"
		]}{/js}
		{javascript minify=true}
	{/if}

	{* Blog & Articles *}
	{if $module == 'BlogView' && $post || $module=='ArticlesView' && $post}
		{css id="post" include=[
		"design/{$settings->theme|escape}/css/post.css"
		]}{/css}
		{stylesheet minify=true}

		{js id="post" priority=99 include=[
		"design/{$settings->theme|escape}/js/post.js",
		"design/{$settings->theme|escape}/js/jquery.toc.js"
		]}{/js}
		{javascript minify=true}
	{/if}
	
	{* Description *}
	{if $module == 'BlogView' && $post || $module=='ArticlesView' && $post || $module=='ProjectsView' && $project || $module=='PageView'}
		{css id="description" include=[
		"design/{$settings->theme|escape}/css/owl.carousel.css"
		]}{/css}
		{stylesheet minify=true}

		{js id="description" priority=99 include=[
		"design/{$settings->theme|escape}/js/block.description.js",
		"design/{$settings->theme|escape}/js/owl.carousel.min.js"
		]}{/js}
		{javascript minify=true}
	{/if}
	
	{if $call_sent}
		<script>
			$(window).on("load", function() {
				$('#CallbackModal').modal('show');
			});
		</script>
	{/if}
	{if $call_error}
		<script>
			$(window).on("load", function() {
				$('#CallbackModal').modal('show');
			});
		</script>
	{/if}
	{if $subscribe_success || $subscribe_error}
		<script>
			$(window).on("load", function() {
				$('#Subscribe').toast('show');
			});
		</script>
	{/if}
	{if $fastorder_error}
		<script>
			$(window).on("load", function() {
				$('#FastOrder').modal('show');
			});
		</script>
	{/if}

	{* Online Chat *}
	{if $settings->chat_viber || $settings->chat_whats_app || $settings->chat_telegram || $settings->chat_facebook}
		{css id="chat" include=[
		"design/{$settings->theme|escape}/css/online-chat.css"
		]}{/css}
		{stylesheet minify=true}

		{js id="chat" priority=99 include=[
		"design/{$settings->theme|escape}/js/online-chat.js"
		]}{/js}
		{javascript minify=true}

		{include file="online_chat.tpl"}
	{/if}

	{* Admintooltip *}
	{if $smarty.session.admin == 'admin'}
		{$admintooltip}
	{/if}

	{* Custom Scripts *}
	{if $counters['body_bottom']}
		{foreach $counters['body_bottom'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}
</body>

</html>