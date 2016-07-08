<%-- 
    Document   : test
    Created on : 06-jul-2016, 2:48:14
    Author     : diegoalonso
--%>
<%
    String nombre = request.getParameter("nombre");
     
        String correo = request.getParameter("correo");
        
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>hola</h1>
        <h1 id="mensaje"><%= correo %></h1>
        <h2 id="mensaje1"><%= nombre %></h1>
        </div>
    </body>
</html>
