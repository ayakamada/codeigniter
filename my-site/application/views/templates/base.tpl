<!DOCTYPE html>
<html lang="ja">
{include file="./head.tpl"}

{block name='body'}
<body>
  {block name='inner-analytics'}{/block}
  {include file="./header.tpl"}
  {block name="side"}
  <nav>
    <ul>
    {foreach $pagelist as $pages}
      {if $pages.layer == 0}
        <li class="layer1"><a href="/">{$pages.title}</a></li>
      {elseif $pages.layer == 1}
        <li class="layer1"><a href="/{$pages.key}">{$pages.title}</a></li>
        {assign "parent1" $pages.key}
        {elseif $pages.layer == 2}
          <li class="layer2"><a href="/{$parent1}/{$pages.key}">{$pages.title}</a></li>
          {assign "parent2" $pages.key}
        {elseif $pages.layer == 3}
          <li class="layer3"><a href="/{$parent1}/{$parent2}/{$pages.key}">{$pages.title}</a></li>
      {/if}
    {/foreach}
    </ul>
  </nav>
  {/block}
  {block name="main"}
  {/block}
  {include file="./footer.tpl"}
</body>
{/block}
</html>