<%--
  Created by IntelliJ IDEA.
  User: carlos
  Date: 26/12/22
  Time: 6:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css">
    <title>Ofertar Viaje</title>
    <link rel="icon" type="image/x-icon" href="images/car2.ico">
</head>
<body>
<% if(session.getAttribute("codcli") == null){
    response.sendRedirect("index.html");
} else {%>
<h1>Formulario de retirada de oferta de viaje</h1>
<form action = "ServletAnular" method = "GET">
    <!-- no permite usar el DELETE: https://stackoverflow.com/questions/40310288/how-to-call-dodelete-in-servlet-from-jsp -->
    <b>Código del viaje que quieres anular: </b>
    <input type = "text" name = "codViaje" size = "5" required>
    <br>
    <input type = "submit" value = "Anula">
</form>
<%}%>
</body>
</html>
