<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" {if $language && $language->label}xml:lang="{if $language->label == "ua"}uk{else}{$language->label|escape}{/if}" lang="{if $language->label == "ua"}uk{else}{$language->label|escape}{/if}"{/if} {if $theme_settings->theme_color == 'theme_light'}data-theme="light"{elseif $theme_settings->theme_color == 'theme_dark'}data-theme="dark"{else}{if isset($smarty.cookies.mode) && $smarty.cookies.mode == 'dark'}data-theme="dark"{elseif isset($smarty.cookies.mode) && $smarty.cookies.mode == 'light'}data-theme="light"{else}data-theme="default"{/if}{/if}>

<head>
	{* Meta *}
	{include file='head/meta.tpl'}
	
	{* CSS *}
	{include file='head/css.tpl'}
	
	{* JS *}
	{include file='head/js.tpl'}
</head>

<body class="{if $module == 'MainView' && $theme_settings->big_banners_type == '1' && $theme_settings->visible_1}header_opacity{/if} side_left hide_menu_page {if $module == 'MainView'}front_page{/if} {if $module == 'BlogView' || $module == 'ArticlesView'}side_right{/if} {if $module == 'CartView' || $module == 'OrderView'}simple_basket_mode{/if} header_fill_ fixed_y mfixed_y mfixed_view_always title_position_left mmenu_leftside mheader-v1 footer-v1 fill_bg_ header-v3 title-v1 bottom-icons-panel_y with_order with_cabinet with_phones {if $theme_settings->theme_color == 'theme_light'}theme-light{elseif $theme_settings->theme_color == 'theme_dark'}theme-dark{else}{if isset($smarty.cookies.mode) && $smarty.cookies.mode == 'dark'}theme-dark{elseif isset($smarty.cookies.mode) && $smarty.cookies.mode == 'light'}theme-light{else}theme-default{/if}{/if}" id="main">
	{* Custom Scripts *}
	{if $counters['body_top']}
		{foreach $counters['body_top'] as $counter}
			{$counter->code}
		{/foreach}
	{/if}

	{* Modals *}
	<div id="popup_iframe_wrapper"></div>

	{* Header Fixed *}
	<div id="panel"></div>

	{* Set Theme *}
	{include file='includes/set_theme.tpl'}

	<div class="body {if $module == 'MainView'}index{/if} hover_">
		{* Body Media *}
		<div class="body_media"></div>

		{* Headers *}
		<div class="headers-container">
			{* Header *}
			{include file='header/header.tpl'}

			{* Header Fixed *}
			{include file='header/header_fixed.tpl'}

			{* Mobile Header *}
			{include file='header/header_mobile.tpl'}
		</div>

		{* Mobile Filter *}
		<div id="mobilefilter" class="scrollbar-filter"></div>

		{* Content *}
		<div role="main" class="main banner-auto">
			{$content}
		</div>
	</div>

	{* Footer *}
	{include file='footer/footer.tpl'}

	{* Bottom Icons Panel *}
	{include file='footer/bottom_icons_panel.tpl'}

	{* Core *}
	{js id="script" priority=99 include=["design/{$settings->theme|escape}/js/core.js"]}{/js}
	{javascript minify=true}

	{* Turbo Message *}
	{include file='scripts/turbo_message.tpl'}

	{* JS *}
	{include file='scripts/js.tpl'}
</body>

</html>