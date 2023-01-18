<%--
  Created by IntelliJ IDEA.
  User: carlos
  Date: 13/12/22
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        body{
            text-align: center;
            margin: auto;
        }
    </style>
    <title>Salir</title>
</head>
<body>
<% if (session.getAttribute("codcli") != null) { %>
        <h1>Hasta luego <%= session.getAttribute("codcli").toString()%> </h1>
        <h2>Te estaremos esperando para ayudarte en tu próximo viaje</h2>
<%
        session.invalidate();
    } else {
        response.sendRedirect("index.html");
    }
%>
<br>
<a href="index.html">
    Iniciar Sesión
</a>
</body>
</html>
