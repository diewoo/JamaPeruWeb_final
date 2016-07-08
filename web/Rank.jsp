<%-- 
    Document   : Rank
    Created on : 04-jun-2016, 14:15:42
    Author     : :b
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rank</title>
        <%-- Fuentes --%>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
        <%-- Css --%>
        <link href="css/freelancer.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <%--
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
        --%>
        

    </head>
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
                    <ul class="nav navbar-nav">
                        <li><a href="#">Cuenta <span class="sr-only">(current)</span></a></li>
                        <li><a href="ListarPlatillosServlet">Mis Platillos</a></li>
                        <li class="active"><a href="Rank.jsp">Ranking</a></li>
                        <li><a href="ListaProfitServlet">Profit</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="LoginServlet" >Cerrar sesion</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container"style="margin-top: 100px;"> 
            <div class="row">
                <div class="col-md-12">
                    <h2>Lista chef</h2>
                </div>
                <div class="margen">
                    <table  class="table table-striped table-hover ">
                        <thead>
                            <tr>

                                <th>chef 1</th>
                                <th><img src="">foto</th>
                                <th><a href="link"></a>redirigir facebook</th>

                            </tr>
                        </thead>
                        <tbody>
                            <tr>

                                <th>chef 2</th>
                                <th><img src="">foto</th>
                                <th><a href="link"></a>redirigir facebook</th>

                            </tr>
                            <tr>

                                <th>chef 3</th>
                                <th><img src="">foto</th>
                                <th><a href="link"></a>redirigir facebook</th>

                            </tr>
                            <tr>

                                <th>chef 4</th>
                                <th><img src="">foto</th>
                                <th><a href="link"></a>redirigir facebook</th>

                            </tr>
                        </tbody>
                    </table>
                </div> 
            </div>
        </div>
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
    </body>
</html>
