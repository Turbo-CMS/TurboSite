{get_banner var=bottom_banners group=$theme_settings->bottom_banners_id}
{if isset($bottom_banners->items)}
	{foreach $bottom_banners->items as $b}
		<div class="drag-block container BOTTOM_BANNERS" data-class="bottom_banners_drag" data-order="{$theme_settings->block_8}">
			<div class="index-block index-block--padding-top-{$theme_settings->bottom_banners_padding_top} index-block--padding-bottom-{$theme_settings->bottom_banners_padding_bottom} {if $theme_settings->bottom_banners_delimiter}index-block--delimiter{/if} {if $theme_settings->bottom_banners_background}index-block--fon{/if}">
				<div class="banners-img-list banners-only-img-template">
					{if !$theme_settings->bottom_banners_wide}<div class="maxwidth-theme">{elseif $theme_settings->bottom_banners_indented}<div class="maxwidth-theme maxwidth-theme--no-maxwidth">{/if}
						<div class="grid-list grid-list--items-1">
							<div class="banners-img-list__wrapper grid-list__item">
								<div class="{if $theme_settings->bottom_banners_text}banners-img-with-text-list__item{/if} banners-img-list__item">
									<a href="{$lang_link}{$b->url|escape}" class="banners-img-list__item-link hover_blink" title="{$b->title|escape}">
										<span class="lazyload banners-img-list__item-image shine rounded-x" style="background-image:url(data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==)" data-bg="{$b->image|resize_banners:1919:180}"></span>
									</a>
									{if $theme_settings->bottom_banners_text}
										<div class="banners-img-with-text-list__item-text banners-img-with-text-list__item-text--absolute banners-img-with-text-list__item-text--centered">
											<div class="banners-img-with-text-list__item-top-text font_13">{$b->description|escape}</div>
											<div class="banners-img-with-text-list__item-title switcher-title font_24">
												<a href="{$lang_link}{$b->url|escape}" class="dark_link color-theme-target" title="{$b->title|escape}">
													{$b->name|escape}
												</a>
											</div>
											<a class="banners-img-with-text-list__item-link item-link-absolute" href="{$lang_link}{$b->url|escape}"></a>
										</div>
									{/if}
								</div>
							</div>
						</div>
					{if !$theme_settings->bottom_banners_wide}</div>{/if}
				</div>
			</div>
		</div>
	{/foreach}
{/if}