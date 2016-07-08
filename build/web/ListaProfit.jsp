<%-- 
    Document   : ListaProfit
    Created on : 4/06/2016, 03:51:23 PM
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.sw2.bean.Venta"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mi profit</title>        
        <%-- Fuentes --%>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
        <%-- Css --%>
        <link href="css/freelancer.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <%--
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link href="css/animate.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
        --%>            
    </head>

    <%
        List<Venta> ventas = (List<Venta>) request.getAttribute("ventas");
        double gana = 1.0;
    %>

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
                        <li><a href="Rank.jsp">Ranking</a></li>
                        <li class="active"><a href="ListaProfitServlet">Profit</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="LoginServlet" >Cerrar sesion</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container" style="margin-top: 250px; background: #149c82">
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>#Venta</th>
                                <th>Platillo</th>
                                <th>Monto Generado</th>
                                <th>Profit Generado</th>
                                <th>Fecha</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Venta vent : ventas) {
                                    gana += vent.getProfit();
                            %>
                            <tr>
                                <th scope="row"><%=vent.getIdventa()%></th>
                                <td><%=vent.getCarta().getPlatillo().getNombre()%></td>
                                <td><%=vent.getMonto()%></td>
                                <td><%=vent.getProfit()%></td>
                                <td><%=vent.getFecha()%></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                </div>
                        
                    <div class="col-md-4">
                        <label>
                            GANANCIA TOTAL
                        </label>
                    </div>
                <div class="col-md-8">
                    
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Profit total</th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td><%=gana%></td>
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
