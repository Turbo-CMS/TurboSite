{* Title *}
{if $category}
	{$meta_title=$category->name scope=global}
{else}
	{$meta_title= $btr->general_projects scope=global}
{/if}

<div class="row">
	<div class="col-lg-7 col-md-12">
		<div class="wrap_heading">
			{if $projects_count}
				<div class="box_heading heading_page">
					{if $category->name}
						{$category->name} - {$projects_count}
					{elseif $keyword}
						{$btr->general_projects|escape} - {$projects_count}
					{else}
						{$btr->general_projects|escape} - {$projects_count}
					{/if}
				</div>
			{else}
				<div class="box_heading heading_page">Нет проектов</div>
			{/if}
			<div class="box_btn_heading">
				<a class="btn btn_small btn-primary" href="{url module=ProjectAdmin return=$smarty.server.REQUEST_URI}">
					{include file='svg_icon.tpl' svgId='plus'}
					<span>{$btr->projects_add|escape}</span>
				</a>
			</div>
		</div>
	</div>

	<div class="col-md-12 col-lg-5 col-xs-12 float-xs-right">
		<div class="boxed_search">
			<form class="search" method="get">
				<input type="hidden" name="module" value="ProjectsAdmin">
				<div class="input-group">
					<input name="keyword" class="form-control" placeholder="{$btr->projects_search|escape}" type="text" value="{$keyword|escape}">
					<span class="input-group-btn">
						<button type="submit" class="btn btn-primary">{include file='svg_icon.tpl' svgId='search'} <span class="hidden-md-down"></span></button>
					</span>
				</div>
			</form>
		</div>
	</div>
</div>
<div class="boxed fn_toggle_wrap">
	<div class="row">
		<div class="col-lg-12 col-md-12 ">
			<div class="boxed_sorting">
				<div class="row">
					<div class="col-md-3 col-lg-3 col-sm-12">
						<div>
							<select id="id_filter" name="projects_filter" class="selectpicker form-control" title="Фильтр по проектам" data-live-search="true" onchange="location = this.value;">
								<option value="{url category_id=null keyword=null filter=null}" {if !$filter}selected{/if}>{$btr->general_all_projects|escape}</option>
								<option value="{url keyword=null category_id=null filter='visible'}" {if $filter == 'visible'}selected{/if}>{$btr->projects_enable|escape}</option>
								<option value="{url keyword=null category_id=null filter='hidden'}" {if $filter == 'hidden'}selected{/if}>{$btr->projects_disable|escape}</option>
							</select>
						</div>
					</div>
					<div class="col-md-3 col-lg-3 col-sm-12">
						<select id="id_categories" name="categories_filter" title="{$btr->general_category_filter|escape}" class="selectpicker form-control" data-live-search="true" data-size="10" onchange="location = this.value;">
							<option value="{url keyword=null category_id=null}" {if !$category}selected{/if}>{$btr->general_all_categories|escape}</option>
							{function name=category_select level=0}
								{foreach $projects_categories as $c}
									<option value='{url keyword=null category_id=$c->id}' {if $category->id == $c->id}selected{/if}>
										{section sp $level}- {/section}{$c->name|escape}
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
				<form method="post" class="fn_form_list">
					<input type="hidden" name="session_id" value="{$smarty.session.id}">
					<div class="turbo_list projects_list fn_sort_list">
						<div class="turbo_list_head">
							<div class="turbo_list_boding turbo_list_drag"></div>
							<div class="turbo_list_heading turbo_list_check">
								<label class="form-check">
									<input class="form-check-input fn_check_all fn_check_all_single" type="checkbox" value="">
								</label>
							</div>
							<div class="turbo_list_heading turbo_list_photo">{$btr->general_photo|escape}</div>
							<div class="turbo_list_heading turbo_list_name">{$btr->general_name|escape}</div>
							<div class="turbo_list_heading turbo_list_price"></div>
							<div class="turbo_list_heading turbo_list_count"></div>
							<div class="turbo_list_heading turbo_list_status">{$btr->general_enable|escape}</div>
							<div class="turbo_list_heading turbo_list_setting turbo_list_projects_setting">{$btr->general_activities|escape}</div>
							<div class="turbo_list_heading turbo_list_close"></div>
						</div>
						<div id="" class="turbo_list_body sortable">
							{foreach $projects as $project}
								<div class="fn_row turbo_list_body_item fn_sort_item">
									<div class="turbo_list_row">
										<input type="hidden" name="positions[{$project->id}]" value="{$project->position}">

										<div class="turbo_list_boding turbo_list_drag move_zone">
											{include file='svg_icon.tpl' svgId='drag_vertical'}
										</div>

										<div class="turbo_list_boding turbo_list_check">
											<label class="form-check">
												<input class="form-check-input fn_check_all_single" type="checkbox" name="check[]" value="{$project->id}">
											</label>
										</div>
										<div class="turbo_list_boding turbo_list_photo">
											{$image = $project->images|@first}
											{if $image}
												<a href="{url module=ProjectAdmin id=$project->id return=$smarty.server.REQUEST_URI}">
													<img src="{$image->filename|escape|resize:45:45}" /></a>
											{else}
												<a href="{url module=ProjectAdmin id=$project->id return=$smarty.server.REQUEST_URI}">
													<img width="35" src="design/images/no_image.svg" alt="{$project->name|escape}">
												</a>
											{/if}
										</div>
										<div class="turbo_list_boding turbo_list_name">
											<a class="link" href="{url module=ProjectAdmin id=$project->id return=$smarty.server.REQUEST_URI}">
												{$project->name|escape}
											</a>
										</div>
										<div class="turbo_list_boding turbo_list_price"></div>
										<div class="turbo_list_boding turbo_list_count"></div>
										{*visible*}
										<div class="turbo_list_boding turbo_list_status">
											<div class="form-check form-switch">
												<input class="form-check-input fn_ajax_action {if $project->visible}fn_active_class{/if}" id="id_{$project->id}" data-module="projects" data-action="visible" data-id="{$project->id}" name="visible" value="1" type="checkbox" {if $project->visible}checked="" {/if}>
												<label class="form-check-label" for="id_{$project->id}"></label>
											</div>
										</div>
										<div class=" turbo_list_setting turbo_list_projects_setting">
											{* Button menu for tablet *}
											<div class="">
												{*open*}
												<a href="../project/{$project->url|escape}" target="_blank" data-hint="{$btr->general_view|escape}" class="setting_icon setting_icon_open hint-bottom-middle-t-info-s-small-mobile  hint-anim">
													{include file='svg_icon.tpl' svgId='icon_desktop'}
												</a>
											</div>
										</div>
										<div class="turbo_list_boding turbo_list_close">
											{*delete*}
											<button data-hint="{$btr->general_delete_project|escape}" type="button" class="btn_close fn_remove hint-bottom-right-t-info-s-small-mobile  hint-anim" data-toggle="modal" data-target="#fn_action_modal" onclick="success_action($(this));">
												{include file='svg_icon.tpl' svgId='delete'}
											</button>
										</div>
									</div>
								</div>
							{/foreach}
						</div>
						<div class="turbo_list_footer fn_action_block">
							<div class="turbo_list_foot_left">
								<div class="turbo_list_boding turbo_list_drag"></div>
								<div class="turbo_list_heading turbo_list_check">
									<label class="form-check">
										<input class="form-check-input fn_check_all fn_check_all_single" type="checkbox" value="">
									</label>
								</div>
								<div class="turbo_list_option">
									<select name="action" class="selectpicker projects_action">
										<option value="enable">{$btr->general_do_enable|escape}</option>
										<option value="disable">{$btr->general_do_disable|escape}</option>
										<option value="delete">{$btr->general_delete|escape}</option>
									</select>
								</div>
							</div>
							<button type="submit" class="btn btn_small btn-primary">
								{include file='svg_icon.tpl' svgId='checked'}
								<span>{$btr->general_apply|escape}</span>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm 12 txt_center">
				{include file='pagination.tpl'}
			</div>
		</div>
	{else}
		<div class="heading_box mt-1">
			<div class="text_grey">{$btr->projects_no|escape}</div>
		</div>
	{/if}
</div>