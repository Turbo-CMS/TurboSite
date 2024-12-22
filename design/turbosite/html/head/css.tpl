{* Fonts *}
{if $theme_settings->font_family == 'Inter'}
	{css id="fonts" include=["design/{$settings->theme|escape}/css/fonts/inter.css"]}{/css}
	{stylesheet minify=true}
{/if}

{if $theme_settings->font_family == 'Manrope'}
	{css id="fonts" include=["design/{$settings->theme|escape}/css/fonts/manrope.css"]}{/css}
	{stylesheet minify=true}
{/if}

{if $theme_settings->font_family == 'Nunito Sans'}
	{css id="fonts" include=["design/{$settings->theme|escape}/css/fonts/nunito-sans.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* Bootstrap *}
{if $module == 'BlogView' && $post || $module=='ArticlesView' && $post || $module=='ProjectsView' && $project || $module == 'PageView'}
	{css id="bootstrap" include=["design/{$settings->theme|escape}/css/bootstrap/bootstrap.css"]}{/css}
{else}
	{css id="bootstrap" include=["design/{$settings->theme|escape}/css/bootstrap/lite.bootstrap.css"]}{/css}
{/if}
{stylesheet minify=true}

{* CSS *}
{css id="global" include=[
	"design/{$settings->theme|escape}/css/chip.css",
	"design/{$settings->theme|escape}/css/dropdown-select.css",
	"design/{$settings->theme|escape}/css/footer/bottom-icons-panel.css",
	"design/{$settings->theme|escape}/css/vendor/ripple.css",
	"design/{$settings->theme|escape}/css/buttons.css",
	"design/{$settings->theme|escape}/css/svg.css",
	"design/{$settings->theme|escape}/css/header/header.css",
	"design/{$settings->theme|escape}/css/footer/footer.css",
	"design/{$settings->theme|escape}/css/header/mobile-header.css",
	"design/{$settings->theme|escape}/css/header/mobile-menu.css",
	"design/{$settings->theme|escape}/css/header/header-fixed.css",
	"design/{$settings->theme|escape}/css/page-title-breadcrumb-pagination.css",
	"design/{$settings->theme|escape}/css/social-icons.css",
	"design/{$settings->theme|escape}/css/left-menu.css",
	"design/{$settings->theme|escape}/css/tabs.css",
	"design/{$settings->theme|escape}/css/banners/bg-banner.css",
	"design/{$settings->theme|escape}/css/item-views.css",
	"design/{$settings->theme|escape}/css/blocks/dark-light-theme.css",
	"design/{$settings->theme|escape}/css/blocks/flexbox.css",
	"design/{$settings->theme|escape}/css/blocks/grid-list.css",
	"design/{$settings->theme|escape}/css/blocks/hint.css",
	"design/{$settings->theme|escape}/css/blocks/images.css",
	"design/{$settings->theme|escape}/css/blocks/line-block.css",
	"design/{$settings->theme|escape}/css/blocks/mobile-scrolled.css",
	"design/{$settings->theme|escape}/css/blocks/popup.css",
	"design/{$settings->theme|escape}/css/blocks/scroller.css",
	"design/{$settings->theme|escape}/css/social-list.css",
	"design/{$settings->theme|escape}/css/blocks/sticker.css",
	"design/{$settings->theme|escape}/css/blocks/sticky.css",
	"design/{$settings->theme|escape}/css/blocks/tizers-list.css",
	"design/{$settings->theme|escape}/css/index-page.css",
	"design/{$settings->theme|escape}/css/item-action.css",
	"design/{$settings->theme|escape}/css/notice.css",
	"design/{$settings->theme|escape}/css/scroll_to_top.css",
	"design/{$settings->theme|escape}/css/header/top-menu.css",
	"design/{$settings->theme|escape}/css/theme.selector.css",
	"design/{$settings->theme|escape}/css/search/search.css",
	"design/{$settings->theme|escape}/css/dragscroll.css",
	"design/{$settings->theme|escape}/css/breadcrumb.css",
	"design/{$settings->theme|escape}/css/slider/swiper-bundle.min.css",
	"design/{$settings->theme|escape}/css/slider/slider.swiper.css",
	"design/{$settings->theme|escape}/css/slider/slider.css",
	"design/{$settings->theme|escape}/css/banners/banners.css",
	"design/{$settings->theme|escape}/css/rating.css",
	"design/{$settings->theme|escape}/css/jquery.fancybox.css",
	"design/{$settings->theme|escape}/css/fancybox-gallery.css",
	"design/{$settings->theme|escape}/css/footer/bottom-menu.css",
	"design/{$settings->theme|escape}/css/gallery.css",
	"design/{$settings->theme|escape}/css/video-block.css",
	"design/{$settings->theme|escape}/css/detail.css",
	"design/{$settings->theme|escape}/css/back-url.css",
	"design/{$settings->theme|escape}/css/comments.css",
	"design/{$settings->theme|escape}/css/style-switcher.css",
	"design/{$settings->theme|escape}/css/styles.css",
	"design/{$settings->theme|escape}/css/template_styles.css",
	"design/{$settings->theme|escape}/css/form.css",
	"design/{$settings->theme|escape}/css/colored.css",
	"design/{$settings->theme|escape}/css/responsive.css",
	"design/{$settings->theme|escape}/css/custom.css",
	"design/{$settings->theme|escape}/css/footer/lang.css",
	"design/{$settings->theme|escape}/css/footer/developer.css",
	"design/{$settings->theme|escape}/css/profile.css",
	"design/{$settings->theme|escape}/css/header/cabinet-dropdown.css",
	"design/{$settings->theme|escape}/css/flag-icon.min.css",
	"design/{$settings->theme|escape}/css/turbo.css"
]}{/css}
{stylesheet minify=true}

{* Main *}
{if $module=='MainView'}
	{css id="main" include=[
		"design/{$settings->theme|escape}/css/main/tabs.css",
		"design/{$settings->theme|escape}/css/main/banners-with-text.css",
		"design/{$settings->theme|escape}/css/main/banners-only-img.css",
		"design/{$settings->theme|escape}/css/main/front-company.css",
		"design/{$settings->theme|escape}/css/main/front-instagramm.css"
	]}{/css}
	{stylesheet minify=true}
{/if}

{* Big Banner *}
{if $theme_settings->big_banners_type == '1'}
	{css id="banners" include=["design/{$settings->theme|escape}/css/header/header-opacity.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* Tizers *}
{if $theme_settings->teasers_type == '2'}
	{css id="tizers" include=["design/{$settings->theme|escape}/css/main/tizers-list.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* Blog list *}
{if $module == 'BlogView' || $module=='ArticlesView' || $module=='MainView' || $module=='ProjectsView'}
	{css id="list" include=["design/{$settings->theme|escape}/css/news/blog-list.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* Footer Type 2 *}
{if $theme_settings->footer_type == '2'}
	{css id="footer" include=["design/{$settings->theme|escape}/css/footer/footer-2.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* Post *}
{if $module == 'BlogView' && $post || $module=='ArticlesView' && $post || $module=='ProjectsView' && $project}
	{css id="post" include=[
		"design/{$settings->theme|escape}/css/news/news.detail.css",
		"design/{$settings->theme|escape}/css/news/comments.css"
	]}{/css}
	{stylesheet minify=true}
{/if}

{* Subscribe *}
{if $module=='BlogView' || $module=='ArticlesView'}
	{css id="subscribe" include=["design/{$settings->theme|escape}/css/news/subscribe.edit.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* Share *}
{if $module == 'BlogView' && $post || $module=='ArticlesView' && $post || $module=='ProjectsView' && $project}
	{css id="share" include=["design/{$settings->theme|escape}/css/share.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* Projects *}
{if $module=='ProjectsView'}
	{css id="projects" include=[
		"design/{$settings->theme|escape}/css/projects/owl-styles.css",
		"design/{$settings->theme|escape}/css/projects/owl.carousel.css",
		"design/{$settings->theme|escape}/css/projects/owl.theme.default.css"
	]}{/css}
	{stylesheet minify=true}
{/if}

{* Feedback *}
{if $module=='FeedbackView'}
	{css id="contact" include=["design/{$settings->theme|escape}/css/contacts/contacts.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* Reviews *}
{if $module=='ReviewsView'}
	{css id="reviews" include=[
		"design/{$settings->theme|escape}/css/reviews/reviews.css",
		"design/{$settings->theme|escape}/css/reviews/review-list-inner.css"
	]}{/css}
	{stylesheet minify=true}
{/if}

{* Search *}
{if $module=='SearchView'}
	{css id="search" include=["design/{$settings->theme|escape}/css/search/search-page.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* Sitemap *}
{if $module=='SitemapView'}
	{css id="sitemap" include=["design/{$settings->theme|escape}/css/sitemap/sitemap.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* User *}
{if $module=='UserView'}
	{css id="user" include=[
		"design/{$settings->theme|escape}/css/user/index.user.css",
		"design/{$settings->theme|escape}/css/user/banners-slider.css",
		"design/{$settings->theme|escape}/css/user/user.css",
		"design/{$settings->theme|escape}/css/user/personal.section.css"
	]}{/css}
	{stylesheet minify=true}
{/if}

{* Page 404 *}
{if $page && $page->url=="404"}
	{css id="404" include=["design/{$settings->theme|escape}/css/error_404.css"]}{/css}
	{stylesheet minify=true}
{/if}

{* Settings Theme *}
{if $theme_settings->user_color}
	{assign var="color" value=$theme_settings->custom_color}
	{assign var="hsl" value=$color|hsl}
{else}
	{assign var="color" value=$theme_settings->colors}
	{assign var="hsl" value=$color|hsl}
{/if}

{literal}
	<style>
		html {
			font-size: {/literal}{$theme_settings->font_size}{literal};
			--border-radius: {/literal}{$theme_settings->border_radius}{literal};
			--theme-base-color: {/literal}{$color}{literal};
			--theme-base-opacity-color: {/literal}{$color}{literal}1a;
			--theme-more-color: {/literal}{$color}{literal};
			--theme-outer-border-radius: {/literal}{$theme_settings->border_radius}{literal};
			--theme-text-transform: none;
			--theme-letter-spacing: normal;
			--theme-button-font-size: 0%;
			--theme-button-padding-2px: 0%;
			--theme-button-padding-1px: 0%;
			--theme-more-color-hue: {/literal}{$hsl.hue}{literal};
			--theme-more-color-saturation: {/literal}{$hsl.saturation}{literal}%;
			--theme-more-color-lightness: {/literal}{$hsl.lightness}{literal}%;
			--theme-base-color-hue: {/literal}{$hsl.hue}{literal};
			--theme-base-color-saturation: {/literal}{$hsl.saturation}{literal}%;
			--theme-base-color-lightness: {/literal}{$hsl.lightness}{literal}%;
			--theme-lightness-hover-diff: 6%;
			--theme-font-family: {/literal}{$theme_settings->font_family}{literal};
			--theme-font-title-family: var(--theme-font-family);
			--theme-font-title-weight: {/literal}{$theme_settings->title_weight}{literal};
			--theme-page-width: {/literal}{$theme_settings->site_width}{literal};
			--theme-page-width-padding: 32px;
		}
	</style>
{/literal}

{literal}
	<style>
		html {--header-height:184px;}
	</style>
{/literal}