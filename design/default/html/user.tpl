{* Registered User Page Template *}

<!-- Breadcrumb /-->
<nav class="mt-4" aria-label="breadcrumb">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="{if $lang_link}{$lang_link}{else}/{/if}">{$lang->home}</a></li>
		<li class="breadcrumb-item active" aria-current="page">{$user->name|escape}</li>
	</ol>
</nav>
<!-- Breadcrumb #End /-->

<h1 class="mt-4">{$user->name|escape}</h1>

{if $error}
	<div class="alert alert-danger" role="alert">
		{if $error == 'empty_name'}
			{$lang->enter_your_name}
		{elseif $error == 'empty_email'}
			{$lang->enter_your_email}
		{elseif $error == 'empty_password'}
			{$lang->enter_password}
		{elseif $error == 'user_exists'}
			{$lang->email_already_registered}
		{else}
			{$error}
		{/if}
	</div>
{/if}

<div class="col-md-6 offset-md-3">
	<form class="form-horizontal mt-4" role="form" method="post">
		<div class="mb-3">
			<label for="name">{$lang->name}</label>
			<input type="text" class="form-control" name="name" id="name" value="{$name|escape}" placeholder="{$lang->enter_your_name}" maxlength="255">
		</div>
		<div class="mb-3">
			<label for="email">Email</label>
			<input type="text" class="form-control" name="email" id="email" value="{$email|escape}" placeholder="{$lang->enter_your_email}" maxlength="255">
		</div>
		<div class="mb-3">
			<label for="phone">{$lang->phone}</label>
			<input type="text" class="form-control" name="phone" id="phone" value="{$phone|escape}" placeholder="{$lang->enter_phone_number}" maxlength="255">
		</div>
		<div class="mb-3">
			<label for="password"><a class="text-decoration-none" data-bs-toggle="collapse" href="#collapsePassword" role="button" aria-expanded="false" aria-controls="collapsePassword">{$lang->change_password}</a></label>
			<div class="collapse" id="collapsePassword">
				<input type="password" class="form-control" name="password" id="password" value="">
			</div>	
		</div>
		<div class="mt-3">
			<div class="col-sm-offset-2">
				<input type="submit" class="btn btn-primary" value="{$lang->save}">
			</div>
		</div>
	</form>
</div>