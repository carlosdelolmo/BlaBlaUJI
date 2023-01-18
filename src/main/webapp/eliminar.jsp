<%--
  Created by IntelliJ IDEA.
  User: carlos
  Date: 26/12/22
  Time: 7:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Eliminar Viajes</title>
    <link rel = "stylesheet" href = "styles.css">
</head>

<!--
Caja de texto = origen
Formulario GET al ServletConsulta
-->

<body>
<% if(session.getAttribute("codcli") == null){
    response.sendRedirect("index.html");
} else {%>
<h1>Formulario de retirada de oferta de viaje</h1>
<form action = "ServletBorrar" method = "POST">
    <!-- no permite usar el DELETE: https://stackoverflow.com/questions/40310288/how-to-call-dodelete-in-servlet-from-jsp -->
    <b>Código del viaje que quieres retirar: </b>
    <input type = "text" name = "codViaje" size = "5" required>
    <br>
    <input type = "submit" value = "Retira">
</form>
<%}%>
</body>
</html>
