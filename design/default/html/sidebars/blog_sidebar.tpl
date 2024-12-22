{* Search Blog *}
<form class="input-group my-4" action="{$lang_link}blog">
    <input class="blog-search form-control" type="text" name="keyword" autocomplete="off" value="{$keyword|escape}" placeholder="{$lang->search_blog|escape}">
    <button class="btn btn-success" type="submit"><i class="fal fa-search"></i></button>
</form>
