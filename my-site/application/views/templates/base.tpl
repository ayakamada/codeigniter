<!DOCTYPE html>
<html lang="ja">
{block name="head"}
  <head>
    <meta charset="UTF-8">
    {block name='title'}
    <title>
      {$pagedata.title} | {$constdata.site_name}
    {/block}
    </title>
    {block name='meta'}
    <meta name="description" content="{block name='description'}{$pagedata.description}{/block}" />
    <meta name="keywords" content="{block name='keywords'}{$pagedata.keyword}{/block}" />
    {/block}
    {block name='robots'}{/block}
    {block name='canonical'}{/block}
    {block name='jquery'}{/block}
    {block name='js'}{/block}
    {block name='css'}{/block}
    {block name='analytics'}{/block}
  </head>
{/block}
{block name='body'}
<body>
  {block name='inner-analytics'}{/block}
  {block name='header'}
  <header>
   <img src="" alt="logo">
  </header>
  {/block}
  {block name="main"}
  <p></p>{/block}
  {block name='footer'}
    <footer>
    {block name='footer_inner'}
      <small>{$constdata.site_name}</small>
    {/block}
    </footer>
  {/block}
</body>
{/block}
</html>