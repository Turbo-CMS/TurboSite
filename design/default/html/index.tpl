<!DOCTYPE html>
{* General Page *}
<html class="h-100" {if isset($language->label)}lang="{if $language->label == "ua"}uk{else}{$language->label|escape}{/if}"{/if} {if isset($smarty.cookies.mode) && $smarty.cookies.mode == 'mode'}data-bs-theme="dark" {/if} {if $module == 'FAQView'}itemscope itemtype="https://schema.org/FAQPage" {/if}>

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
		<meta name="keywords" content="{($meta_keywords|default:$auto_meta->keywords)|escape}">
	{else}
		<meta name="description" content="{($auto_meta->description|default:$meta_description)|escape}">
		<meta name="keywords" content="{($auto_meta->keywords|default:$meta_keywords)|escape}">
	{/if}

	<meta name="author" content="Turbo CMS">
	<meta name="generator" content="Turbo CMS">

	{if $project}
		<meta property="og:url" content="{$config->root_url}{if $lang_link}/{$lang_link|replace:'/':''}{/if}{$canonical}">
		<meta property="og:type" content="website">
		<meta property="og:title" content="{$project->name|escape}">
		<meta property="og:description" content='{$project->annotation|strip_tags|escape}'>
		<meta property="og:image" content="{if isset($project->image)}{$project->image->filename|resize:330:300}{/if}">
		<link rel="image_src" href="{if isset($project->image)}{$project->image->filename|resize:330:300}{/if}">
		{* Twitter *}
		<meta name="twitter:card" content="project">
		<meta name="twitter:url" content="{$config->root_url}{$canonical}">
		<meta name="twitter:site" content="{$settings->site_name|escape}">
		<meta name="twitter:title" content="{$project->name|escape}">
		<meta name="twitter:description" content="{$project->annotation|strip_tags|escape}">
		<meta name="twitter:image" content="{if isset($project->image)}{$project->image->filename|resize:330:300}{/if}">
		<meta name="twitter:label2" content="{$settings->site_name|escape}">
	{elseif $module == 'BlogView' && isset($post)}
		<meta property="og:url" content="{$config->root_url}{if $lang_link}/{$lang_link|replace:'/':''}{/if}{$canonical}">
		<meta property="og:type" content="article">
		<meta property="og:title" content="{$post->name|escape}">
		{if $post->image}
			<meta property="og:image" content="{if isset($post->image)}{$post->image|resize_posts:400:300}{/if}">
			<link rel="image_src" href="{if isset($post->image)}{$post->image|resize_posts:400:300}{/if}">
		{else}
			<meta property="og:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
			<meta name="twitter:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
		{/if}
		<meta property="og:description" content='{$post->annotation|strip_tags|escape}'>
		{* Twitter *}
		<meta name="twitter:card" content="summary">
		<meta name="twitter:title" content="{$post->name|escape}">
		<meta name="twitter:description" content="{$post->annotation|strip_tags|escape}">
		<meta name="twitter:image" content="{if isset($post->image)}{$post->image|resize_posts:400:300}{{/if}}">
	{elseif $module=='ArticlesView' && isset($post)}
		<meta property="og:url" content="{$config->root_url}{if $lang_link}/{$lang_link|replace:'/':''}{/if}{$canonical}">
		<meta property="og:type" content="article">
		<meta property="og:title" content="{$post->name|escape}">
		{if $post->image}
			<meta property="og:image" content="{if isset($post->image)}{$post->image|resize_articles:400:300}{{/if}}">
			<link rel="image_src" href="{if isset($post->image)}{$post->image|resize_articles:400:300}{/if}">
		{else}
			<meta property="og:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
			<meta name="twitter:image" content="{$config->root_url}/design/{$settings->theme|escape}/images/logo.png">
		{/if}
		<meta property="og:description" content='{$post->annotation|strip_tags|escape}'>
		{* Twitter *}
		<meta name="twitter:card" content="summary">
		<meta name="twitter:title" content="{$post->name|escape}">
		<meta name="twitter:description" content="{$post->annotation|strip_tags|escape}">
		<meta name="twitter:image" content="{if isset($post->image)}{$post->image|resize_articles:400:300}{/if}">
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

	{if $smarty.get.module == "RegisterView" || $smarty.get.module == "LoginView" || $smarty.get.module == "UserView"}
		<meta name="robots" content="noindex,follow">
	{elseif $smarty.get.module == "BlogView" && isset($smarty.get.sort) || isset($smarty.get.keyword)}
		<meta name="robots" content="noindex,follow">
	{elseif $smarty.get.module == "ArticlesView" && isset($smarty.get.sort) || isset($smarty.get.keyword) || isset($smarty.get.author)}
		<meta name="robots" content="noindex,follow">
	{elseif $smarty.get.module == "ProjectsView" && isset($smarty.get.sort) || isset($smarty.get.keyword)}
		<meta name="robots" content="noindex,follow">
	{else}
		<meta name="robots" content="index,follow">
	{/if}

	{* Canonical *}
	{if isset($canonical)}
		<link rel="canonical" href="{$config->root_url}{if $lang_link}/{$lang_link|replace:'/':''}{/if}{$canonical}">
	{/if}

	{* Language Attribute *}
	{foreach $languages as $lang}
		{if $lang->enabled}
			<link rel="alternate" hreflang="{if $lang@first}x-default{else}{$lang->label}{/if}" href="{$config->root_url}{if !$lang@first}/{/if}{$lang->url|replace:'/':''}">
		{/if}
	{/foreach}

	{* CSS *}
	{css id="main" include=[
		"design/{$settings->theme|escape}/css/bootstrap.min.css",
		"design/{$settings->theme|escape}/css/style.css",
		"design/{$settings->theme|escape}/css/fontawesome-all.min.css",
		"design/{$settings->theme|escape}/css/flag-icon.min.css",
		"design/{$settings->theme|escape}/css/jquery.fancybox.min.css",
		"design/{$settings->theme|escape}/css/projects.css"
	]}{/css}
	{stylesheet minify=true}

	{if $project}
		{css id="project" include=["design/{$settings->theme|escape}/css/project.css"]}{/css}
		{stylesheet minify=true}
	{/if}

	{* Color Theme *}
	{if isset($smarty.cookies.mode) && $smarty.cookies.mode == 'mode'}
		{css id="styles" include=["design/{$settings->theme|escape}/css/style-dark.css"]}{/css}
		{stylesheet minify=true}
	{else}
		{css id="styles" include=["design/{$settings->theme|escape}/css/style-light.css"]}{/css}
		{stylesheet minify=true}
	{/if}

	{* Favicon *}
	<link rel="icon" type="image/x-icon" href="design/{$settings->theme|escape}/images/favicon.ico">
	<link rel="shortcut icon" type="image/x-icon" href="design/{$settings->theme|escape}/images/favicon.ico">
	<link rel="apple-touch-icon" sizes="180x180" href="design/{$settings->theme|escape}/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="design/{$settings->theme|escape}/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="design/{$settings->theme|escape}/images/favicon-16x16.png">
	<link rel="manifest" href="design/{$settings->theme|escape}/images/site.webmanifest">
	<link rel="mask-icon" color="#198754" href="design/{$settings->theme|escape}/images/safari-pinned-tab.svg">

	{* jQuery & Bootstrap *}
	{js id="main" priority=99 include=[
		"design/{$settings->theme|escape}/js/jquery.min.js",
		"design/{$settings->theme|escape}/js/bootstrap.bundle.min.js"
	]}{/js}
	{javascript minify=true}

	{* Custom Scripts Head *}
	{if isset($counters['head'])}
		{foreach $counters['head'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}
</head>

<body class="d-flex flex-column h-100" itemscope itemtype="https://schema.org/WebPage">

	{* Custom Scripts Body *}
	{if isset($counters['body_top'])}
		{foreach $counters['body_top'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}

	{* Quickview Modal *}
	<div id="quickview-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-xl">
			<div class="modal-content"></div>
		</div>
	</div>

	{* Login Modal *}
	{include file='modals/login.tpl'}

	{* Header *}
	<header>
		{if $theme_settings->header_type == '1'}
			{include file='header/header_1.tpl'}
		{elseif $theme_settings->header_type == '2'}
			{include file='header/header_2.tpl'}
		{/if}
	</header>

	{* Page Content *}
	<main>
		<div class="container">
			<div class="row">
				{* Sidebar *}
				{if $module!='MainView'}
					{include file='sidebars/sidebar.tpl'}
				{/if}
				<div class="{if $module == 'MainView'}col-lg-12{else}col-lg-9{/if} order-lg-2 order-1">
					{* Slider *}
					{include file='banners/slider.tpl'}
					{* Content *}
					{$content}
				</div>
			</div>
		</div>
	</main>

	{* Main News *}
	{if $module=='MainView'}
		{include file="main/main_news.tpl"}
	{/if}

	<div class="my-3"></div>

	{* Footer *}
	{if $theme_settings->footer_type == '1'}
		{include file='footer/footer_1.tpl'}
	{elseif $theme_settings->footer_type == '2'}
		{include file='footer/footer_2.tpl'}
	{/if}

	{* Toolbar mobile *}
	{if $module != 'MainView'}
		<nav class="handheld-toolbar fixed-bottom bg-body-tertiary d-block d-lg-none shadow-top">
			<div class="container-fluid text-center">
				<div class="row align-items-start pt-2 pb-1">
					<div class="col border-end">
						<button type="button" class="btn btn-link" data-bs-toggle="offcanvas" href="#sidebar" role="button" aria-controls="sidebar">
							<i class="fal fa-bars text-muted fs-4"></i>
						</button>
					</div>
				</div>
			</div>
		</nav>
	{/if}

	{* Back to Top *}
	<a href="#" id="back-to-top" title="Back to top"><i class="fal fa-angle-double-up"></i></a>

	{* Callback Modal *}
	{include file='modals/callback.tpl'}

	{* Toast Callback *}
	{include file='modals/toast_callback.tpl'}

	{* Subscribe Modal *}
	{include file='modals/subscribe.tpl'}

	{* Toast Rate *}
	{include file='modals/toast_rate.tpl'}

	{* JS *}
	{js id="main" priority=99 include=[
		"design/{$settings->theme|escape}/js/jquery.maskedinput.min.js",
		"design/{$settings->theme|escape}/js/jquery.autocomplete-min.js",
		"design/{$settings->theme|escape}/js/jquery.fancybox.min.js",
		"design/{$settings->theme|escape}/js/jquery-ui.min.js",
		"design/{$settings->theme|escape}/js/main.js"
	]}{/js}
	{javascript minify=true}

	{* Search *}
	{js id="search" priority=99 include=["design/{$settings->theme|escape}/js/search.js"]}{/js}
	{javascript minify=true}

	{* Reviews Rating *}
	{if $module == 'ReviewsView'}
		{js id="rating" priority=99 include=["design/{$settings->theme|escape}/js/rating.js"]}{/js}
		{javascript minify=true}
	{/if}

	{* Blog & Articles *}
	{if $module == 'BlogView' && isset($post) || $module=='ArticlesView' && isset($post)}
		{if isset($smarty.cookies.mode) && $smarty.cookies.mode == 'mode'}
			{css id="prism" include=["design/{$settings->theme|escape}/css/prism-dark.css"]}{/css}
			{stylesheet minify=true}
		{else}
			{css id="prism" include=["design/{$settings->theme|escape}/css/prism.css"]}{/css}
			{stylesheet minify=true}
		{/if}

		{js id="prism" priority=99 include=["design/{$settings->theme|escape}/js/prism.js"]}{/js}
		{javascript minify=false}

		{css id="post" include=["design/{$settings->theme|escape}/css/post.css"]}{/css}
		{stylesheet minify=true}

		{js id="post" priority=99 include=[
			"design/{$settings->theme|escape}/js/post.js",
			"design/{$settings->theme|escape}/js/jquery.toc.js"
		]}{/js}
		{javascript minify=true}
	{/if}

	{* Description *}
	{if $module == 'BlogView' && isset($post) || $module=='ArticlesView' && isset($post) || $module=='PageView' || $module=='ProjectView'}
		{css id="description" include=["design/{$settings->theme|escape}/css/owl.carousel.css"]}{/css}
		{stylesheet minify=true}

		{js id="description" priority=99 include=[
			"design/{$settings->theme|escape}/js/block.description.js",
			"design/{$settings->theme|escape}/js/owl.carousel.min.js"
		]}{/js}
		{javascript minify=true}
	{/if}

	{* Project *}
	{if $module=='ProjectsView'}
		{js id="project" priority=99 include=["design/{$settings->theme|escape}/js/project.js"]}{/js}
		{javascript minify=true}
	{/if}

	{* Toast Callback Success *}
	{if isset($call_sent)}
		<script>
			$(window).on("load", function() {
				$('#callbackToast').toast('show');
			});
		</script>
	{/if}

	{* Modal Callback Error *}
	{if isset($call_error)}
		<script>
			$(window).on("load", function() {
				$('#callbackModal').modal('show');
			});
		</script>
	{/if}

	{* Toast Subscribe *}
	{if isset($subscribe_success) || isset($subscribe_error)}
		<script>
			$(window).on("load", function() {
				$('#subscribe').toast('show');
			});
		</script>
	{/if}

	{* Tooltip Init *}
	<script>
		$(function() {
			$('[data-bs-toggle="tooltip"]').tooltip();
		});
	</script>
	
	{* Phone Mask *}
	<script>
		$(function () {
		$('#call-mask').mask('{$theme_settings->phone_mask|escape}');
		$('#cart-phone').mask('{$theme_settings->phone_mask|escape}');
		$('#fastorder-mask').mask('{$theme_settings->phone_mask|escape}');
		$('#phone').mask('{$theme_settings->phone_mask|escape}');
	});
	</script>

	{* Online Chat *}
	{if $settings->chat_viber || $settings->chat_whats_app || $settings->chat_telegram || $settings->chat_facebook}
		{css id="chat" include=["design/{$settings->theme|escape}/css/online-chat.css"]}{/css}
		{stylesheet minify=true}

		{js id="chat" priority=99 include=["design/{$settings->theme|escape}/js/online-chat.js"]}{/js}
		{javascript minify=true}

		{include file='service/online_chat.tpl'}
	{/if}

	{* Admintooltip *}
	{if isset($smarty.session.admin) && $smarty.session.admin == 'admin'}
		{$admintooltip}
	{/if}

	{* Custom Scripts Body Bottom *}
	{if isset($counters['body_bottom'])}
		{foreach $counters['body_bottom'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}
</body>

</html>