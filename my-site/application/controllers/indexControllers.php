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
}
