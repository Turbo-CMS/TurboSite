{* Header Fixed *}
<div id="headerfixed">
	<div class="header header--fixed-1 header--narrow">
		<div class="header__inner header__inner--shadow-fixed {if !$theme_settings->content_width}header__inner--paddings{/if}">
			<div class="header__main-part">
				{if $theme_settings->content_width}<div class="maxwidth-theme">{/if}
					<div class="header__main-inner relative">
						<div class="header__main-item">
							<div class="line-block line-block--40">
								<div class="logo line-block__item no-shrinked">
									<a class="menu-light-icon-fill banner-light-icon-fill" href="{if $lang_link}{$lang_link}{else}/{/if}">
										{include file='components/logo.tpl'}
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
	</div>
</div>