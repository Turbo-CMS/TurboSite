{* Message *}
{literal}
	<script>
		if (!window.Turbo) window.Turbo = {};
		if (!window.Turbo.message)
			window.Turbo.message = function(mess) {
				if (typeof mess === "object") {
					for (let i in mess) {
						Turbo.message[i] = mess[i];
					}
					return true;
				}
			};
	</script>
{/literal}

<script>
	window.lazySizesConfig = window.lazySizesConfig || {};
	lazySizesConfig.loadMode = 1;
	lazySizesConfig.expand = 200;
	lazySizesConfig.expFactor = 1;
	lazySizesConfig.hFac = 0.1;
	window.lazySizesConfig.loadHidden = false;
</script>

{* JS *}
{js id="js" priority=99 include=[
	"design/{$settings->theme|escape}/js/observer.js",
	"design/{$settings->theme|escape}/js/bootstrap/lite.bootstrap.js",
	"design/{$settings->theme|escape}/js/jquery/jquery.cookie.js",
	"design/{$settings->theme|escape}/js/jquery/jquery.validate.min.js",
	"design/{$settings->theme|escape}/js/jquery/jquery.actual.min.js",
	"design/{$settings->theme|escape}/js/jquery/jquery-ui.min.js",
	"design/{$settings->theme|escape}/js/jquery/jquery.plugin.min.js",
	"design/{$settings->theme|escape}/js/jquery/jquery.autocomplete.js",
	"design/{$settings->theme|escape}/js/jquery/jquery.inputmask.bundle.min.js",
	"design/{$settings->theme|escape}/js/jquery/jquery.fancybox.js",
	"design/{$settings->theme|escape}/js/jqModal.js",
	"design/{$settings->theme|escape}/js/scrollTabs.js",
	"design/{$settings->theme|escape}/js/detectmobilebrowser.js",
	"design/{$settings->theme|escape}/js/matchMedia.js",
	"design/{$settings->theme|escape}/js/ripple.js",
	"design/{$settings->theme|escape}/js/controls.js",
	"design/{$settings->theme|escape}/js/selectOffer.js",
	"design/{$settings->theme|escape}/js/tabs.history.js",
	"design/{$settings->theme|escape}/js/general.js",
	"design/{$settings->theme|escape}/js/custom.js",
	"design/{$settings->theme|escape}/js/logo.js",
	"design/{$settings->theme|escape}/js/notice.js",
	"design/{$settings->theme|escape}/js/scroll_to_top.js",
	"design/{$settings->theme|escape}/js/header/header.js",
	"design/{$settings->theme|escape}/js/theme.selector.lite.js",
	"design/{$settings->theme|escape}/js/search/search.title.js",
	"design/{$settings->theme|escape}/js/search/search.js",
	"design/{$settings->theme|escape}/js/dragscroll.js",
	"design/{$settings->theme|escape}/js/banners/banners.js",
	"design/{$settings->theme|escape}/js/banners/video.banner.js",
	"design/{$settings->theme|escape}/js/slider/slider.swiper.js",
	"design/{$settings->theme|escape}/js/slider/swiper-bundle.min.js",
	"design/{$settings->theme|escape}/js/catalog.block.js",
	"design/{$settings->theme|escape}/js/main/index-tabs.js",
	"design/{$settings->theme|escape}/js/phones.js",
	"design/{$settings->theme|escape}/js/footer/footer.js",
	"design/{$settings->theme|escape}/js/footer/bottom.menu.js"
]}{/js}
{javascript minify=true}

{* Menu Many *}
{if $theme_settings->categories_header_type == '2'}
	{js id="header" priority=99 include=[
		"design/{$settings->theme|escape}/js/header/menu_many_items.js",
		"design/{$settings->theme|escape}/js/header/jquery.menu-aim.js"
	]}{/js}
	{javascript minify=true}
{/if}

{* JS *}
{js id="js" priority=99 include=[
	"design/{$settings->theme|escape}/js/infinite-scroll.pkgd.min.js",
	"design/{$settings->theme|escape}/js/gallery.js",
	"design/{$settings->theme|escape}/js/slider/slider.swiper.galleryEvents.js",
	"design/{$settings->theme|escape}/js/hover-block.js"
]}{/js}
{javascript minify=true}

{* User *}
{if $module=='UserView'}
	{js id="user" priority=99 include=["design/{$settings->theme|escape}/js/user/banners.slider.user.js"]}{/js}
	{javascript minify=true}
{/if}

{* Projects *}
{if $module=='ProjectsView'}
	{js id="projects" priority=99 include=["design/{$settings->theme|escape}/js/projects/owl.carousel.js"]}{/js}
	{javascript minify=true}
{/if}

{* Sitemap *}
{if $module=='SitemapView'}
	{js id="sitemap" priority=99 include=["design/{$settings->theme|escape}/js/sitemap/sitemap.js"]}{/js}
	{javascript minify=true}
{/if}

{literal}
	<script>
		new JThemeSelector('g0');
	</script>
{/literal}

{* Turbo JS *}
{js id="script" priority=99 include=["design/{$settings->theme|escape}/js/turbo.js"]}{/js}
{javascript minify=true}

{* Banners User *}
{if $module=='UserView'}
	<script>
		showSectionBanners();
	</script>
{/if}

{* Online Chat *}
{if $settings->chat_viber || $settings->chat_whats_app || $settings->chat_telegram || $settings->chat_facebook}
	{css id="chat" include=["design/{$settings->theme|escape}/css/service/online-chat.css"]}{/css}
	{stylesheet minify=true}

	{js id="chat" priority=99 include=["design/{$settings->theme|escape}/js/service/online-chat.js"]}{/js}
	{javascript minify=true}

	{include file='service/online_chat.tpl'}
{/if}

{* Admintooltip *}
{if isset($smarty.session.admin) && $smarty.session.admin == 'admin'}
	{$admintooltip}
{/if}

{* Custom Scripts *}
{if isset($counters['body_bottom'])}
	{foreach $counters['body_bottom'] as $counter}
		{$counter->code}
	{/foreach}
{/if}