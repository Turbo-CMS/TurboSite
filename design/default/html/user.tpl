{* User *}

{* Page Title *}
<h1 class="mt-4">{$user->name|escape}</h1>

{* Error *}
{if $error}
	<div class="alert alert-danger" role="alert">
		{if $error == 'empty_name'}
			{$lang->enter_your_name|escape}
		{elseif $error == 'empty_email'}
			{$lang->enter_your_email|escape}
		{elseif $error == 'empty_password'}
			{$lang->enter_password|escape}
		{elseif $error == 'user_exists'}
			{$lang->email_already_registered|escape}
		{else}
			{$error}
		{/if}
	</div>
{/if}

{* Success *}
{if $success}
	<div class="alert alert-success" role="alert">
		{$lang->message_success|escape}
	</div>
{/if}

<div class="col-md-6 offset-md-3">
	<form class="form-horizontal needs-validation mt-4" role="form" method="post" novalidate>
		<div class="mb-3">
			<label for="name" class="form-label">{$lang->name|escape}<span class="text-danger">*</span></label>
			<input type="text" class="form-control" name="name" id="name" value="{$name|escape}" placeholder="{$lang->enter_your_name|escape}" maxlength="255" required>
			<div class="invalid-feedback">{$lang->enter_your_name|escape}</div>
		</div>
		<div class="mb-3">
			<label for="email" class="form-label">Email<span class="text-danger">*</span></label>
			<input type="text" class="form-control" name="email" id="email" value="{$email|escape}" placeholder="{$lang->enter_your_email|escape}" maxlength="255" required>
			<div class="invalid-feedback">{$lang->enter_your_email|escape}</div>
		</div>
		<div class="mb-3">
			<label for="phone" class="form-label">{$lang->phone|escape}</label>
			<input type="text" class="form-control" name="phone" id="phone" value="{$phone|escape}" placeholder="{$lang->enter_phone_number|escape}" maxlength="255">
		</div>
		<div class="mb-3">
			<label for="password" class="form-label"><a class="text-decoration-none" data-bs-toggle="collapse" href="#collapsePassword" role="button" aria-expanded="false" aria-controls="collapsePassword">{$lang->change_password|escape}</a></label>
			<div class="collapse" id="collapsePassword">
				<input type="password" class="form-control" name="password" id="password" value="">
			</div>
		</div>
		<div class="mt-3">
			<div class="col-sm-offset-2">
				<input type="submit" class="btn btn-primary" value="{$lang->save|escape}">
			</div>
		</div>
	</form>
</div>