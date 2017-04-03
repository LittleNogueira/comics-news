<?php  

spl_autoload_register(function($class){
	require_once($class.".php");
});

$factory = new ConnectionFactory();
$noticiaDao = new NoticiaDao($factory->getConnection());

$noticias = $noticiaDao->pesquisaNoticia($_POST['pesquisa']);

echo json_encode($noticias);

?>