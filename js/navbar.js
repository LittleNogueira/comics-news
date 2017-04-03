var nav = 
    "<nav>"+
    "<div class='nav-wrapper blue darken-3'>"+
        "<div class='container'>"+
            "<a href='index.html' class='brand-logo'><font class='Gloria-Hallelujah' >Comics</font>News</a>"+
            "<a href='#' data-activates='mobile-demo' class='button-collapse'><i class='material-icons'>menu</i></a>"+
            "<ul class='right hide-on-med-and-down'>"+
                "<li><a href='index.html'>Home</a></li>"+
                "<li><a href='cadastrar.html'>Cadastrar</a></li>"+
            "</ul>"+
            "<ul class='side-nav' id='mobile-demo'>"+
                "<li><a href='index.html'>Home</a></li>"+
                "<li><a href='cadastrar.html'>Cadastrar</a></li>"+
            "</ul>"+
        "</div>"+
    "</div>"+
"</nav>";

$("#navbar-site").html(nav);
$(".button-collapse").sideNav();
