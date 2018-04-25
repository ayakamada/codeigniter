{block name='footer'}
  <footer>
    {block name='footer_inner'}
      <small>{$constdata.site_name}</small>
    {/block}
  </footer>
  <em>&copy;{$smarty.now|date_format:"%Y"}</em>
{/block}
