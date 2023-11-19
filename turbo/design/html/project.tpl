{if $project->id}
	{$meta_title = $project->name scope=global}
{else}
	{$meta_title = $btr->project_new scope=global}
{/if}

<div class="d-md-flex mb-3">
	<h1 class="d-inline align-middle me-3">
		{if !$project->id}
			{$btr->project_add|escape}
		{else}
			{$project->name|escape}
		{/if}
	</h1>
	<div class="d-grid d-sm-block mt-2 mt-md-0">
		<a class="btn btn-primary" target="_blank" href="../{$lang_link}project/{$project->url}">
			<i class="align-middle mt-n1" data-feather="external-link"></i>
			{$btr->global_open|escape}
		</a>
	</div>
</div>

{if $message_success}
	<div class="row">
		<div class="col-12">
			<div class="alert alert-success alert-dismissible fade show" role="alert">
				<div class="alert-message">
					{if $message_success=='added'}
						{$btr->project_added|escape}
					{elseif $message_success=='updated'}
						{$btr->project_updated|escape}
					{else}
						{$message_success|escape}
					{/if}
					{if $smarty.get.return}
						<a class="alert-link fw-normal btn-return text-decoration-none me-5" href="{$smarty.get.return}">
							<i class="align-middle mt-n1" data-feather="corner-up-left"></i>
							{$btr->global_back|escape}
						</a>
					{/if}
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
			</div>
		</div>
	</div>
{/if}

{if $message_error}
	<div class="row">
		<div class="col-12">
			<div class="alert alert-danger alert-dismissible fade show" role="alert">
				<div class="alert-message">
					{if $message_error=='url_exists'}
						{$btr->project_exists|escape}
					{elseif $message_error=='empty_name'}
						{$btr->global_enter_name|escape}
					{elseif $message_error == 'empty_url'}
						{$btr->global_enter_url|escape}
					{elseif $message_error == 'url_wrong'}
						{$btr->global_not_underscore|escape}
					{elseif $message_error == 'empty_categories'}
						{$btr->project_no_category|escape}
					{else}
						{$message_error|escape}
					{/if}
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
			</div>
		</div>
	</div>
{/if}

<form method="post" id="project" enctype="multipart/form-data" class="js-fast-button">
	<input type="hidden" name="session_id" value="{$smarty.session.id}">
	<input type="hidden" name="lang_id" value="{$lang_id}">
	<div class="row g-2">
		<div class="col-12">
			<div class="card">
				<div class="card-body">
					<div class="row d-flex">
						<div class="col-lg-10 col-md-9 col-sm-12">
							<div class="mb-3">
								<div class="form-label">{$btr->global_title|escape}</div>
								<input class="form-control" name="name" type="text" value="{$project->name|escape}">
								<input name="id" type="hidden" value="{$project->id|escape}">
							</div>
							<div class="row">
								<div class="col-12 col-lg-6 col-md-10">
									<div class="mb-3">
										<div class="input-group">
											<span class="input-group-text">URL</span>
											<input name="url" class="js-meta-field form-control js-url" type="text" value="{$project->url|escape}" {if $project->id}readonly{/if}>
											<input type="checkbox" id="block-translit" class="d-none" value="1" {if $project->id}checked=""{/if}>
											<span class="input-group-text js-disable-url">
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
							<div class="d-flex justify-content-center align-content-center flex-wrap flex-md-column h-100">
								<div class="form-check form-switch form-check-reverse ms-2 mb-2 mb-sm-1">
									<input class="form-check-input ms-2" type="checkbox" id="visible" name="visible" value="1" type="checkbox" {if $project->visible}checked=""{/if}>
									<label class="form-check-label ms-2" for="visible">{$btr->global_enable|escape}</label>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row g-2">
		<div class="col-lg-8 col-md-12">
			<div class="card mh-250px">
				<div class="card-header">
					<div class="card-actions float-end">
						<div class="d-block d-lg-none position-relative collapse-icon">
							<a href="javascript:;" class="collapse-chevron">
								<i class="align-middle" data-feather="chevron-up"></i>
							</a>
						</div>
					</div>
					<h5 class="card-title mb-0">{$btr->project_images|escape}</h5>
				</div>
				<div class="collapse-card">
					<div class="card-body">
						<div class="row">
							<div class="col-12 mb-1">
								<ul class="js-droplist-wrap project-images-list sortable" data-image="project">
									<li class="js-dropzone dropzone-block">
										<i class="align-middle" data-feather="plus"></i>
										<input type="file" name="dropped_images[]" multiple class="dropinput">
									</li>
									{foreach $project_images as $image}
										<li class="project-image-item {if $image@first}first-image{/if} {if $image@iteration > 4}js-toggle-hidden d-none{/if} js-sort-item">
											<button type="button" class="js-remove-image remove-image"></button>
											<i class="move-zone">
												{if $image}
													<img class="project-icon" src="{$image->filename|resize:200:100}" alt="">
												{else}
													<i class="align-middle" data-feather="camera"></i>
												{/if}
												<input type="hidden" name='images[]' value="{$image->id}">
											</i>
										</li>
									{/foreach}
									<li class="js-new-image-item project-image-item js-sort-item d-none">
										<button type="button" class="js-remove-image remove-image"></button>
										<img src="" alt="">
										<input type="hidden" name='images_urls[]' value="">
									</li>
								</ul>
							</div>
							{if $project_images|count > 4}
								<div class="col-12">
									<a href="javascript:;" class="js-icon-arrow card-link js-show-images text-body">{$btr->project_images_all|escape}<i class="align-middle chevron" data-feather="chevron-down"></i></a>
								</div>
							{/if}
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-12">
			<div class="card mh-250px">
				<div class="card-header">
					<div class="card-actions float-end">
						<div class="d-block d-lg-none position-relative collapse-icon">
							<a href="javascript:;" class="collapse-chevron">
								<i class="align-middle" data-feather="chevron-up"></i>
							</a>
						</div>
					</div>
					<h5 class="card-title mb-0">{$btr->project_parameters|escape}</h5>
				</div>
				<div class="collapse-card">
					<div class="card-body">
						<div class="mb-3">
							<div class="form-label">{$btr->global_date|escape}</div>
							<input name="date" class="form-control flatpickr" type="text" value="{$project->date|date}">
						</div>
						<div class="mb-3">
							<div class="form-label">{$btr->global_category|escape}</div>
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
				</div>
			</div>
		</div>
	</div>
	<div class="row gx-2">
		<div class="col-lg-8 col-md-12">
			<div class="card mh-315px">
				<div class="card-header">
					<div class="card-actions float-end">
						<div class="d-block d-lg-none position-relative collapse-icon">
							<a href="javascript:;" class="collapse-chevron">
								<i class="align-middle" data-feather="chevron-up"></i>
							</a>
						</div>
					</div>
					<h5 class="card-title mb-0">{$btr->global_recommended|escape}</h5>
				</div>
				<div class="collapse-card">
					<div class="card-body mb-3">
						<div class="turbo-list turbo-related-list">
							<div class="turbo-list-body related-projects sortable">
								{foreach $related_projects as $related_project}
									<div class="js-row turbo turbo-list-body-item js-sort-item">
										<div class="turbo-list-row">
											<div class="turbo-list-boding turbo-list-drag move-zone">
												<i class="align-middle" transform="rotate(-45)" data-feather="maximize-2"></i>
											</div>
											<div class="turbo-list-boding turbo-list-related-photo">
												<input type="hidden" name="related_projects[]" value="{$related_project->id}">
												<a href="{url module=ProjectAdmin id=$related_project->id}">
													{if $related_project->images[0]}
														<img class="project-icon" src='{$related_project->images[0]->filename|resize:40:40}'>
													{else}
														<i class="align-middle" data-feather="camera"></i>
													{/if}
												</a>
											</div>
											<div class="turbo-list-boding turbo-list-related-name">
												<a href="{url module=ProjectAdmin id=$related_project->id}" class="fw-bold text-body text-decoration-none">{$related_project->name|escape}</a>
											</div>
											<div class="turbo-list-boding turbo-list-delete">
												<button type="button" class="btn-delete js-remove-item" data-bs-toggle="tooltip" data-bs-placement="top" title="{$btr->global_delete_project|escape}">
													<i class="align-middle" data-feather="trash-2"></i>
												</button>
											</div>
										</div>
									</div>
								{/foreach}
								<div id="new-related-project" class="js-row turbo turbo-list-body-item js-sort-item" style='display:none;'>
									<div class="turbo-list-row">
										<div class="turbo-list-boding turbo-list-drag move-zone">
											<i class="align-middle" transform="rotate(-45)" data-feather="maximize-2"></i>
										</div>
										<div class="turbo-list-boding turbo-list-related-photo">
											<input type="hidden" name="related_projects[]" value="">
											<img class="project-icon" src="">
										</div>
										<div class="turbo-list-boding turbo-list-related-name">
											<a href="" class="fw-bold text-body text-decoration-none related-project-name"></a>
										</div>
										<div class="turbo-list-boding turbo-list-delete">
											<button type="button" class="btn-delete js-remove-item" data-bs-toggle="tooltip" data-bs-placement="top" title="{$btr->global_delete_project|escape}">
												<i class="align-middle" data-feather="trash-2"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="form-label mt-3">{$btr->global_recommended_add|escape}</div>
						<div class="autocomplete-arrow">
							<input type="text" name="related" id="related-projects" class="form-control" placeholder='{$btr->global_add_project|escape}'>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-4 col-md-12">
			<div class="card mh-315px">
				<div class="card-header">
					<div class="card-actions float-end">
						<div class="d-block d-lg-none position-relative collapse-icon">
							<a href="javascript:;" class="collapse-chevron">
								<i class="align-middle" data-feather="chevron-up"></i>
							</a>
						</div>
					</div>
					<h5 class="card-title mb-0">{$btr->global_extra_options|escape}</h5>
				</div>
				<div class="collapse-card">
					<div class="card-body">
						<div class="mb-3">
							<div class="form-label">{$btr->global_customer|escape}</div>
							<input name="client" class="form-control" type="text" value="{$project->client|escape}">
						</div>
						<div class="mb-3">
							<div class="form-label">{$btr->url_site|escape}</div>
							<input name="site" class="form-control" type="text" value="{$project->site|escape}">
						</div>
						<div class="mb-3">
							<div class="form-label">{$btr->project_type|escape}</div>
							<input name="type" class="form-control" type="text" value="{$project->type|escape}">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-12">
			<div class="card">
				<div class="card-header">
					<div class="card-actions float-end">
						<div class="d-block d-lg-none position-relative collapse-icon">
							<a href="javascript:;" class="collapse-chevron">
								<i class="align-middle" data-feather="chevron-up"></i>
							</a>
						</div>
					</div>
					<h5 class="card-title mb-0">{$btr->global_metatags|escape}</h5>
				</div>
				<div class="collapse-card">
					<div class="card-body">
						<div class="row">
							<div class="col-lg-6 col-md-6">
								<div class="mb-3">
									<div class="form-label">Meta-title <span id="js-meta-title-counter"></span></div>
									<input name="meta_title" class="form-control js-meta-field mb-h" type="text" value="{$project->meta_title|escape}">
								</div>
								<div class="mb-3">
									<div class="form-label">Meta-keywords</div>
									<input name="meta_keywords" class="form-control js-meta-field mb-h" type="text" value="{$project->meta_keywords|escape}">
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="form-label">Meta-description <span id="js-meta-description-counter"></span></div>
								<textarea name="meta_description" class="form-control turbo-textarea js-meta-field">{$project->meta_description|escape}</textarea>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-12">
			<div class="tab">
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item" role="presentation"><a class="nav-link active" href="#tab-1" data-bs-toggle="tab" role="tab" aria-selected="true">{$btr->global_short_description|escape}</a></li>
					<li class="nav-item" role="presentation"><a class="nav-link" href="#tab-2" data-bs-toggle="tab" role="tab" aria-selected="false" tabindex="-1">{$btr->global_full_description|escape}</a></li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active show" id="tab-1" role="tabpanel">
						<textarea name="annotation" id="annotation" class="editor">{$project->annotation|escape}</textarea>
					</div>
					<div class="tab-pane" id="tab-2" role="tabpanel">
						<textarea id="js-editor" name="body" class="editor js-editor-class">{$project->text|escape}</textarea>
					</div>
				</div>
			</div>
		</div>
		<div class="col-12">
			<div class="d-grid d-sm-block">
				<button type="submit" class="btn btn-primary float-end mt-n2">
					<i class="align-middle" data-feather="check"></i>
					{$btr->global_apply|escape}
				</button>
			</div>
		</div>
	</div>
</form>

{* TinyMCE *}
{include file='tinymce_init.tpl'}

{* Autocomplete *}
{js id="autocomplete" priority=99 include=[
	"turbo/design/js/autocomplete/jquery.autocomplete-min.js"
]}{/js}
{javascript minify=true}



{literal}
	<script>
		$(window).on("load", function() {

			// Images collapse
			$(document).on("click", ".js-show-images", function() {
				$(".js-toggle-hidden").toggleClass("d-none");
				$('.js-icon-arrow').toggleClass('rotate-180');
			});

			// Flatpickr
			flatpickr(".flatpickr", {
				dateFormat: "d.m.Y",
				locale: "{/literal}{if $settings->lang =='ua'}uk{else}{$settings->lang}{/if}{literal}"
			});

			// Delete project
			$(document).on("click", ".js-remove-item", function() {
				$(this).closest(".js-row").fadeOut(200, function() { $(this).remove(); });
				return false;
			});

			var image_item_clone = $(".js-new-image-item").clone(true).removeClass('d-none');
			$(".js-new-image-item").remove();
			var new_image_tem_clone = $(".js-new-spec-image-item").clone(true).removeClass('d-none');
			$(".js-new-spec-image-item").remove();

			// Drop
			if (window.File && window.FileReader && window.FileList) {
				$(".js-dropzone").on('dragover', function(e) {
					e.preventDefault();
					{/literal}
						{if $settings->admin_theme == "dark"}
							$(this).css('background', '#28323f');
						{else}
							$(this).css('background', '#f8f8f8');
						{/if}
					{literal}
				});
				$(".js-dropzone").on('dragleave', function() {
					{/literal}
						{if $settings->admin_theme == "dark"}
							$(this).css('background', '#28323f');
						{else}
							$(this).css('background', '#f8f8f8');
						{/if}
					{literal}
				});

				function handleFileSelect(evt) {
					dropInput = $(this).closest(".js-droplist-wrap").find("input.dropinput:last").clone();
					var parent = $(this).closest(".js-droplist-wrap");
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
								parent.find(".js-dropzone").append(temp_input);
							};
						})(f);
						// Read in the image file as a data URL.
						reader.readAsDataURL(f);
					}
					$(".js-dropzone").removeAttr("style");
				}
				$(document).on('change', '.dropinput', handleFileSelect);
			}
				
			$(document).on("click", ".js-remove-image", function() {
				$(this).closest("li").remove();
			});

			// New related project
			var new_related_project = $('#new-related-project').clone(true);
			$('#new-related-project').remove();
			new_related_project.removeAttr('id');
			$("input#related-projects").autocomplete({
				serviceUrl: 'ajax/search_projects.php',
				minChars: 0,
				maxHeight: 362,
				noCache: false,
				onSelect: function(suggestion) {
					$("input#related-projects").val('').focus().blur();
					new_item = new_related_project.clone().appendTo('.related-projects');
					new_item.find('a.related-project-name').html(suggestion.data.name);
					new_item.find('a.related-project-name').attr('href', 'index.php?module=ProjectAdmin&id=' + suggestion.data.id);
					new_item.find('input[name*="related_projects"]').val(suggestion.data.id);
					if (suggestion.data.image)
						new_item.find('img.project-icon').attr("src", suggestion.data.image);
					else
						new_item.find('img.project-icon').remove();
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