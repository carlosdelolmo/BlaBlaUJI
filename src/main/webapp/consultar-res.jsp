<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject" %><%--
  Created by IntelliJ IDEA.
  User: carlos
  Date: 20/12/22
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<!-- ToDo hay que hacer esto -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Viajes</title>
  <link rel = "stylesheet" href = "styles.css">
</head>
<body>
  <% if(session.getAttribute("codcli") == null){
    response.sendRedirect("index.html");
  } else {%>
<h1>Viajes disponibles desde <%= (String) request.getAttribute("origen") %></h1>
<table>
  <tr>
    <h3><td>Código viaje</td><td>Código propietario</td><td>Destino</td><td>Fecha</td><td>Precio</td><td>Plazas</td><td>Pasajeros</td></h3>
      <%  String text = (String) request.getAttribute("resultado");
          JSONParser parser = new JSONParser();
          JSONArray array = (JSONArray) parser.parse(text);
          for(int i = 0; i < array.size(); i++){
            JSONObject line = (JSONObject) array.get(i);
          // for(String line : splittedLines){
      %>
  <tr>
    <td><%= line.get("codviaje") %> </td>
    <td><%= line.get("codprop") %> </td>
    <td><%= line.get("destino") %> </td>
    <td><%= line.get("fecha") %> </td>
    <td><%= line.get("precio") %> </td>
    <td><%= line.get("numplazas") %> </td>
    <td><%= line.get("pasajeros") %> </td>
  </tr>
  <%  } %>
</table>
<br>
<a href="menu.jsp">
  Menú
</a>
<%}%>
</body>
</html>