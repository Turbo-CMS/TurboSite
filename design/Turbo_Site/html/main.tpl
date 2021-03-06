{* Home page *}

{* To wrap the center block in a pattern other than index.tpl *}
{* Specify the required template with the line below. This works for other modules too *}
{$wrapper = 'index.tpl' scope=global}

{* Canonical page address *}
{$canonical="" scope=global}

<div class="container">
    <!-- Heading Row -->
    <div class="row align-items-center my-5">
		<div class="col-lg-7">
			<img class="img-fluid rounded mb-4 mb-lg-0" src="design/{$settings->theme|escape}/images/about-extra-1.svg" alt="{$lang->about_company}">
		</div>
		<!-- /.col-lg-8 -->
		<div class="col-lg-5">
			<h1 class="font-weight-light">{$lang->about_company}</h1>
			<p>{$lang->company_message}</p>
			<a class="btn btn-primary" href="#">{$lang->more_details}</a>
		</div>
		<!-- /.col-md-4 -->
	</div>
    <!-- /.row -->
    <!-- Call to Action Well -->
    <div class="card text-white bg-secondary my-5 py-4 text-center">
		<div class="card-body">
			<p class="text-white m-0">{$lang->main_message}</p>
		</div>
	</div>
</div>
{get_projects var=projects limit=3}
{if $projects}
<!-- Portfolio Section -->
<header class="section-heading">
	<a href="{$lang_link}projects" class="btn btn-outline-primary float-right">{$lang->see_all}</a>
	<h2 class="section-title my-2">{$lang->global_projects}</h2>
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
					<img style="width: 210px; height: 210px;" src="design/{$settings->theme|escape}/images/no-photo.svg" alt="{$project->name|escape}"/>
				</span>	
				{/if}
				<div class="card-body">
					<h5 class="card-title"><a data-project="{$project->id}" href="{$lang_link}project/{$project->url}">{$project->name|escape}</a></h5>
					<p class="card-text"><small class="text-muted">{$project->date|date}</small></p>
					<p class="card-text">{$project->annotation|strip_tags|truncate:165}</p>
				</div>
				<div class="card-footer">
					<a href="{$lang_link}project/{$project->url}" class="btn btn-primary btn-sm">{$lang->more_details}</a>
				</div>
			</div>
		</div>
    {/foreach}
</div>
{/if}

{* Page title *}
<h1>{$page->name}</h1>
{* Page body *}
{$page->body}