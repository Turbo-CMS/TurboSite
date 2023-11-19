{* Search *}
<form class="input-group my-4" action="{$lang_link}projects">
    <input class="form-control projects-search" type="text" name="keyword" value="{$keyword|escape}" placeholder="{$lang->search}...">
    <button class="btn btn-success" type="submit"><i class="fal fa-search"></i></button>
</form>

{* Projects Categories *}
<div class="list-group my-4">
    {foreach $projects_categories as $c}
        {if $c->visible}
            <span class="hidden-sm-down list-group-item {if $projects_category->id == $c->id}bg-primary{/if}">
                <a data-projects-category="{$c->id}" class="text-decoration-none" href="{$lang_link}projects/{$c->url}">
                    {$c->name|escape}
                </a>
                {if $c->subcategories}
                    <a data-bs-toggle="collapse" data-parent="#sidebar" class="text-decoration-none" href="#menu{$c->id}" {if $projects_category->id == $c->id || in_array($projects_category->id, $c->children)}aria-expanded="true"{/if}>
                        <i class="far fa-angle-down"></i>
                    </a>
                {/if}
            </span>
            {if $c->subcategories}
                <div class="collapse cat {if in_array($projects_category->id, $c->children)}show{/if}" id="menu{$c->id}">
                    {foreach $c->subcategories as $cat}
                        {if $c->visible}
                            <span class="hidden-sm-down list-group-item {if $projects_category->id == $cat->id}bg-primary{/if}">
                                <a data-projects-category="{$cat->id}" class="text-decoration-none" href="{$lang_link}projects/{$cat->url}">
                                    {$cat->name|escape}
                                </a>
                                {if $cat->subcategories}
                                    <a data-bs-toggle="collapse" class="text-decoration-none" href="#menusub{$cat->id}" {if $projects_category->id == $cat->id || in_array($projects_category->id, $cat->children)}aria-expanded="true"{/if}>
                                        <i class="far fa-angle-down"></i>
                                    </a>
                                {/if}
                            </span>
                            {if $cat->subcategories}
                                <div class="collapse cat3 {if in_array($projects_category->id, $cat->children)}show{/if}" id="menusub{$cat->id}">
                                    {foreach $cat->subcategories as $cat3}
                                        {if $cat3->visible}
                                            <a data-projects-category="{$cat3->id}" class="text-decoration-none" href="{$lang_link}projects/{$cat3->url}" class="list-group-item {if $projects_category->id == $cat3->id}bg-primary text-white{/if}" data-parent="#menusub{$cat->id}">{$cat3->name|escape}</a>
                                        {/if}
                                    {/foreach}
                                </div>
                            {/if}
                        {/if}
                    {/foreach}
                </div>
            {/if}
        {/if}
    {/foreach}
</div>