<?php

class Noticia{

    private $id;
    private $titulo;
    private $descricao;
    private $img;
    private $data;
    private $autor;

    public function getId(){
      return $this->id;
    }

    public function setId($id){
      $this->id = $id;
    }

    public function getTitulo(){
      return $this->titulo;
    }

    public function setTitulo($titulo){
      $this->titulo = $titulo;
    }

    public function getDescricao(){
      return $this->descricao;
    }

    public function setDescricao($descricao){
      $this->descricao = $descricao;
    }

    public function getImg(){
      return $this->img;
    }

    public function setImg($img){
      $this->img = $img;
    }

    public function getData(){
      return $this->data;
    }

    public function setData($data){
      $this->data = $data;
    }

    public function getAutor(){
      return $this->autor;
    }

    public function setAutor($autor){
      $this->autor = $autor;
    }

}


?>
