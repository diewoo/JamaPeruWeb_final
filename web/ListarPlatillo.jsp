<%@page import="com.sw2.bean.Platillo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Tus platillos</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%--
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        --%>
        <%-- Fuentes --%>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
        <%-- Css --%>
        <link href="css/freelancer.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <style>
            body {
                position: relative;
            }
            ul.nav-pills {
                top: 20px;
                position: fixed;
            }
            div.col-sm-9 div {
                height: 800px;
                font-size: 28px;
            }
            .section {color: #000000; background-color: #E6E6E6; margin-bottom: 50px; border-radius: 10px;}

        </style>
        <%
            int cont = 1;
            List<Platillo> platillos = (List<Platillo>) request.getAttribute("platillos");
        %>
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
                        <li><a href="">Cuenta <span class="sr-only">(current)</span></a></li>
                        <li class="active"><a href="ListarPlatillosServlet">Mis Platillos</a></li>
                        <li><a href="Rank.jsp">Ranking</a></li>
                        <li><a href="ListaProfitServlet">Profit</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li style="margin-right: 20px;"><a href="LoginServlet" >Cerrar sesion</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <header style="background: url('../img/fondo.jpeg') no-repeat center center fixed;">

            <div class="container" style=" margin-top: 150px;" >
                <div class="row">
                    <nav class="col-sm-5" >
                        <ul class="nav nav-pills nav-stacked" style="padding-top: 250px;">

                            <%
                                for (int i = 1; i <= platillos.size(); i++) {
                            %>
                            <li class="btn btn-primary"><a <% if (i == 1) {%>class="active"<% }%> href="#section<%=i%>"><%=platillos.get(i - 1).getNombre()%></a></li>
                                <%
                                    }
                                %>
                            <li class="btn btn-primary"><a href="AgregarPlatillo.jsp" value="Agregar Platillo"
                                                           >+</a></li>        
                        </ul>

                        <ul></ul>
                    </nav>
                    <%
                        if (platillos.size() != 0) {


                    %>       
                    <div class="col-sm-7">

                        <%                            for (Platillo plats : platillos) {
                        %>
                        <div id="section<%=cont%>" class="section" style="padding-top: 20px;">    
                            <h1 style="margin-top: 70px;"><%=plats.getNombre()%></h1>
                            <img src="<%=plats.getImagen()%>"  height="50%" width="100%" style="padding-right: 10%; padding-left: 10%;">
                            <p><%=plats.getDescripcion()%></p>
                        </div>
                        <%
                                cont++;
                            }
                        %>
                        <div></div>                     
                    </div>
                    <%  } else {
                            

                    %>
                    <h1>Usted no tiene platillos registrados.</h1> 
                    <% }%>
                    <div></div>
                </div>
            </div>

        </header>                  
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

