<?php  

spl_autoload_register(function($class){
	require_once($class.".php");
});

$factory = new ConnectionFactory();
$noticiaDao = new NoticiaDao($factory->getConnection());

$noticia = $noticiaDao->selecionaNoticia($_POST['id']);


echo json_encode($noticia);

?>