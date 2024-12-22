<!DOCTYPE html>
{* General Page *}
<html class="h-100" {if $language && $language->label}lang="{if $language->label == "ua"}uk{else}{$language->label|escape}{/if}"{/if} {if isset($smarty.cookies.mode) && $smarty.cookies.mode == 'mode'}data-bs-theme="dark"{/if} {if $module == 'FAQView'}itemscope itemtype="https://schema.org/FAQPage"{/if}>

<head>
	{* Meta *}
	{include file='head/meta.tpl'}

	{* CSS *}
	{include file='head/css.tpl'}

	{* JS *}
	{include file='head/js.tpl'}
</head>

<body class="d-flex flex-column h-100" itemscope itemtype="https://schema.org/WebPage">

	{* Custom Scripts Body *}
	{if $counters['body_top']}
		{foreach $counters['body_top'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}

	{* Login Modal *}
	{if $theme_settings->header_type == '2'}
		{include file='modals/login.tpl'}
	{/if}

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
		<div class="container-xxl">
			<div class="row">
				{* Sidebar *}
				{if $module!='MainView'}
					{include file='sidebars/sidebar.tpl'}
				{/if}
				<div class="{if $module == 'MainView'}col-lg-12{else}col-lg-9{/if} order-lg-2 order-1">
					{* Slider *}
					{include file='banners/slider.tpl'}
					
					{* Breadcrumb *}
					{include file='includes/breadcrumbs.tpl'}

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

	{* Toolbar Mobile *}
	{include file='footer/toolbar_mobile.tpl'}

	{* Back to Top *}
	<a href="#" id="back-to-top" title="Back to top"><i class="fal fa-angle-double-up"></i></a>

	{* Callback Modal *}
	{include file='modals/callback.tpl'}

	{* Toast Callback *}
	{include file='toast/toast_callback.tpl'}

	{* Toast Subscribe *}
	{include file='toast/toast_subscribe.tpl'}

	{* Toast Rate *}
	{include file='toast/toast_rate.tpl'}

	{* JS *}
	{include file='scripts/js.tpl'}
</body>

</html>