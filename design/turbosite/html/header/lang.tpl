{* Langs *}
<div class="catalog_icons_">
	<div class="header-menu__wrapper">
		{if $languages|count > 1}
			<div class="header-menu__item unvisible header-menu__item--first header-menu__item--dropdown">
				<div class="header-menu__link header-menu__link--top-level light-opacity-hover fill-theme-hover banner-light-text dark_link cursor-pointer">
					<i class="dropdown-select__icon-left flag-icon flag-icon-{$language->label}"></i>
					<span class="header-menu__title font_14">
						{$language->label|upper|escape}
					</span>
					<i class="svg inline header-menu__wide-submenu-right-arrow fill-dark-light-block banner-light-icon-fill" aria-hidden="true">
						<svg width="7" height="5">
							<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#down-7-5"></use>
						</svg>
					</i>
				</div>
				<div class="header-menu__dropdown-menu dropdown-menu-wrapper dropdown-menu-wrapper--visible dropdown-menu-wrapper--woffset">
					<div class="dropdown-menu-inner rounded-x">
						<ul class="header-menu__dropdown-menu-inner">
							{foreach $languages as $l}
								{if $l->enabled}
									<li class="header-menu__dropdown-item header-menu__dropdown-item--with-dropdown {if $language->id == $l->id}active{/if}">
										<a class="font_15 {if $language->id == $l->id}dropdown-menu-item--current{/if} dropdown-menu-item dark_link fill-dark-light-block" href="{$l->url}">
											<i class="dropdown-select__icon-left flag-icon flag-icon-{$l->label}"></i>{$l->name|escape}
										</a>
									</li>
								{/if}
							{/foreach}
						</ul>
					</div>
				</div>
			</div>
		{/if}
	</div>
</div>