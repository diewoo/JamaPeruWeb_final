<%-- 
    Document   : AgregarPlatillo
    Created on : 04-jun-2016, 15:39:16
    Author     : j
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sw2.bean.Usuario"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Platillo</title>
        <%-- Fuentes --%>
        <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
        <%-- Css --%>
        <link href="css/freelancer.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
         <script src="js/cloudinary.js" type="text/javascript"></script>
         <link href="css/sweetalert.css" rel="stylesheet" type="text/css"/>
         <script src="js/sweetalert.min.js" type="text/javascript"></script>
        

    </head>
    <body style="background: url('img/jama.jpg') no-repeat center center fixed;">
        <%

            Usuario user = (Usuario) request.getSession().getAttribute("usuarioSes");
            if (user != null) {
        %>
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
                        <li><a href="ListaProfitServlet">Profit</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="LoginServlet" >Cerrar sesion</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container" style="margin-top: 150px;">

            <form class="form-horizontal" id="form" method="post" action="IngresarPlatilloServlet" >

                <legend> <p style="text-justify: auto;text-align: center;color: black"><strong>Ingresar Platillo</strong></p></legend>
                <div class="form-group">
                    <label class="col-md-2 control-label  " style="color: black"><strong>Nombre:</strong> </label>
                    <div  style="margin-top: auto " class="col-md-10 ">
                        <input type="text" name="nombre" class="form-control" id="nombre" >
                    </div>
                </div>

                <div style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label" style="color: black"><strong>Descripcion:</strong> </label>
                    <div class="col-md-10">
                        <textarea style="height: 400px;" type="text" class="form-control" id="descrip" name="descrip" ></textarea>
                    </div>
                </div> 
                <div style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label" style="color: black"><strong>Foto:</strong></label>
                    <div class="col-md-1 ">
                        <a class="btn btn-primary" id="upload_widget_opener" >Subir</a>
                        <input type="text" hidden="" name="imagen" id="imagen" value="" >    
                    </div>
                </div> 
                <div style="margin-top: auto"class="form-group">
                    <label  class="col-md-2 control-label" style="color: black"><strong>Categoria:</strong></label>
                    <div class="col-md-5 ">
                        <select class="form-control" id="tag" name="tag">
                            <option>PASTAS</option>
                            <option>HAMBURGUESAS</option>
                            <option>MARINO</option>
                            <option>CRIOLLO</option>
                            <option>LIGHT</option>
                            
                        </select>
                    </div>
                </div> 
                <div style="margin-top: auto" class="form-group">
                    <div  class="col-md-12">
                        <input style="width: 50%; margin-left: 25%;margin-right: 25%;" type="submit" class="btn btn-success" id="ingresar"  value="Publicar"/>

                    </div>
                </div>

            </form>
        </div>
        
        <script type="text/javascript">
            document.getElementById("upload_widget_opener").addEventListener("click", function () {

                cloudinary.openUploadWidget({cloud_name: 'jamacomida', upload_preset: 'jrve2f6q'},
                        function (error, result) {
                            console.log(error, result);
                            console.log(result[0].secure_url);
                            $("#imagen").val(result[0].secure_url);
                        });

            }, false);
        </script>
        <% }else {response.sendRedirect("Error.jsp");}%>
        <%-- JavaScript --%>
        <script src="js/prefixfree.min.js"></script>
        <%-- Plugin JavaScript --%>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
        <script src="js/cbpAnimatedHeader.js" type="text/javascript"></script>
        <script src="js/classie.js" type="text/javascript"></script>
        <%-- jquery --%>
        
        <%-- Bosstrap JavaScript --%>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <%-- Custom Theme JavaScript --%>
        <script src="js/freelancer.js" type="text/javascript"></script>
        <script src="js/validaingresar.js" type="text/javascript"></script>
    </body>
</html>
