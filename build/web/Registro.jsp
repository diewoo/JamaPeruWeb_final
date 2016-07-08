<%-- 
    Document   : Registro
    Created on : 4/06/2016, 10:37:24 AM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jama App!</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <%-- Fuentes --%>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
        <%-- Css --%>
        <link href="css/freelancer.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>

    </head>
    <script>
        var valida = false;
        window.fbAsyncInit = function () {
            FB.init({
                appId: '589600291202468',
                status: true,
                cookie: true,
                oauth: true,
                xfbml: true
            });


        };
        function login() {
            FB.login(function (response) {
                if (response.authResponse) {
                    var url = '/me?fields=name,email,permissions';
                    console.log('Welcome!  Fetching your information.... ');
                    FB.api(url, function (response) {
                        console.log('Good to see you, ' + response.email);
                        console.log(response.name);
                        console.log(response);
                        valida = true;
                        
                        location.href = 'RegistrofbServlet?correo=' + response.email + '&nombre=' + response.name;

                    }, {scope: 'email'});


                } else {
                    console.log('User cancelled login or did not fully authorize.');
                }

            });
        }
    </script>
    <body style="background: url('img/jama.jpg') no-repeat center center fixed;">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header page-scroll">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#page-top">Jama App!</a>
                </div>

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="hidden active">
                            <a href="#page-top"></a>
                        </li>
                        <li class="page-scroll">
                            <a href="#portfolio">Quiénes somos?</a>
                        </li>
                        <li class="page-scroll">
                            <a href="#foot-page">Contáctenos</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <header>
            <div class="container" style="margin-top: 100px;">
                <form class="form-horizontal" id="form" method="post" action="RegistrarUsuarioServlet" >
                    <div class="form-group" style="padding-top: 30px">
                        <a style="margin-left:30%; width:40% ; margin-right: 50%;border-radius: 15px" onclick="javascript:login()" class="btn btn-info">Registro con facebook</a>
                    </div>
                    <legend ><p style="text-justify: auto;text-align: center;">Registrate con tu dirección de email</p></legend>
                    <div class="form-group">
                        <label class="col-md-2 control-label ">Correo:</label>
                        <div  style="margin-top: auto "class="col-md-10 ">
                            <input type="text" name="correo" class="form-control" id="corrreo" >
                        </div>
                    </div>

                    <div style="margin-top: auto"class="form-group">
                        <label  class="col-md-2 control-label">Nombre:</label>
                        <div class="col-md-10 ">
                            <input type="text" class="form-control" id="nombre" name="nombre"  >
                        </div>
                    </div> 
                    <div style="margin-top: auto"class="form-group">
                        <label  class="col-md-2 control-label">Sexo:</label>
                        <div class="col-md-1 ">
                            <select class="form-control" id="sexo" name="sexo">
                                <option>M</option>
                                <option>F</option>
                            </select>
                        </div>
                    </div> 
                    <div style="margin-top: auto"class="form-group">
                        <label  class="col-md-2 control-label">Apellido:</label>
                        <div class="col-md-10 ">
                            <input type="text" class="form-control" id="apellido" name="apellido" >
                        </div>
                    </div> 
                    <div  style="margin-top: auto"class="form-group">
                        <label  class="col-md-2 control-label">Contraseña:</label>
                        <div class="col-md-5 ">
                            <input type="password" class="form-control" id="password" name="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">Confirmar contraseña:</label>
                        <div class="col-md-5 ">
                            <input type="password" class="form-control" id="conpassword" name="conpassword" >
                        </div>
                    </div>  
                    <div  style="margin-top: auto"class="form-group">
                        <label  class="col-md-2 control-label">Fecha de Nacimiento:</label>   
                        <div class="col-md-10 ">
                            <input class="form-control" type="text" id="datepicker" name="fecha">

                        </div>
                    </div>
                    <div style="margin-top: auto"class="form-group">
                        <div  class="col-md-12">
                            <input style="width: 50%; margin-left: 25%;margin-right: 25%;" type="submit" class="btn btn-warning" id="ingresar"  value="Registrarse"/>
                        </div>
                    </div>

                </form>

            </div>
        </header>
        <footer class="text-center" id="foot-page">
            <div class="footer-above">
                <div class="container">
                    <div class="row">
                        <div class="footer-col col-md-4" id="contact">
                            <h3>Local</h3>
                            <p>3481 Las flores<br>San Isidro, Lima 32</p>
                        </div>
                        <div class="footer-col col-md-4">
                            <h3>Nuestras Redes Sociales</h3>
                            <ul class="list-inline">
                                <li>
                                    <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                                </li>
                                <li>
                                    <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                                </li>
                                <li>
                                    <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                                </li>
                                <li>
                                    <a href="#" class="btn-social btn-outline"><i class="fa fa-fw fa-linkedin"></i></a>
                                </li>
                            </ul>
                        </div>
                        <div class="footer-col col-md-4">
                            <h3>Acerca de nosotros</h3>
                            <p>Somos una pequeña empresa en la búsqueda de nuevos talentos culinarios <a href="http://startbootstrap.com">Start Bootstrap</a>.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-below">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            Copyright © Jamawep.com 2016
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <%-- JavaScript --%>
        <script src="js/prefixfree.min.js"></script>
        <%-- Plugin JavaScript --%>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="js/cbpAnimatedHeader.js" type="text/javascript"></script>
        <script src="js/classie.js" type="text/javascript"></script>
        <%-- jquery --%>
        <script src="js/jquery.js" type="text/javascript"></script>
        <%-- Bosstrap JavaScript --%>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <%-- Custom Theme JavaScript --%>
        <script src="js/freelancer.js" type="text/javascript"></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src='http://connect.facebook.net/en_US/all.js'></script>

    </body>

</html>
