<%-- 
    Document   : Cuenta
    Created on : 4/06/2016, 04:43:28 PM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sw2.bean.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuenta JamaPeru</title>
        <%-- Fuentes --%>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
        <%-- Css --%>
        <link href="css/freelancer.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="css/cuenta.css" rel="stylesheet" type="text/css"/>

    </head>
    <body style="background:  url('img/jama.jpg') no-repeat center center fixed;">
        <%

            Usuario user = (Usuario) request.getSession().getAttribute("usuarioSes");
            if (user != null) {
        %>
        <nav class="navbar navbar-default navbar-fixed-top">

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
                    <li class="active"><a href="#">Cuenta <span class="sr-only">(current)</span></a></li>
                    <li><a href="ListarPlatillosServlet">Mis Platillos</a></li>
                    <li><a href="Rank.jsp">Ranking</a></li>
                    <li><a href="ListaProfitServlet">Profit</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right" style="margin-right: 20px">
                    <li ><a href="LoginServlet" >Cerrar sesion</a></li>
                </ul>
            </div>

        </nav>
        <div class="container" style="margin-top: 5%">
            <div style="margin-top: 50px">

                <form class="form-horizontal" style="margin-top: 8%;">
                    <fieldset>
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-3"></div>
                                <div class="col-xs-6" style=""> 
                                    <div class="form-group">
                                        <label    class="control-label etiqueta" >Nombre:</label>
                                        <div >
                                            <input type="text" value="<%= user.getNombre()%>"  disabled="" class="form-control" id="inputNombreUsuario"  >
                                        </div> 
                                    </div>

                                    <div class="form-group">
                                        <label  class=" control-label etiqueta">Apellido:</label>
                                        <div >
                                            <input type="text"   disabled="" value="<%= user.getApellido()%>" class="form-control" id="inputNombreApellido" >
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                        <label    class=" control-label etiqueta">Correo:</label>
                                        <div >
                                            <input type="text"   disabled="" value="<%= user.getCorreo()%>"  class="form-control" id="inputEmail" >
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label  class=" control-label etiqueta">Fecha de Nacimiento:</label>   
                                        <div >
                                            <input class="form-control" disabled=""  value="<%= user.getFecha_nac()%>" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label  class=" control-label etiqueta">Sexo:</label>   
                                        <div >
                                            <input class="form-control"  disabled="" value="<%= user.getSexo()%>" type="text">
                                        </div>
                                    </div>
                                </div> 
                                <div class="col-xs-3"></div>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
        <%}else {response.sendRedirect("Error.jsp");}%>
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