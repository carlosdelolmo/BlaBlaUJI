<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="org.json.simple.JSONObject" %><%--
  Created by IntelliJ IDEA.
  User: carlos
  Date: 26/12/22
  Time: 7:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Viajes</title>
  <link rel = "stylesheet" href = "styles.css">
</head>
<body>
<% if(session.getAttribute("codcli") == null){
  response.sendRedirect("index.html");
} else {
  String resultado = (String) request.getAttribute("resultado");
  JSONParser parser = new JSONParser();
  JSONObject object = (JSONObject) parser.parse(resultado);
  if(object.isEmpty()){
%>
<h1>Lo setimos, no se ha podido reservar su viaje, vuelva a intentarlo más tarde</h1>
<%  }else{
%>
<h1>Enhorabuena, tu propuesta de viaje ha sido aceptada.</h1>
<h2>El viaje <%=object.get("codviaje")%> tiene el siguiente estado:</h2>
<ul>
  <li>
    Código de viaje: <%=object.get("codviaje")%>
  </li>
  <li>
    Código del propietario: <%=object.get("codprop")%>
  </li>
  <li>
    Origen: <%=object.get("origen")%>
  </li>
  <li>
    Destino: <%=object.get("destino")%>
  </li>
  <li>
    Fecha: <%=object.get("fecha")%>
  </li>
  <li>
    Pasajeros: <%=object.get("pasajeros")%>
  </li>
  <li>
    Precio: <%=object.get("precio")%>
  </li>
  <li>
    Plazas disponibles: <%=object.get("numplazas")%>
  </li>
</ul>
<% } %>
<br>
<a href="menu.jsp">
  Menú
</a>
<%}%>
</body>
</html>
