<%-- 
    Document   : test
    Created on : 06-jul-2016, 2:48:14
    Author     : diegoalonso
--%>
<%
    String nombre = (String)request.getSession().getAttribute("nombre");
     String correo = (String)request.getSession().getAttribute("correo");
    
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 id="mensaje"><%= correo %></h1>
        <h2 id="mensaje1"><%= nombre %></h1>
    </body>
</html>
