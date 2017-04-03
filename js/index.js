listaNoticias();

$("#search").keyup(function(){
	if($(this).val().trim() == ""){
		listaNoticias();
	}else{
		pesquisaNoticia($(this).val());
	}
});

function listaNoticias(){
	$.ajax({
		url : "php/lista-noticia.php",
		dataType : "json",

		success : function(result){
			if(result != 0){
				var html = "";
				$.each(result, function(index,noticia){

					var data = noticia.data.split(" ");

					html += "  <div class='col s12 m6 l3'>"+
    							"<div class='card  hoverable' >"+
      								"<div class='card-image'>"+
        								"<img height='230px' src='images/"+ noticia.img +"'>"+
        								"<span class='card-title'>"+ noticia.titulo +"</span>"+
      								"</div>"+
                        "<div class='card-content'>"+
												"<p><strong>Autor(a)</strong> : "+noticia.autor+"</p>"+
												"<p><strong>Postado</strong> : "+data[0]+"</p><br>"+
        							"<p>"+noticia.descricao.substring(0, 80) + "..."+"</p>"+
      								"</div>"+
      								"<div class='card-action'>"+
        								"<a href='visualizar.html?id="+noticia.ID+"''>Detalhes</a>"+
      								"</div>"+
							    "</div>"+
							  "</div>";
				})

				$("#noticias").html(html);
			}else{
				$("#pesquisa-noticia").html("");
				$("#noticias").html("<h5 class='sem-noticias' >Não há notícia cadastrada!</h5>");
			}
		},

		error : function(){
			alert("Houve um erro! : (");
		}
	})
}

function pesquisaNoticia(pesquisa){
	$.ajax({
		url : "php/pesquisa-noticia.php",
		type : "post",
		dataType : 'json',
		data : {pesquisa : pesquisa.trim()},

		success : function(result){
			if(result != 0){
				var html = "";
				$.each(result, function(index,noticia){

					html += "  <div class='col s12 m6 l3'>"+
    							"<div class='card  hoverable' >"+
      								"<div class='card-image'>"+
        								"<img height='230px' src='images/"+ noticia.img +"'>"+
        								"<span class='card-title'>"+ noticia.titulo +"</span>"+
      								"</div>"+
                                	"<div class='card-content'>"+
        							"<p>"+noticia.descricao.substring(0, 120) + "..."+"</p>"+
      								"</div>"+
      								"<div class='card-action'>"+
        								"<a href='visualizar.html?id="+noticia.ID+"''>Detalhes</a>"+
      								"</div>"+
							    "</div>"+
							  "</div>";
				})

				$("#noticias").html(html);
			}else{
				$("#noticias").html("<h5 class='sem-noticias' >Notícia não encontrada!</h5>");
			}
		},

		error : function(){
			alert("Houve um erro! : (");
		}

	});
}
