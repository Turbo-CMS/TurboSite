{$meta_title = $btr->left_clear_title scope=global}

<div class="row">
	<progress id="progressbar" class="progress progress-xs progress-info mt-0" style="display: none" value="0" max="100"></progress>
</div>

<div class="row">
    <div class="col-lg-7 col-md-7">
        <div class="heading_page">{$btr->left_clear_title|escape}</div>
    </div>
    <div class="col-lg-5 col-md-5 text-xs-right float-xs-right"></div>
</div>

<div class="row">
	<div class="col-lg-12 col-md-12">
		<div class="boxed fn_toggle_wrap">
			<div class="heading_box">
				{$btr->settings_general_options|escape}
				<div class="toggle_arrow_wrap fn_toggle_card text-primary">
					<a class="btn-minimize" href="javascript:;" ><i class="fa fn_icon_arrow fa-angle-down"></i></a>
				</div>
			</div>
			<div class="toggle_body_wrap on fn_card">
				<div class="row">
					<div class="col-lg-2 col-md-6">
						<div class="heading_label">{$btr->site_cache|escape}</div>
						<div class="mb-1">
							<a class="btn btn_small btn-danger" id="clear_site" href="javascript:void(0);">
								{include file='svg_icon.tpl' svgId='refresh_icon'}
								<span>{$btr->clear_cache|escape}</span>
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-md-6">
						<div class="heading_label">{$btr->admin_cache|escape}</div>
						<div class="mb-1">
							<a class="btn btn_small btn-danger" id="clear_admin" href="javascript:void(0);">
								{include file='svg_icon.tpl' svgId='refresh_icon'}
								<span>{$btr->clear_cache|escape}</span>
							</a>
						</div>
					</div>
					<div class="col-lg-2 col-md-6">
						<div class="heading_label">{$btr->clear_resize_images|escape}</div>
						<div class="mb-1">
							<a class="btn btn_small btn-danger" id="clear_resize" href="javascript:void(0);">
								{include file='svg_icon.tpl' svgId='refresh_icon'}
								<span>{$btr->remove_resize_images|escape}</span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
   
<script src="{$config->root_url}/turbo/design/js/piecon/piecon.js"></script>
{literal}
<script>
$(document).on('click','#clear_site',function(){
	Piecon.setOptions({fallback: 'force'});
	Piecon.setProgress(0);
	var progress_item = $("#progressbar");
	progress_item.show();
	clear_site('',progress_item);
});

function clear_site(page,progress) {
	page = typeof(page) != 'undefined' ? page : 1;
	$.ajax({
		url: "ajax/clear_site.php",
		dataType: 'json',
		success: function(data){
			if(data && !data.end) {
				Piecon.setProgress(Math.round(100*data.page/data.totalpages));
				progress.attr('value',100*data.page/data.totalpages);
				clear_site(data.page*1+1,progress);
			}
			else {
				Piecon.setProgress(100);
				progress.attr('value','100');
				progress.fadeOut(500);
			}
		},
		error:function(xhr, status, errorThrown) {
			alert(errorThrown+'\n'+xhr.responseText);
		}
	});
}

$(document).on('click','#clear_admin',function(){
	Piecon.setOptions({fallback: 'force'});
	Piecon.setProgress(0);
	var progress_item = $("#progressbar");
	progress_item.show();
	clear_admin('',progress_item);
});

function clear_admin(page,progress) {
	page = typeof(page) != 'undefined' ? page : 1;
	$.ajax({
		url: "ajax/clear_admin.php",
		dataType: 'json',
		success: function(data){
			if(data && !data.end) {
				Piecon.setProgress(Math.round(100*data.page/data.totalpages));
				progress.attr('value',100*data.page/data.totalpages);
				clear_admin(data.page*1+1,progress);
			}
			else {
				Piecon.setProgress(100);
				progress.attr('value','100');
				progress.fadeOut(500);
			}
		},
		error:function(xhr, status, errorThrown) {
			alert(errorThrown+'\n'+xhr.responseText);
		}
	});
}

// On document load
$(document).on('click','#clear_resize',function(){
	Piecon.setOptions({fallback: 'force'});
	Piecon.setProgress(0);
	var progress_item = $("#progressbar");
	progress_item.show();
	clear_resize('',progress_item);
});

function clear_resize(page,progress) {
	page = typeof(page) != 'undefined' ? page : 1;
	$.ajax({
		url: "ajax/clear_resize.php",
		dataType: 'json',
		success: function(data){
			if(data && !data.end) {
				Piecon.setProgress(Math.round(100*data.page/data.totalpages));
				progress.attr('value',100*data.page/data.totalpages);
				clear_resize(data.page*1+1,progress);
			}
			else {
				Piecon.setProgress(100);
				progress.attr('value','100');
				progress.fadeOut(500);
			}
		},
		error:function(xhr, status, errorThrown) {
			alert(errorThrown+'\n'+xhr.responseText);
		}
	});
}
</script>
{/literal}	