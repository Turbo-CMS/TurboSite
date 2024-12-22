{* Toolbar Mobile *}

{if $module != 'MainView'}
	<nav class="handheld-toolbar fixed-bottom bg-body-tertiary d-block d-lg-none shadow-top">
		<div class="container-fluid text-center">
			<div class="row align-items-start pt-2 pb-1">
				<div class="col border-end">
					<button type="button" class="btn btn-link" data-bs-toggle="offcanvas" href="#sidebar" role="button" aria-controls="sidebar">
						<i class="fal fa-bars text-muted fs-4"></i>
					</button>
				</div>
			</div>
		</div>
	</nav>
{/if}