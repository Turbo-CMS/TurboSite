{* Header Type 1 *}
{if $theme_settings->header_type == '1'}
	<div class="title-v1 index" data-ajax-block="HEADER">
		<header class="header_1 header header--with_regions header--narrow">
			<div class="header__inner {if !$theme_settings->header_padding_top}header__inner--no-pt{/if} {if !$theme_settings->content_width}header__inner--paddings{/if}">
				<div class="header__top-part header__top-part--longer part-with-search">
					{if $theme_settings->content_width}<div class="maxwidth-theme">{/if}
						<div class="header__top-inner part-with-search__inner">
							<div class="header__top-item">
								<div class="line-block line-block--40">
									<div class="logo line-block__item no-shrinked">
										<a class="menu-light-icon-fill banner-light-icon-fill" href="{if $lang_link}{$lang_link}{else}/{/if}">
											{* Logo *}
											{include file='includes/logo.tpl'}
										</a>
									</div>
								</div>
							</div>
							<div class="header__top-item header__search header__search--limited">
								{* Search *}
								{include file='header/search.tpl'}
							</div>
							<div class="header__top-item no-shrinked">
								{* Langs *}
								{include file='header/lang.tpl'}
							</div>
							<div class="header__top-item no-shrinked">
								{* Phones *}
								{include file='header/phones.tpl'}
							</div>
							{if $theme_settings->theme_color == 'theme_default'}
								<div class="header__top-item">
									{* Theme Selector *}
									{include file='header/theme_selector.tpl'}
								</div>
							{/if}
						</div>
					{if $theme_settings->content_width}</div>{/if}
				</div>
				<div class="header__main-part">
					{if $theme_settings->content_width}<div class="maxwidth-theme">{/if}
						<div class="header__main-inner relative">
							<div class="header__main-item header-menu header-menu--longer header__bottom-menu flex-1 hide-dotted dotted-complete">
								{* Menu *}
								{include file='header/menu.tpl'}
							</div>
							<div class="header__main-item hide-basket-message">
								<div class="line-block line-block--40">
									<div class="line-block__item">
										{* Cabinet *}
										{include file='header/cabinet.tpl'}
									</div>
								</div>
							</div>
						</div>
					{if $theme_settings->content_width}</div>{/if}
				</div>
			</div>
		</header>
		<script data-skip-moving="true">
			if (typeof topMenuAction !== 'undefined') topMenuAction()
		</script>
	</div>
{/if}

{* Header Type 2 *}
{if $theme_settings->header_type == '2'}
	<div class="title-v1 index" data-ajax-block="HEADER">
		<header class="header_2 header header--narrow">
			<div class="header__inner {if !$theme_settings->header_padding_top}header__inner--no-pt{/if} {if !$theme_settings->content_width}header__inner--paddings{/if}">
				<div class="header__top-part">
					{if $theme_settings->content_width}<div class="maxwidth-theme">{/if}
						<div class="header__top-inner">
							<div class="header__top-item header-menu header-menu--long dotted-flex-1 hide-dotted">
								{* Menu *}
								{include file='header/menu.tpl'}
							</div>
							<div class="header__top-item no-shrinked">
								{* Langs *}
								{include file='header/lang.tpl'}
							</div>
							<div class="header__top-item no-shrinked">
								{* Phones *}
								{include file='header/phones.tpl'}
							</div>
							{if $theme_settings->theme_color == 'theme_default'}
								<div class="header__top-item">
									{* Theme Selector *}
									{include file='header/theme_selector.tpl'}
								</div>
							{/if}
						</div>
					{if $theme_settings->content_width}</div>{/if}
				</div>
				<div class="header__main-part header__main-part--long part-with-search">
					{if $theme_settings->content_width}<div class="maxwidth-theme">{/if}
						<div class="header__main-inner relative part-with-search__inner">
							<div class="header__main-item">
								<div class="line-block line-block--40">
									<div class="logo line-block__item no-shrinked">
										<a class="menu-light-icon-fill banner-light-icon-fill" href="{if $lang_link}{$lang_link}{else}/{/if}">
											{* Logo *}
											{include file='includes/logo.tpl'}
										</a>
									</div>
								</div>
							</div>
							<div class="header__main-item flex-1 header__search">
								{* Search *}
								{include file='header/search.tpl'}
							</div>				
							<div class="header__main-item">
								<div class="line-block line-block--40">
									<div class="line-block__item">
										{* Cabinet *}
										{include file='header/cabinet.tpl'}
									</div>
								</div>
							</div>
						</div>
						{if $theme_settings->content_width}
					</div>{/if}
				</div>
			</div>
		</header>
		<script data-skip-moving="true">
			if (typeof topMenuAction !== 'undefined') topMenuAction()
		</script>
	</div>
{/if}