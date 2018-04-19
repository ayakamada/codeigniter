<?php

class Util {

public static function trimPath($path){
  $path = ltrim($path, '/');
  $path = rtrim($path, '/');
  $path = rtrim($path, '.php');
  return $path;
}

public static function getRequestUri(){
  return $_SERVER["REQUEST_URI"];
}

public static function dump($value){
  echo '<pre>';
  echo var_dump($value);
  echo '</pre>';
}

}

?>