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
    {block name='css'}
      <link rel="stylesheet" href="../../../assets/css/main.css">
    {/block}
    {block name='analytics'}{/block}
  </head>
{/block}
{block name='body'}
<body>
  {block name='inner-analytics'}{/block}
  {block name='header'}
  <header>
   <img src="/assets/img/no_img.jpg" alt="logo">
  </header>
  {/block}
  {block name="side"}
  <nav>
    <ul>
    {foreach $pagelist as $pages}
      <li><a href="">{$pages.title}</a></li>
    {/foreach}
    </ul>
  </nav>
  {/block}
  {block name="main"}
  {/block}
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