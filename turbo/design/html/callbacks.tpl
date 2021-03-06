{* Title *}
{$meta_title=$btr->callbacks_order scope=global}

<div class="row">
    <div class="col-lg-7 col-md-7">
        <div class="wrap_heading">
            <div class="box_heading heading_page">
                {$btr->callbacks_requests|escape} ({$callbacks_count})
            </div>
        </div>
    </div>
</div>

<div class="boxed fn_toggle_wrap">
    {if $callbacks}
    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <form class="fn_form_list" method="post">
                <input type="hidden" name="session_id" value="{$smarty.session.id}">
                
                <div class="post_wrap turbo_list">
                    <div class="turbo_list_head">
                        <div class="turbo_list_heading turbo_list_check">
                            <input class="hidden_check fn_check_all" type="checkbox" id="check_all_1" name="" value=""/>
                            <label class="turbo_ckeckbox" for="check_all_1"></label>
                        </div>
                        <div class="turbo_list_heading turbo_list_comments_name">{$btr->callbacks_requests|escape}</div>
                        <div class="turbo_list_heading turbo_list_comments_btn"></div>
                        <div class="turbo_list_heading turbo_list_close"></div>
                    </div>
                    <div class="turbo_list_body">
                        {foreach $callbacks as $callback}
                        <div class="fn_row turbo_list_body_item {if !$callback->processed}unapproved{/if}">
                            <div class="turbo_list_row">
                                <div class="turbo_list_boding turbo_list_check">
                                    <input class="hidden_check" type="checkbox" id="id_{$callback->id}" name="check[]" value="{$callback->id}"/>
                                    <label class="turbo_ckeckbox" for="id_{$callback->id}"></label>
                                </div>
                                
                                <div class="turbo_list_boding turbo_list_comments_name">
                                    <div class="turbo_list_text_inline mb-q mr-1">
                                        <span class="text_dark text_bold">{$btr->general_name|escape}: </span> {$callback->name|escape}
                                    </div>
                                    <div class="turbo_list_text_inline mb-q mr-1">
                                        <span class="text_dark text_bold">{$btr->general_phone|escape}: </span>{$callback->phone|escape}
                                    </div>
									{if $callback->email}
									<div class="turbo_list_text_inline mb-q">
                                        <span class="text_dark text_bold">  {$btr->general_email|escape}: </span>{$callback->email|escape}
                                    </div>
									{/if}
                                    {if $callback->message}
									<div class="mb-q">
                                        <span class="text_dark text_bold">{$btr->general_message|escape} </span>
                                        {$callback->message|escape|nl2br}
                                    </div>
									{/if}
                                    <div>
                                        {$btr->general_request_sent|escape}: <span class="tag tag-default">{$callback->date|date} | {$callback->date|time}</span>
                                    </div>
                                    {if !$callback->processed}
                                    <div class="hidden-md-up mt-q">
                                        <button type="button" class="btn btn_small btn-outline-warning fn_ajax_action {if $callback->processed}fn_active_class{/if}" data-module="callback" data-action="processed" data-id="{$callback->id}" onclick="$(this).hide();">
                                            {$btr->general_process|escape}
                                        </button>
                                    </div>
                                    {/if}
                                </div>
                                
                                <div class="turbo_list_boding turbo_list_comments_btn">
                                    {if !$callback->processed}
                                    <button type="button" class="btn btn_small unapproved btn-outline-warning fn_ajax_action {if $callback->processed}fn_active_class{/if}" data-module="callback" data-action="processed" data-id="{$callback->id}" onclick="$(this).hide();">
                                        {$btr->general_process|escape}
                                    </button>
                                    {/if}
                                </div>
                                
                                <div class="turbo_list_boding turbo_list_close">
                                    {*delete*}
                                    <button data-hint="{$btr->general_delete_request|escape}" type="button" class="btn_close fn_remove hint-bottom-right-t-info-s-small-mobile  hint-anim" data-toggle="modal" data-target="#fn_action_modal" onclick="success_action($(this));">
                                        {include file='svg_icon.tpl' svgId='delete'}
                                    </button>
                                </div>
                            </div>
                        </div>
                        {/foreach}
                    </div>
                    
                    <div class="turbo_list_footer fn_action_block">
                        <div class="turbo_list_foot_left">
                            <div class="turbo_list_heading turbo_list_check">
                                <input class="hidden_check fn_check_all" type="checkbox" id="check_all_2" name="" value=""/>
                                <label class="turbo_ckeckbox" for="check_all_2"></label>
                            </div>
                            <div class="turbo_list_option">
                                <select name="action" class="selectpicker">
                                    <option value="processed">{$btr->general_process|escape}</option>
                                    <option value="delete">{$btr->general_delete|escape}</option>
                                </select>
                            </div>
                        </div>
                        <button type="submit" class="btn btn_small btn_green">
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
        <div class="text_grey">{$btr->general_no_request|escape}</div>
    </div>
    {/if}
</div>                