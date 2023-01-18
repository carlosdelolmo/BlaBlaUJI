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
    <link rel="stylesheet" href="styles.css">
    <title>Ofertar Viaje</title>
    <link rel="icon" type="image/x-icon" href="images/car2.ico">
</head>
<body>
<% if(session.getAttribute("codcli") == null){
    response.sendRedirect("index.html");
}else {%>
<h1>Formulario de oferta de nuevo viaje</h1>
<form action = "ServletOfertar" method = "POST">
    <table>
        <!-- Origen del viaje a ofertar -->
        <tr>
            <td>
                Origen:
            </td>
            <td>
                <input type = "text" name = "origen" size = "40" required>
            </td>
        </tr>

        <!-- Destino del viaje a ofertar -->
        <tr>
            <td>
                Destino:
            </td>
            <td>
                <input type = "text" name = "destino" size = "40" required>
            </td>
        </tr>

        <!-- Fecha en la que se oferta el viaje -->
        <tr>
            <td>
                Fecha (dd-mm-aa):
            </td>
            <td>
                <input type = "text" name = "fecha" size = "40" required>
            </td>
        </tr>

         <!-- Precio del viaje a ofertar -->
        <tr>
            <td>
                Precio:
            </td>
            <td>
                <input type = "number" name = "precio" min = "0" size = "20" required>
            </td>
        </tr>

        <!-- Número de plazas del viaje ofertado -->
        <tr>
            <td>
                Plazas:
            </td>
            <td>
                <input type = "number" name = "plazas" min = "0" size = "20" required>
            </td>
        </tr>
    </table>
    <br>
    <input type = "submit" value = "Oferta">
</form>
<%}%>
</body>
</html>
