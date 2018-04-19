<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class IndexControllers extends CI_Controller {

  public function index()
  {
    $this->my_smarty->view('index/index.tpl');
  }

  public function article()
  {
    require_once APPPATH.'libraries/Spyc.php';
    require_once APPPATH.'libraries/Util.php';
    $page_list = Spyc::YAMLLoad(APPPATH.'config/pages/pages.yaml');


    $path = Util::trimPath(Util::getRequestUri());
    $path = explode("/",$path);

    $page_key = end($path);
    reset($path);

    $pagedata = $this->_getPage($page_key, $page_list);

   Util::dump($pagedata);

    $this->my_smarty->view('howto/howto.tpl');
    $this->my_smarty->assign('pagedata', $pagedata);
  }


// ページ情報の取得
  public function _getPage($key, array $pages){
    foreach($pages as $page){
      if($page['key'] == $key){
        return $page;
      }
    }
    return false;
  }

}
