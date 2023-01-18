<%--
  Created by IntelliJ IDEA.
  User: carlos
  Date: 13/12/22
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Mostrar Codcli</title>
</head>
<body>
<% if(session.getAttribute("codcli") == null){
    response.sendRedirect("index.html");
}else {%>
<h1>El código recogido es: </h1>
<h2>
    <%= request.getAttribute("codcli").toString() %>
</h2>
<%}%>
</body>
</html>
