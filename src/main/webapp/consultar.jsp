<%--
  Created by IntelliJ IDEA.
  User: carlos
  Date: 26/12/22
  Time: 6:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Consultar Viajes</title>
    <link rel = "stylesheet" href = "styles.css">
</head>

<!--
Caja de texto = origen
Formulario GET al ServletConsulta
-->

<body>
<% if(session.getAttribute("codcli") == null){
    response.sendRedirect("index.html");
}else{%>
<h1>Consulta viajes desde un origen</h1>
<form action = "ServletConsultar" method = "GET">
    Indica el origen del viaje:
    <input type = "text" name = "origen">
    <input type = "submit" value = "Enviar">
</form>
<%}%>
</body>
</html>
