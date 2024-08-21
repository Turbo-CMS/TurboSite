{get_banner var=personal_banners group=$theme_settings->id_banner_account}
{if isset($personal_banners->items)}
	<div class="personal__main-block personal__main-block--banners">
		<div class="swiper slider-solution banners-slider outer-rounded-x hidden" data-plugin-options='{literal}{"preloadImages":false,"lazy":{"loadPrevNext":true},"init":false,"keyboard":{"enabled":true},"loop":false,"rewind":true,"pagination":{"enabled":true,"el":".swiper-pagination"},"slidesPerView":1}{/literal}'>
			<div class="swiper-wrapper">
				{foreach $personal_banners->items as $b}
					<div class="swiper-slide banners-slider__item">
						<a href="{$lang_link}catalog" target="_blank">
							<span class="banners-slider__image swiper-lazy" title="{$b->name}" data-background="{$b->image|resize_banners:1919:180}"></span>
						</a>
					</div>
				{/foreach}
			</div>
			<div class="slider-nav swiper-button-prev">
				<i class="svg inline stroke-dark-light" aria-hidden="true">
					<svg width="7" height="12">
						<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#left-7-12"></use>
					</svg>
				</i>
			</div>
			<div class="slider-nav swiper-button-next">
				<i class="svg inline stroke-dark-light" aria-hidden="true">
					<svg width="7" height="12">
						<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#right-7-12"></use>
					</svg>
				</i>
			</div>
			<div class="swiper-pagination"></div>
		</div>
	</div>
{/if}
<div class="personal__main-block personal__main-block--private">
	<div class="grid-list grid-list--fill-bg grid-list--personal">
		<div class="personal__main-private__wrapper grid-list__item grid-list-border-outer">
			<div class="personal__main-private bordered outer-rounded-x shadow-hovered shadow-hovered-f600 shadow-no-border-hovered color-theme-parent-all stroke-theme-parent-all">
				<a class="item-link-absolute" href="javascript:void(0)" onclick="document.cookie='user=private;path=/';document.location.reload();" title="{$lang->personal_data}"></a>
				<div class="personal__main-private__inner">
					<div class="personal__main-private__top">
						<span class="main-block__link main-block__link--big stroke-theme-hover stroke-theme-target">
							<span class="main-block__arrow">
								<i class="svg inline" aria-hidden="true">
									<svg width="7" height="12">
										<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/arrows.svg#right-7-12"></use>
									</svg>
								</i>
							</span>
						</span>
						<div class="personal__main-private__title font_clamp--16-14 color-theme-target">{$lang->personal_data}</div>
						<div class="personal__main-private__value">{$name|escape}</div>
					</div>
					<div class="personal__main-private__bottom font_clamp--16-14">
						<div class="personal__main-private__bottom-left">
							<div class="personal__main-private__email">{$email|escape}</div>
							{if $phone|escape}
								<div class="personal__main-private__phone">
									<span>{$phone|escape}</span>
								</div>
							{/if}
						</div>
						<a class="personal__main-private__change-password" href="javascript:void(0)" onclick="document.cookie='user=private;path=/';document.location.reload();">{$lang->change_password}</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="personal__main-block personal__main-block--links">
	<div class="grid-list grid-list--items-3-1200 grid-list--items-3-992 grid-list--items-3-768 grid-list--items-3-601 mobile-scrolled mobile-scrolled--items-2 mobile-offset">
		<div class="personal__main-link__wrapper grid-list__item">
			<div class="personal__main-link bordered outer-rounded-x shadow-hovered shadow-hovered-f600 shadow-no-border-hovered color-theme-parent-all">
				<a class="personal__main-link__link item-link-absolute" href="javascript:void(0)" data-event="jqm" data-param-type="subscribe" data-url="{$lang_link}blog?tpl=subscribe" data-name="subscribe"></a>
				<div class="personal__main-link__image">
					<i class="svg inline subscribe fill-theme svg-inline-more_icon" aria-hidden="true">
						<svg width="32" height="32">
							<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/main_links.svg#subscribe-32-32"></use>
						</svg>
					</i>
				</div>
				<div class="personal__main-link__text">
					<div class="personal__main-link__title switcher-title font_clamp--16-14 color-theme-target font_weight--500">{$lang->subscriptions}</div>
					<div class="personal__main-link__dsc switcher-title font_weight--400 font_13 color_999">{$lang->newsletters_products}</div>
				</div>
			</div>
		</div>
		<div class="personal__main-link__wrapper grid-list__item">
			<div class="personal__main-link bordered outer-rounded-x shadow-hovered shadow-hovered-f600 shadow-no-border-hovered color-theme-parent-all">
				<a class="personal__main-link__link item-link-absolute" href="javascript:void(0)" onclick="document.cookie='user=private;path=/';document.location.reload();"></a>
				<div class="personal__main-link__image">
					<i class="svg inline profile fill-theme svg-inline-more_icon" aria-hidden="true">
						<svg width="32" height="32">
							<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/main_links.svg#profile-32-32"></use>
						</svg>
					</i>
				</div>
				<div class="personal__main-link__text">
					<div class="personal__main-link__title switcher-title font_clamp--16-14 color-theme-target font_weight--500">{$lang->profile}</div>
					<div class="personal__main-link__dsc switcher-title font_weight--400 font_13 color_999">{$lang->personal_data}</div>
				</div>
			</div>
		</div>
		<div class="personal__main-link__wrapper grid-list__item">
			<div class="personal__main-link bordered outer-rounded-x shadow-hovered shadow-hovered-f600 shadow-no-border-hovered color-theme-parent-all">
				<a class="personal__main-link__link item-link-absolute" href="{$lang_link}faq"></a>
				<div class="personal__main-link__image">
					<i class="svg inline help fill-theme svg-inline-more_icon" aria-hidden="true">
						<svg width="32" height="32">
							<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/main_links.svg#help-32-32"></use>
						</svg>
					</i>
				</div>
				<div class="personal__main-link__text">
					<div class="personal__main-link__title switcher-title font_clamp--16-14 color-theme-target font_weight--500">{$lang->help}</div>
					<div class="personal__main-link__dsc switcher-title font_weight--400 font_13 color_999">{$lang->ask_a_question}</div>
				</div>
			</div>
		</div>
	</div>
</div>