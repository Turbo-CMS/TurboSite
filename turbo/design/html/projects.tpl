{if $category}
	{$meta_title=$category->name scope=global}
{else}
	{$meta_title=$btr->global_projects scope=global}
{/if}

<div class="row">
	<div class="col-lg-8 col-md-8">
		<div class="d-md-flex mb-3">
			<h1 class="d-inline align-middle me-3">
				{if $category && $category->name}
					{$category->name|escape} - {$projects_count}
				{else}
					{$btr->global_projects|escape} - {$projects_count}
				{/if}
			</h1>
			<div class="d-grid d-sm-block mt-2 mt-md-0">
				<a class="btn btn-primary" href="{url module=ProjectAdmin return=$smarty.server.REQUEST_URI}"><i data-feather="plus"></i> {$btr->projects_add|escape}</a>
			</div>
		</div>
	</div>
	<div class="col-lg-4 col-md-4 col-xs-12 float-sm-end">
		<form class="search mb-3" method="get">
			<input type="hidden" name="module" value="ProjectsAdmin">
			<div class="input-group">
				<input name="keyword" class="form-control" placeholder="{$btr->projects_search|escape}" type="text" value="{$keyword|escape}">
				<button class="btn btn-primary" type="submit"><i class="align-middle mt-n1" data-feather="search"></i></button>
			</div>
		</form>
	</div>
</div>

<div class="card">
	<div class="card-header d-block d-lg-none">
		<div class="card-actions float-end">
			<div class="position-relative collapse-icon">
				<a href="javascript:;" class="collapse-chevron">
					<i class="align-middle" data-feather="chevron-down"></i>
				</a>
			</div>
		</div>
		<h5 class="card-title mb-0">{$btr->global_filter|escape}</h5>
	</div>
	<div class="card-body">
		<div class="row">
			<div class="col-lg-12 col-md-12">
				<div class="collapse-card boxed-sorting">
					<div class="row">
						<div class="col-md-3 col-lg-3 col-sm-12 mb-3">
							<div>
								<select id="id_filter" name="projects_filter" class="selectpicker" title="{$btr->projects_filter|escape}" data-live-search="true" onchange="location = this.value;">
									<option value="{url category_id=null keyword=null filter=null}" {if !$filter}selected{/if}>{$btr->global_all_projects|escape}</option>
									<option value="{url keyword=null category_id=null filter='visible'}" {if $filter == 'visible'}selected{/if}>{$btr->projects_enable|escape}</option>
									<option value="{url keyword=null category_id=null filter='hidden'}" {if $filter == 'hidden'}selected{/if}>{$btr->projects_disable|escape}</option>
								</select>
							</div>
						</div>
						<div class="col-md-3 col-lg-3 col-sm-12 mb-3">
							<select id="id_categories" name="categories_filter" title="{$btr->global_category_filter|escape}" class="selectpicker" data-live-search="true" data-size="10" onchange="location = this.value;">
								<option value="{url keyword=null category_id=null}" {if !$category}selected{/if}>{$btr->global_all_categories|escape}</option>
								{function name=category_select level=0}
									{foreach $projects_categories as $c}
										<option value='{url keyword=null category_id=$c->id}' {if $category && $category->id == $c->id}selected{/if}>
											{section sp $level}--{/section} {$c->name|escape}
										</option>
										{category_select projects_categories=$c->subcategories level=$level+1}
									{/foreach}
								{/function}
								{category_select projects_categories=$projects_categories}
							</select>
						</div>
					</div>
				</div>
			</div>
		</div>
		{if $projects}
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12">
					<form method="post" class="js-form-list">
						<input type="hidden" name="session_id" value="{$smarty.session.id}">
						<div class="turbo-list">
							<div class="turbo-list-head">
								<div class="turbo-list-boding turbo-list-drag"></div>
								<div class="turbo-list-heading turbo-list-check">
									<label class="form-check">
										<input class="form-check-input js-check-all js-check-all-single" type="checkbox" value="">
									</label>
								</div>
								<div class="turbo-list-heading turbo-list-photo">{$btr->global_photo|escape}</div>
								<div class="turbo-list-heading turbo-list-name turbo-list-project-name">{$btr->global_title|escape}</div>
								<div class="turbo-list-heading turbo-list-status">{$btr->global_enable|escape}</div>
								<div class="turbo-list-heading turbo-list-setting">{$btr->global_activities|escape}</div>
								<div class="turbo-list-heading turbo-list-delete"></div>
							</div>
							<div class="turbo-list-body sortable">
								{foreach $projects as $project}
									<div class="js-row turbo-list-body-item js-sort-item">
										<div class="turbo-list-row">
											<input type="hidden" name="positions[{$project->id}]" value="{$project->position}">
											<div class="turbo-list-boding turbo-list-drag move-zone">
												<i class="align-middle" transform="rotate(-45)" data-feather="maximize-2"></i>
											</div>
											<div class="turbo-list-boding turbo-list-check">
												<label class="form-check">
													<input class="form-check-input js-check-all-single" type="checkbox" name="check[]" value="{$project->id}">
												</label>
											</div>
											<div class="turbo-list-boding turbo-list-photo">
												{$image = $project->images|@first}
												{if $image}
													<a href="{url module=ProjectAdmin id=$project->id return=$smarty.server.REQUEST_URI}">
														<img src="{$image->filename|escape|resize:45:45}">
													</a>
												{else}
													<a href="{url module=ProjectAdmin id=$project->id return=$smarty.server.REQUEST_URI}">
														<i class="align-middle" data-feather="camera"></i>
													</a>
												{/if}
											</div>
											<div class="turbo-list-boding turbo-list-name turbo-list-project-name">
												<a href="{url module=ProjectAdmin id=$project->id return=$smarty.server.REQUEST_URI}" class="fw-bold text-body text-decoration-none">{$project->name|escape}</a>
												<div class="mb-0">
													<span class="fw-bold text-secondary">{$project->date|date}</span>
												</div>	
											</div>
											<div class="turbo-list-boding turbo-list-status">
												<div class="form-check form-switch">
													<input class="form-check-input js-ajax-action {if $project->visible}js-active-class{/if}" id="id-{$project->id}" data-module="projects" data-action="visible" data-id="{$project->id}" name="visible" value="1" type="checkbox" {if $project->visible}checked="" {/if}>
													<label class="form-check-label" for="id-{$project->id}"></label>
												</div>
											</div>
											<div class="turbo-list-setting">
												<a href="../project/{$project->url}" target="_blank" class="setting-icon setting-icon-open" data-bs-toggle="tooltip" data-bs-placement="top" title="{$btr->global_view|escape}">
													<i class="align-middle" data-feather="external-link"></i>
												</a>
											</div>
											<div class="turbo-list-boding turbo-list-delete">
												<button type="button" class="btn-delete js-remove" data-bs-toggle="modal" data-bs-target="#actionModal" onclick="success_action($(this));">
													<span data-bs-toggle="tooltip" data-bs-placement="top" title="{$btr->global_delete|escape}">
														<i class="align-middle" data-feather="trash-2"></i>
													</span>
												</button> 
											</div>
										</div>
									</div>
								{/foreach}
							</div>
							<div class="turbo-list-footer js-action-block">
								<div class="turbo-list-foot-left">
									<div class="turbo-list-boding turbo-list-drag"></div>
									<div class="turbo-list-heading turbo-list-check">
										<label class="form-check">
											<input class="form-check-input js-check-all js-check-all-single" type="checkbox" value="">
										</label>
									</div>
									<div class="turbo-list-option">
										<select name="action" class="selectpicker projects-action">
											<option value="enable">{$btr->global_do_enable|escape}</option>
											<option value="disable">{$btr->global_do_disable|escape}</option>
											<option value="delete">{$btr->global_delete|escape}</option>
										</select>
									</div>
								</div>
								<button type="submit" class="btn btn-primary">
									<i class="align-middle" data-feather="check"></i>
									{$btr->global_apply|escape}
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					{include file='pagination.tpl'}
				</div>
			</div>
		{else}
			<h5 class="card-title ms-1 my-3">{$btr->projects_no|escape}</h5>
		{/if}
	</div>
</div>