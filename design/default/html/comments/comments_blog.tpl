{if $comments}
	{* Sort *}
	<div class="btn-toolbar justify-content-between mb-4" role="toolbar" aria-label="sortComments">
		{if isset($comments_count)}
			{$comments_count} {$comments_count|plural:$lang->comment_1:$lang->comment_2:$lang->comment_3}
		{/if}
		<div class="btn-group" role="group" aria-label="btnGroup">
			<a href="{url sort=rate page=null}" class="sort-comments text-decoration-none me-3 {if isset($sort) && $sort=='rate'}active{/if}">{$lang->popular}</a>
			<a href="{url sort=date page=null}" class="sort-comments text-decoration-none {if isset($sort) && $sort=='date'}active{/if}">{$lang->in_order}</a>
		</div>
	</div>

	<hr class="text-black-50">

	{* Error *}
	{if isset($error)}
		<div class="alert alert-danger my-4" role="alert">
			{if $error=='captcha'}
				{$lang->captcha_incorrect}
			{elseif $error=='empty_name'}
				{$lang->enter_your_name}
			{elseif $error=='empty_comment'}
				{$lang->enter_a_comment}
			{/if}
		</div>
	{/if}

	{* Single Comment *}
	{function name=comments_tree level=0}
		{foreach $comments as $comment name=tree}
			<a name="comment_{$comment->id}"></a>
			<div class="media comments {if $level == 1 && $smarty.foreach.tree.first}mt-4{/if}">
				{if $comment->admin == 1}
					<i class="fal fa-user-headset fa-2x d-flex me-3 text-primary"></i>
				{else}
					<i class="fal fa-user fa-2x d-flex me-3 text-muted"></i>
				{/if}
				<div class="media-body">
					<h5 class="mt-0 {if $comment->admin == 1}admin text-primary{/if}">{$comment->name|escape}</h5>
					<div class="small text-muted">
						{$comment->date|date} {$lang->at} {$comment->date|time}
						{if !$comment->approved}
							<span class="text-danger">{$lang->awaiting_moderation}</span>
						{/if}
					</div>
					<div class="my-1">{$comment->text|escape|nl2br}</div>
					<div class="float-end btn-group vote">
						<a class="btn vote-button-plus" href="ajax/comment_rate.php?id={$comment->id}&rate=up">
							<i class="fa fa-chevron-up" aria-hidden="true"></i>
						</a>
						{if $comment->rate>0}
							<div class="btn vote-value pos">{$comment->rate}</div>
						{elseif $comment->rate == 0}
							<div class="btn text-muted vote-value">{$comment->rate}</div>
						{else}
							<div class="btn vote-value neg">{$comment->rate}</div>
						{/if}
						<a class="btn vote-button-minus" href="ajax/comment_rate.php?id={$comment->id}&rate=down">
							<i class="fa fa-chevron-down" aria-hidden="true"></i>
						</a>
					</div>
					{if $level == 0 && isset($smarty.session.admin) && $smarty.session.admin == 'admin'}
						<div id="{$comment->id}" class="comments-item-reply comment">
							<span data-close-text="{$lang->close}" data-reply-text="{$lang->reply}">{$lang->reply}</span>
						</div>
					{/if}
					{if isset($children[$comment->id])}
						{comments_tree comments=$children[$comment->id] level=$level+1}
					{/if}
				</div>
			</div>
		{/foreach}
	{/function}
	{comments_tree comments = $comments}

	{* Paginations *}
	{include file='paginations/pagination.tpl'}
{else}
	<div class="my-1">
		{$lang->no_comments}
	</div>
{/if}

{* Coment Form *}
<a class="btn btn-success mt-2 comments-reply-form" href="#commentForm" role="button" data-close-text="<i class='fal fa-xmark me-2'></i>{$lang->close}" data-comment-text="<i class='fal fa-comment me-2'></i>{$lang->comment_on}"><i class="fa-light fa-comment me-2"></i>{$lang->comment_on}</a>
<div class="collapse mb-4" id="commentForm">
	<form class="form-horizontal needs-validation mt-4" role="form" method="post" novalidate>
		<input type="hidden" id="hidden">
		<input type="hidden" id="parent" name="parent_id" value="0">
		<input type="hidden" id="admin" name="admin" value="{if isset($smarty.session.admin) && $smarty.session.admin == 'admin'}1{else}0{/if}">
		<div class="mb-3">
			<label for="comment" class="form-label">{$lang->comment}<span class="text-danger">*</span></label>
			<textarea class="form-control" name="text" id="comment" placeholder="{$lang->enter_a_comment}" rows="4" required>{if isset($comment_text)}{$comment_text}{/if}</textarea>
			<div class="invalid-feedback">{$lang->enter_a_comment}</div>
		</div>
		<div class="mb-3">
			<label for="comment-name" class="form-label">{$lang->name}<span class="text-danger">*</span></label>
			<input type="text" class="form-control" name="name" id="comment-name" value="{if isset($comment_text)}{$comment_name|escape}{/if}" placeholder="{$lang->enter_your_name}" required>
			<div class="invalid-feedback">{$lang->enter_your_name}</div>
		</div>
		{if $settings->captcha_post}
			<div class="row">
				<label for="captcha" class="form-label">{$lang->captcha}<span class="text-danger">*</span></label>
				<div class="col-md-2 mb-3">
					{get_captcha var="captcha_post"}
					<div class="secret-number">{$captcha_post[0]|escape} + ? = {$captcha_post[1]|escape}</div>
				</div>
				<div class="col-md-10">
					<input type="text" id="captcha" class="form-control" name="captcha_code" value="" placeholder="{$lang->enter_captcha}" autocomplete="off" required>
					<div class="invalid-feedback">{$lang->enter_captcha}</div>
				</div>
			</div>
		{/if}
		<div class="mt-md-0 mt-3">
			<div class="col-sm-offset-2">
				<input type="submit" class="btn btn-primary" name="comment" value="{$lang->send}">
			</div>
		</div>
	</form>
</div>