var inputs = $("input");
inputs.push($("textarea"));

$("#btnPostar").click(function(){

  var inputsInvalid = 0;

  inputs.each(function(){

    if($(this).val().trim() == ""){
      inputsInvalid++;
      $(this).addClass("validate invalid");
    }

  });

  if(inputsInvalid == 0){

    var formData = new FormData();

    formData.append("autor",$("#autor").val());
    formData.append("titulo",$("#titulo").val());
    formData.append("descricao",$("#descricao").val());
    formData.append("img",$("#img").prop("files")[0]);


    $.ajax({
      url : "php/cadastra-noticia.php",
      type : "POST",
      data : formData,
      dataType : "json",
      mimeType:"multipart/form-data",
      contentType: false,
      cache: false,
      processData:false,

      beforeSend : function(){
        inputs.each(function(){
          $(this).attr("disabled","disabled");
        });
        btnActivated();
      },

      success : function(result){
        removeDisableds();
        btnDefault();

        inputs.each(function(){
          $(this).val("");
          $(this).removeAttr("disabled");
        });

        $("label").each(function(){
          $(this).removeClass("active");
        });

        $("#descricao").removeAttr("style");

        Materialize.toast('Notícia cadastrada com sucesso.', 3000, 'rounded');

      },

      error : function(){
        removeDisableds();
        btnDefault();

        Materialize.toast('Houve um erro ao cadastrar a notícia!', 3000, 'rounded');

      }

    });
  }

});

$("#btnCancelar").click(function(){
  $("#dialogCancelar").modal({
      dismissible: true,
      opacity: .5,
      inDuration: 300,
      outDuration: 200,
      startingTop: '4%',
      endingTop: '30%'
    });
})

function isInvalid(input){
    if($(input).val().trim() != ""){
      $(input).removeClass("validate invalid");
    }
}

function btnActivated(){
  $("#btnSubmit").text("postando...");
  $("#btnSubmit").attr("disabled","disabled");
}

function removeDisableds(){
  inputs.each(function(){
    $(this).removeAttr("disabled");
  });
  $("#btnSubmit").removeAttr("disabled");
}

function btnDefault(){
  $("#btnSubmit").text("postar");
}
