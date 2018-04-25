<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class IndexControllers extends CI_Controller {
  public function _getLibraries() {
    require_once APPPATH.'libraries/Spyc.php';
    require_once APPPATH.'libraries/Util.php';

  }

  public function index()
  {
    $this->_getLibraries();//yaml, Util読み込み
    $page_list = Spyc::YAMLLoad(APPPATH.'config/pages/pages.yaml');
    $const_data = Spyc::YAMLLoad(APPPATH.'config/const/const.yaml');

    $this->my_smarty->assign('constdata', $const_data);
    $this->my_smarty->assign('pagelist', $page_list);

    $this->my_smarty->assign('pagedata', $page_list['home']);
    $this->my_smarty->view('index/index.tpl');
  }

  public function howto()
  {
    $this->_getLibraries();//yaml, Util読み込み
    $page_list = Spyc::YAMLLoad(APPPATH.'config/pages/pages.yaml');
    $const_data = Spyc::YAMLLoad(APPPATH.'config/const/const.yaml');

    $this->my_smarty->assign('constdata', $const_data);
    $this->my_smarty->assign('pagelist', $page_list);

    $this->my_smarty->assign('pagedata', $page_list['howto']);
    $this->my_smarty->view('howto/howto.tpl');
  }

  public function face()
  {
    $this->_getLibraries();//yaml, Util読み込み
    $page_list = Spyc::YAMLLoad(APPPATH.'config/pages/pages.yaml');
    $const_data = Spyc::YAMLLoad(APPPATH.'config/const/const.yaml');

    $this->my_smarty->assign('constdata', $const_data);
    $this->my_smarty->assign('pagelist', $page_list);

    $this->my_smarty->assign('pagedata', $page_list['face']);
    $this->my_smarty->view('howto/face.tpl');
  }

}
