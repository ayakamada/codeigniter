<!DOCTYPE html>
<html lang="ja">
{block name="head"}
  <head>
    <meta charset="UTF-8">
    <title>
    {block name='title'}タイトル{/block}
    </title>
    {block name='meta'}
    <meta name="description" content="{block name='description'}{/block}" />
    <meta name="keywords" content="{block name='keywords'}キーワード{/block}" />
    {/block}
    {block name='robots'}{/block}
    {block name='canonical'}{/block}
    {block name='jquery'}{/block}
    {block name='js'}{/block}
    {block name='css'}{/block}
    {block name='analytics'}{/block}
  </head>
{/block}
<body>
  {block name='inner-analytics'}{/block}
  {block name='header'}
  <header>
  site title
  </header>
  {/block}
  {block name='body'}{/block}
  {block name='footer'}
    <footer>
    {block name='footer_inner'}
      <small>サイトname</small>
    {/block}
    </footer>
  {/block}
</body>
</html>