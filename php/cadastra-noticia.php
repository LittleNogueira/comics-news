<?php


  spl_autoload_register(function($class){
    require_once($class.".php");
  });

  $factory = new ConnectionFactory();
  $noticia = new Noticia();
  $noticiaDao = new NoticiaDao($factory->getConnection());

  $data = new DateTime('now', new DateTimeZone('America/Manaus'));

  $noticia->setAutor($_POST['autor']);
  $noticia->setTitulo($_POST['titulo']);
  $noticia->setDescricao($_POST['descricao']);
  $noticia->setData($data->format("Y-m-d h:i:s"));
  $noticia->setImg($data->format("Ymdhis").".jpg");

  $destino = "../images/".$data->format("Ymdhis").".jpg";
  $arquivo_tmp = $_FILES['img']['tmp_name'];
  move_uploaded_file($arquivo_tmp,$destino);

  $json = array();

  if($noticiaDao->cadastraNoticia($noticia)){
    $json['success'] = 0;
  }else{
    $json['success'] = 1;
  }

  echo json_encode($json);


?>
