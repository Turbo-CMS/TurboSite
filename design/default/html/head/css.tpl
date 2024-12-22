{* CSS Head *}

{* CSS Main *}
{css id="main" include=[
	"design/{$settings->theme|escape}/vendor/bootstrap/bootstrap.css",
	"design/{$settings->theme|escape}/css/theme.css",
	"design/{$settings->theme|escape}/vendor/fontawesome/fontawesome.css",
	"design/{$settings->theme|escape}/vendor/flag-icon/flag-icon.min.css",
	"design/{$settings->theme|escape}/vendor/fancybox/fancybox.css"
]}{/css}
{stylesheet minify=true}

{* CSS Project *}
{if $project}
	{css id="project" include=["design/{$settings->theme|escape}/css/projects/project.css"]}{/css}
	{stylesheet minify=true}
{/if}