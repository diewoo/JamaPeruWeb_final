<%-- 
    Document   : Password
    Created on : 01-jul-2016, 9:59:00
    Author     : diegoalonso
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="https://use.fontawesome.com/27a8e4d639.js"></script>
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>

        <title>Password</title>
    </head>
    <body style="background:  url('img/jama.jpg') no-repeat center center fixed;">
        <br>
        <br>
        <div class="container-fluid" >
            <div class="row">
                <div class="row">
                    <div class="col-md-4 col-md-offset-4">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="text-center">
                                    <h3><i class="fa fa-lock fa-4x"></i></h3>
                                    <h2>Olvidaste tu Password?</h2>
                                    <p >Usted puedes resetear tu password aqui:</p>
                                    <div class="panel-body">

                                        <form  class="form" method="POST" action="RestorePassServlet">
                                            <fieldset>
                                                <div class="form-group">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                                        <input class="form-control" type="email" placeholder="Ingresa tu correo" name="correo" id="correo">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <input class="btn btn-lg btn-primary btn-block" value="Enviar correo" type="submit">
                                                </div>

                                            </fieldset>
                                        </form>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
