<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class IndexControllers extends CI_Controller {

  public function index()
  {
    //  echo '<pre>';
    //  var_dump($this->my_smarty->view('templates/index/index.tpl'));
    //  echo '</pre>';
    $this->my_smarty->view('index/index.tpl');
  }

  public function article()
  {
    $this->my_smarty->view('howto/howto.tpl');

    // $params = $this->_getAllParams();

    $article_list = $this->_getConfig()->get('/pages/pages.yml', array());
    $article = array();

    echo '<pre>';
    var_dump($article);
    echo '</pre>';
    // foreach ($article_list as $item)
    // {
    //   if ($item['key'] == $params['key'])
    //   {
    //     $article = $item;
    //     break;
    //   }
    // }
    // $this->my_smarty->assign('params', $params);
    // $this->my_smarty->assign('article', $article);
  }

}
