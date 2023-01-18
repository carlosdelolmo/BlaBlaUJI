<%--
  Created by IntelliJ IDEA.
  User: carlos
  Date: 26/12/22
  Time: 6:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reservar viaje</title>
    <link rel = "stylesheet" href = "styles.css">
</head>
<body>
<% if(session.getAttribute("codcli") == null){
    response.sendRedirect("index.html");
} else {%>
<h1>
    Formulario de reserva
</h1>
<form action = "ServletReservar" method = "POST">
    Código del viaje que quieres reservar:
    <input type="text" name="codviaje" required>
    <input type="submit" value="reserva">
</form>
<%}%>
</body>
</html>
