<?php


  class NoticiaDao{


    private $connection;


    function __construct($connection){
      $this->connection = $connection;
    }

    public function cadastraNoticia(Noticia $noticia){

        $noticia->setTitulo(mysqli_real_escape_string($this->connection,$noticia->getTitulo()));
        $noticia->setDescricao(mysqli_real_escape_string($this->connection,$noticia->getDescricao()));
        $noticia->setAutor(mysqli_real_escape_string($this->connection,$noticia->getAutor()));

		$query = "INSERT INTO noticia(titulo,descricao,img,data,autor)
			VALUES(
				'{$noticia->getTitulo()}',
				'{$noticia->getDescricao()}',
				'{$noticia->getImg()}',
				'{$noticia->getData()}',
				'{$noticia->getAutor()}'
				)";

		return mysqli_query($this->connection,$query);    	

    }

    public function listaNoticia(){

    	$noticias = array();

    	$query = "SELECT * FROM noticia ORDER BY ID DESC LIMIT 20";

    	$result = mysqli_query($this->connection,$query);

    	while($noticia_array = mysqli_fetch_assoc($result)){
    		  
    		array_push($noticias, $noticia_array);

    	}

    	return $noticias;


    }

    public function selecionaNoticia($id){

        $query = "SELECT * FROM noticia WHERE ID = {$id}";

        $result = mysqli_query($this->connection,$query);

        return mysqli_fetch_assoc($result);

    }

    public function pesquisaNoticia($pesquisa){

        $noticias = array();

        $pesquisa = mysqli_real_escape_string($this->connection,$pesquisa);

        $query = "SELECT * FROM noticia WHERE titulo LIKE '%{$pesquisa}%' ORDER BY ID DESC LIMIT 20";

        $result = mysqli_query($this->connection,$query);

        while($noticia_array = mysqli_fetch_assoc($result)){

            array_push($noticias, $noticia_array);

        }

        return $noticias;

    }

  }


?>
