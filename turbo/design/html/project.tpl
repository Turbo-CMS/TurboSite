{if $project->id}
	{$meta_title = $project->name scope=global}
{else}
	{$meta_title = $btr->project_new scope=global}
{/if}

<div class="row">
	<div class="col-lg-12 col-md-12">
		<div class="wrap_heading">
			<div class="box_heading heading_page">
				{if !$project->id}
					{$btr->project_add|escape}
				{else}
					{$project->name|escape}
				{/if}
			</div>
			{if $project->id}
				<div class="box_btn_heading">
					<a class="btn btn_small btn-primary add" target="_blank" href="../{$lang_link}project/{$project->url}">
						{include file='svg_icon.tpl' svgId='icon_desktop'}
						<span>{$btr->general_open|escape}</span>
					</a>
				</div>
			{/if}
		</div>
	</div>
	<div class="col-md-12 col-lg-12 col-sm-12 float-xs-right"></div>
</div>

{if $message_success}
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12">
			<div class="boxed boxed_success">
				<div class="heading_box">
					{if $message_success=='added'}
						{$btr->project_added|escape}
					{elseif $message_success=='updated'}
						{$btr->project_updated|escape}
					{else}
						{$message_success|escape}
					{/if}
					{if $smarty.get.return}
						<a class="btn btn_return float-xs-right" href="{$smarty.get.return}">
							{include file='svg_icon.tpl' svgId='return'}
							<span>{$btr->general_back|escape}</span>
						</a>
					{/if}
				</div>
			</div>
		</div>
	</div>
{/if}

{if $message_error}
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12">
			<div class="boxed boxed_warning">
				<div class="heading_box">
					{if $message_error=='url_exists'}
						{$btr->project_exists|escape}
					{elseif $message_error=='empty_name'}
						{$btr->general_enter_title|escape}
					{elseif $message_error == 'empty_url'}
						{$btr->general_enter_url|escape}
					{elseif $message_error == 'url_wrong'}
						{$btr->general_not_underscore|escape}
					{elseif $message_error == 'empty_categories'}
						{$btr->project_no_category|escape}
					{else}
						{$message_error|escape}
					{/if}
				</div>
			</div>
		</div>
	</div>
{/if}

<form method="post" id="project" enctype="multipart/form-data" class="clearfix fn_fast_button">
	<input type="hidden" name="session_id" value="{$smarty.session.id}">
	<div class="row">
		<div class="col-xs-12">
			<div class="boxed">
				<div class="row d_flex">
					<div class="col-lg-10 col-md-9 col-sm-12">
						<div class="heading_label">
							{$btr->general_name|escape}
						</div>
						<div class="form-group">
							<input class="form-control" name="name" type="text" value="{$project->name|escape}" />
							<input name="id" type="hidden" value="{$project->id|escape}" />
						</div>
						<div class="row">
							<div class="col-xs-12 col-lg-6 col-md-10">
								<div class="">
									<div class="input-group">
										<span class="input-group-addon input-group-addon-left">URL</span>
										<input name="url" class="fn_meta_field form-control fn_url {if $project->id}fn_disabled{/if}" {if $project->id}readonly="" {/if} type="text" value="{$project->url|escape}" />
										<input type="checkbox" id="block_translit" class="hidden" value="1" {if $project->id}checked="" {/if}>
										<span class="input-group-addon fn_disable_url">
											{if $project->id}
												<i class="url-lock"></i>
											{else}
												<i class="url-lock url-unlock"></i>
											{/if}
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-2 col-md-3 col-sm-12">
						<div class="activity_of_switch">
							<div class="activity_of_switch_item">
								<div class="turbo_switch clearfix">
									<label class="switch_label">{$btr->general_enable|escape}</label>
									<div class="form-check form-switch">
										<input class="form-check-input" id="visible_checkbox" name="visible" value="1" type="checkbox" {if $project->visible}checked="" {/if}>
										<label class="form-check-label" for="visible_checkbox"></label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-8 col-md-12 pr-0 ">
			<div class="boxed fn_toggle_wrap min_height_230px">
				<div class="heading_box">
					{$btr->project_images|escape}
					<div class="toggle_arrow_wrap fn_toggle_card text-primary">
						<a class="btn-minimize" href="javascript:;"><i class="fn_icon_arrow icon-chevron-down"></i></a>
					</div>
				</div>
				<div class="toggle_body_wrap fn_card on ">
					<ul class="fn_droplist_wrap project_images_list clearfix sortable" data-image="project">
						<li class="fn_dropzone dropzone_block">
							{include file='svg_icon.tpl' svgId='plus_big'}
							<input type="file" name="dropped_images[]" multiple class="dropinput">
						</li>
						{foreach $project_images as $image}
							<li class="project_image_item {if $image@first}first_image{/if} {if $image@iteration > 4}fn_toggle_hidden hidden{/if} fn_sort_item">
								<button type="button" class="fn_remove_image remove_image"></button>
								<i class="move_zone">
									{if $image}
										<img class="project_icon" src="{$image->filename|resize:170:100}" alt="" />
									{else}
										<img class="project_icon" src="design/images/no_image.svg" width="50">
									{/if}
									<input type="hidden" name='images[]' value="{$image->id}">
								</i>
							</li>
						{/foreach}
						<li class="fn_new_image_item project_image_item fn_sort_item">
							<button type="button" class="fn_remove_image remove_image"></button>
							<img src="" alt="" />
							<input type="hidden" name='images_urls[]' value="">
						</li>
					</ul>
					{if $project_images|count > 4}
						<div class="show_more_images fn_show_images">{$btr->project_images_all|escape}</div>
					{/if}
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-12">
			<div class="boxed fn_toggle_wrap min_height_230px">
				<div class="heading_box">
					{$btr->project_parameters|escape}
					<div class="toggle_arrow_wrap fn_toggle_card text-primary">
						<a class="btn-minimize" href="javascript:;"><i class="fn_icon_arrow icon-chevron-down"></i></a>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 toggle_body_wrap on fn_card">
						<div class="row">
							<div class="col-lg-12">
								<div class="heading_label">{$btr->general_category|escape}</div>
								<select name="category_id" class="selectpicker mb-1">
									{function name=projects_category_select level=0}
										{foreach from=$projects_categories item=category}
											<option value='{$category->id}' {if $category->id == $project->category_id}selected{/if} category_name='{$category->name|escape}'>{section name=sp loop=$level}--{/section}{$category->name|escape}</option>
											{projects_category_select projects_categories=$category->subcategories  level=$level+1}
										{/foreach}
									{/function}
									{projects_category_select projects_categories=$projects_categories}
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12">
								<div class="">
									<div class="heading_label">{$btr->general_date|escape}</div>
									<div class="">
										<input name="date" class="form-control" type="text" value="{$project->date|date}" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-8 col-md-12 pr-0">
			<div class="boxed fn_toggle_wrap min_height_230px">
				<div class="heading_box">
					{$btr->general_recommended|escape}
					<div class="toggle_arrow_wrap fn_toggle_card text-primary">
						<a class="btn-minimize" href="javascript:;"><i class="fn_icon_arrow icon-chevron-down"></i></a>
					</div>
				</div>
				<div class="toggle_body_wrap on fn_card fn_sort_list">
					<div class="turbo_list ok_related_list">
						<div class="turbo_list_body related_projects sortable">
							{foreach $related_projects as $related_project}
								<div class="fn_row turbo turbo_list_body_item fn_sort_item">
									<div class="turbo_list_row">
										<div class="turbo_list_boding turbo_list_drag move_zone">
											{include file='svg_icon.tpl' svgId='drag_vertical'}
										</div>
										<div class="turbo_list_boding turbo_list_related_photo">
											<input type="hidden" name="related_projects[]" value='{$related_project->id}'>
											<a href="{url module=ProjectAdmin id=$related_project->id}">
												{if $related_project->images[0]}
													<img class="project_icon" src='{$related_project->images[0]->filename|resize:40:40}'>
												{else}
													<img class="project_icon" src="design/images/no_image.png" width="40">
												{/if}
											</a>
										</div>
										<div class="turbo_list_boding turbo_list_related_name">
											<a class="link" href="{url module=ProjectAdmin id=$related_project->id}">{$related_project->name|escape}</a>
										</div>
										<div class="turbo_list_boding turbo_list_close">
											<button data-hint="{$btr->general_delete_project|escape}" type="button" class="btn_close fn_remove_item hint-bottom-right-t-info-s-small-mobile  hint-anim">
												{include file='svg_icon.tpl' svgId='delete'}
											</button>
										</div>
									</div>
								</div>
							{/foreach}
							<div id="new_related_project" class="fn_row turbo turbo_list_body_item fn_sort_item" style='display:none;'>
								<div class="turbo_list_row">
									<div class="turbo_list_boding turbo_list_drag move_zone">
										{include file='svg_icon.tpl' svgId='drag_vertical'}
									</div>
									<div class="turbo_list_boding turbo_list_related_photo">
										<input type="hidden" name="related_projects[]" value="">
										<img class="project_icon" src="">
									</div>
									<div class="turbo_list_boding turbo_list_related_name">
										<a class="link related_project_name" href=""></a>
									</div>
									<div class="turbo_list_boding turbo_list_close">
										<button data-hint="{$btr->general_delete_project|escape}" type="button" class="btn_close fn_remove_item hint-bottom-right-t-info-s-small-mobile  hint-anim">
											{include file='svg_icon.tpl' svgId='delete'}
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="heading_label">{$btr->general_recommended_add|escape}</div>
					<div class="autocomplete_arrow">
						<input type="text" name="related" id="related_projects" class="form-control" placeholder='{$btr->general_add_project|escape}'>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-12">
			<div class="boxed fn_toggle_wrap">
				<div class="heading_box">
					{$btr->general_extra_options|escape}
					<div class="toggle_arrow_wrap fn_toggle_card text-primary">
						<a class="btn-minimize" href="javascript:;"><i class="fn_icon_arrow icon-chevron-down"></i></a>
					</div>
				</div>
				<div class="toggle_body_wrap on fn_card">
					<div class="row">
						<div class="col-lg-12">
							<div class="heading_label">{$btr->general_customer|escape}</div>
							<div class="mb-1">
								<input name="client" class="form-control" type="text" value="{$project->client}" />
							</div>
						</div>
						<div class="col-lg-12">
							<div class="heading_label">{$btr->url_site|escape}</div>
							<div class="mb-1">
								<input name="site" class="form-control" type="text" value="{$project->site}" />
							</div>
						</div>
						<div class="col-lg-12">
							<div class="heading_label">{$btr->type_project|escape}</div>
							<div class="mb-1">
								<input name="type" class="form-control" type="text" value="{$project->type}" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12 col-md-12">
			<div class="boxed match fn_toggle_wrap min_height_230px">
				<div class="heading_box">
					{$btr->general_metatags|escape}
					<div class="toggle_arrow_wrap fn_toggle_card text-primary">
						<a class="btn-minimize" href="javascript:;"><i class="fn_icon_arrow icon-chevron-down"></i></a>
					</div>
				</div>
				<div class="toggle_body_wrap on fn_card row">
					<div class="col-lg-6 col-md-6">
						<div class="heading_label">Meta-title <span id="fn_meta_title_counter"></span></div>
						<input name="meta_title" class="form-control fn_meta_field mb-h" type="text" value="{$project->meta_title|escape}" />
						<div class="heading_label">Meta-keywords</div>
						<input name="meta_keywords" class="form-control fn_meta_field mb-h" type="text" value="{$project->meta_keywords|escape}" />
					</div>
					<div class="col-lg-6 col-md-6 pl-0">
						<div class="heading_label">Meta-description <span id="fn_meta_description_counter"></span></div>
						<textarea name="meta_description" class="form-control turbo_textarea fn_meta_field">{$project->meta_description|escape}</textarea>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12 col-md-12">
			<div class="boxed match fn_toggle_wrap tabs">
				<div class="heading_tabs">
					<div class="tab_navigation">
						<a href="#tab1" class="heading_box tab_navigation_link">{$btr->general_short_description|escape}</a>
						<a href="#tab2" class="heading_box tab_navigation_link">{$btr->general_full_description|escape}</a>
					</div>
					<div class="toggle_arrow_wrap fn_toggle_card text-primary">
						<a class="btn-minimize" href="javascript:;"><i class="fn_icon_arrow icon-chevron-down"></i></a>
					</div>
				</div>
				<div class="toggle_body_wrap on fn_card">
					<div class="tab_container">
						<div id="tab1" class="tab">
							<textarea name="annotation" id="annotation" class="editor_small">{$project->annotation|escape}</textarea>
						</div>
						<div id="tab2" class="tab">
							<textarea id="fn_editor" name="body" class="editor_large fn_editor_class">{$project->text|escape}</textarea>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12 col-md-12 mt-1">
						<button type="submit" name="" class="btn btn_small btn-primary float-md-right">
							{include file='svg_icon.tpl' svgId='checked'}
							<span>{$btr->general_apply|escape}</span>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
{* Tiny MCE *}
{include file='tinymce_init.tpl'}
{* On document load *}
<link rel="stylesheet" type="text/css" href="design/js/datetimepicker/jquery.datetimepicker.css" />
<script src="design/js/datetimepicker/jquery.datetimepicker.js"></script>
<script src="design/js/autocomplete/jquery.autocomplete-min.js"></script>
<script src="design/js/chosen/chosen.jquery.js"></script>
<link rel="stylesheet" type="text/css" href="design/js/chosen/chosen.min.css" media="screen" />
{literal}
	<script>
		$(window).on("load", function() {
			$(document).on("click", ".fn_show_images", function() {
				$(this).prev().find($(".fn_toggle_hidden")).toggleClass("hidden");
			});

			$('input[name="date"]').datetimepicker({
				lang: '{/literal}{$settings->lang}{literal}',
				timepicker: false,
				format: 'd.m.Y'
			});

			// Delete project
			$(document).on("click", ".fn_remove_item", function() {
				$(this).closest(".fn_row").fadeOut(200, function() { $(this).remove(); });
				return false;
			});

			var image_item_clone = $(".fn_new_image_item").clone(true);
			$(".fn_new_image_item").remove();
			var new_image_tem_clone = $(".fn_new_spec_image_item").clone(true);
			$(".fn_new_spec_image_item").remove();

			// Or drag and drop
			if (window.File && window.FileReader && window.FileList) {
				$(".fn_dropzone").on('dragover', function(e) {
					e.preventDefault();
					$(this).css('background', '#bababa');
				});
				$(".fn_dropzone").on('dragleave', function() {
					$(this).css('background', '#f8f8f8');
				});

				function handleFileSelect(evt) {
					dropInput = $(this).closest(".fn_droplist_wrap").find("input.dropinput:last").clone();
					var parent = $(this).closest(".fn_droplist_wrap");
					var files = evt.target.files; // FileList object
					// Loop through the FileList and render image files as thumbnails.
					for (var i = 0, f; f = files[i]; i++) {
						// Only process image files.
						if (!f.type.match('image.*')) {
							continue;
						}
						var reader = new FileReader();
						// Closure to capture the file information.
						reader.onload = (function(theFile) {
							return function(e) {
								// Render thumbnail.
								if (parent.data('image') == "project") {
									var clone_item = image_item_clone.clone(true);
								} else if (parent.data('image') == "special") {
									var clone_item = new_image_tem_clone.clone(true);
								}
								clone_item.find("img").attr("onerror", '');
								clone_item.find("img").attr("src", e.target.result);
								clone_item.find("input").val(theFile.name);
								clone_item.appendTo(parent);
								temp_input = dropInput.clone();
								parent.find("input.dropinput").hide();
								parent.find(".fn_dropzone").append(temp_input);
							};
						})(f);
						// Read in the image file as a data URL.
						reader.readAsDataURL(f);
					}
					$(".fn_dropzone").removeAttr("style");
				}
				$(document).on('change', '.dropinput', handleFileSelect);
			}
			$(document).on("click", ".fn_remove_image", function() {
				$(this).closest("li").remove();
			});
			$(document).on("click", ".fn_change_special", function() {
				if ($(this).closest('li').hasClass("project_special")) {
					$(this).closest("ul").find("input[type=radio]").attr("checked", false);
					$(this).closest("li").removeClass("project_special");
					$(this).text($(this).data("origin"));
				} else {
					$(this).closest("ul").find("input[type=radio]").attr("checked", false);
					$(this).closest("li").removeClass("project_special");
					$(this).closest("li").find("input[type=radio]").attr("checked", true).click();
					$(this).closest("ul").find("li").removeClass("project_special");
					$(this).closest("li").addClass("project_special");
					$(this).text($(this).data("result"));
				}
			});

			// New related project
			var new_related_project = $('#new_related_project').clone(true);
			$('#new_related_project').remove();
			new_related_project.removeAttr('id');
			$("input#related_projects").autocomplete({
				serviceUrl: 'ajax/search_projects.php',
				minChars: 0,
				noCache: false,
				onSelect: function(suggestion) {
					$("input#related_projects").val('').focus().blur();
					new_item = new_related_project.clone().appendTo('.related_projects');
					new_item.find('a.related_project_name').html(suggestion.data.name);
					new_item.find('a.related_project_name').attr('href', 'index.php?module=ProjectAdmin&id=' + suggestion.data.id);
					new_item.find('input[name*="related_projects"]').val(suggestion.data.id);
					if (suggestion.data.image)
						new_item.find('img.project_icon').attr("src", suggestion.data.image);
					else
						new_item.find('img.project_icon').remove();
					new_item.show();
				},
				formatResult: function(suggestions, currentValue) {
					var reEscape = new RegExp('(\\' + ['/', '.', '*', '+', '?', '|', '(', ')', '[', ']', '{', '}', '\\'].join('|\\') + ')', 'g');
					var pattern = '(' + currentValue.replace(reEscape, '\\$1') + ')';
					return "<div>" + (suggestions.data.image ? "<img align=absmiddle src='" + suggestions.data.image + "'> " : '') + "</div>" + "<span>" + suggestions.value.replace(new RegExp(pattern, 'gi'), '<strong>$1<\/strong>') + "</span>";
				}
			});

		});
	</script>
{/literal}