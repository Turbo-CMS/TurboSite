{* Home Page *}

{* Wrapper *}
{$wrapper = 'index.tpl' scope=global}

{* Canonical *}
{$canonical="" scope=global}

<div class="row text-center pad-top pad-bottom mt-5">
	<div class="col-md-4">
		<i class="fal fa-comments fa-3x icon-custom text-primary"></i>
		<h4>{$lang->features_support|escape}</h4>
		<hr>
		<p>
			{$lang->message_support|escape}
		</p>
	</div>
	<div class="col-md-4">
		<i class="fal fa-desktop fa-3x icon-custom text-primary"></i>
		<h4>{$lang->quick_start|escape}</h4>
		<hr>
		<p>
			{$lang->message_support|escape}
		</p>
	</div>
	<div class="col-md-4">
		<i class="fal fa-recycle fa-3x icon-custom text-primary"></i>
		<h4>{$lang->simple_solution|escape}</h4>
		<hr>
		<p>
			{$lang->message_support|escape}
		</p>
	</div>
</div>

{* Projects *}
{get_projects var=projects limit=3}
{if $projects}
	<header class="section-heading mt-5">
		<a href="{$lang_link}projects" class="btn btn-outline-primary float-end">{$lang->see_all|escape}<i class="fal fa-chevron-right ms-2"></i></a>
		<h2 class="section-title my-2">{$lang->global_projects|escape}</h2>
	</header>
	<hr>
	<div class="row">
		{foreach $projects as $project}
			<div class="col-md-6 col-lg-4 mb-5"> 
				<div class="card h-100">
					{if $project->image}
						<img class="card-img-top" src="{$project->image->filename|resize:750:300}" alt="{$project->name|escape}">
					{else}
						<span class="text-center mt-4">
							<img style="width: 210px; height: 210px;" src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$project->name|escape}">
						</span>
					{/if}
					<div class="card-body">
						<h5 class="card-title"><a data-project="{$project->id}" class="text-decoration-none" href="{$lang_link}project/{$project->url}">{$project->name|escape}</a></h5>
						<p class="card-text"><small class="text-muted">{$project->date|date}</small></p>
						<p class="card-text">{$project->annotation|strip_tags|truncate:165}</p>
					</div>
					<div class="card-footer">
						<a href="{$lang_link}project/{$project->url}" class="btn btn-primary btn-sm">{$lang->more_details|escape}<i class="fal fa-arrow-right ms-2"></i></a>
					</div>
				</div>
			</div>
		{/foreach}
	</div>
{/if}

<!-- Heading Row -->
<div class="row align-items-center">
	<div class="col-lg-7">
		<img class="img-fluid rounded mb-4 mb-lg-0" src="design/{$settings->theme|escape}/images/about-extra-1.svg" alt="{$lang->about_company|escape}">
	</div>
	<div class="col-lg-5">
		{* Page Title *}
		{if $page && $page->header}
			<h1 class="font-weight-light" data-page="{$page->id}">{$page->name|escape}</h1>
		{/if}
		{* Page Body *}
		{if $page && $page->body}
			{$page->body}
		{/if}
	</div>
</div>