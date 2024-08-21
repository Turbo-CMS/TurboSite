{if $condition == 'success'}
	<div class="form-body">
		<div class="form-inner form-inner--popup">
			<div class="form-send">
				<div class="flexbox flexbox--direction-column flexbox--align-center">
					<div class="form-send__icon">
						<i class="svg inline fill-more-theme" aria-hidden="true">
							<svg width="80" height="80">
								<use xlink:href="design/{$settings->theme|escape}/images/svg/sprite/form_icons.svg#success-80-80"></use>
							</svg>
						</i>
					</div>
					<div class="form-send__info">
						<div class="form-send__info-title switcher-title font_24">{$lang->thank_you}</div>
						<div class="form-send__info-text">
							<p>{$lang->text_success}</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="form-footer">
		<div class="btn btn-transparent-border btn-lg jqmClose btn-wide has-ripple">{$lang->close}</div>
	</div>
{elseif $condition == 'empty_name'}
	<div class="alert alert-danger" role="alert">{$lang->enter_your_name}</div>
{elseif $condition == 'empty_phone'}
	<div class="alert alert-danger" role="alert">{$lang->enter_phone_number}</div>
{elseif $condition == 'captcha_error'}
	<div class="alert alert-danger" role="alert">{$lang->captcha_incorrect}</div>
{/if}