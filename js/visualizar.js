var url = window.location.href;
var id = url.split("=");

$("#btnRetornar").click(function(){
	location.href="index.html";
});

$.ajax({
	url : "php/seleciona-noticia.php",
	type : "post",
	data : {id : id[1]},
	dataType : "json",

	success : function(noticia){
		$("#image").html("<img src='images/"+noticia.img+"'>");
		$('.parallax').parallax();
		$("#title").text(noticia.titulo);
		$("#descricao").text(noticia.descricao);
		$("#autor").html("<strong>Autor(a)</strong> : "+noticia.autor);
		$("#data").html("<strong>Postado</strong> : "+noticia.data);
	},

	error : function(){
		location.href="index.html";
	}
})