{* Home Page *}

{$wrapper = 'index.tpl' scope=global}

{* Canonical *}
{$canonical="" scope=global}

<div class="container">
	{* Big Banner *}
	{if $theme_settings->visible_1}
		{include file='banners/big_banners.tpl'}
	{/if}

	{* Banners Text *}
	{if $theme_settings->visible_2}
		{include file='main/projects.tpl'}
	{/if}

	{* Banners Text *}
	{if $theme_settings->visible_3}
		{include file='main/banners_text.tpl'}
	{/if}

	{* Teasers *}
	{if $theme_settings->visible_4}
		{include file='main/teasers.tpl'}
	{/if}

	{* Company Text *}
	{if $theme_settings->visible_5}
		{include file='main/company_text.tpl'}
	{/if}

	{* Articles *}
	{if $theme_settings->visible_6}
		{include file='main/articles.tpl'}
	{/if}

	{* Blog *}
	{if $theme_settings->visible_7}
		{include file='main/blog.tpl'}
	{/if}

	{* Bottom Banners *}
	{if $theme_settings->visible_8}
		{include file='main/bottom_banners.tpl'}
	{/if}

</div>