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
      <link rel="stylesheet" href="/assets/css/style.css">
    {/block}
    {block name='analytics'}{/block}
  </head>
{/block}