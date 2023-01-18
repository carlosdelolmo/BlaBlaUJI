<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css">
    <title>BlaBlaUJI</title>
    <link rel="icon" type="image/x-icon" href="images/car2.ico">
</head>
<body>
<% if(session.getAttribute("codcli") == null){
    response.sendRedirect("index.html");
} else {%>
    <div class="bannerImage">
        <img src="images/banner.PNG" alt = "Error al cargar la imagen">
    </div>
    <h1>BlaBlaUJI</h1>
    <h2>Compartimos experiencias</h2>

    <!-- Listado -->
    <div class="optionList">
        <ul class="optionList">
            <li>
                <a href="salir.jsp">
                    Salir
                </a>
            </li>
            <li>
                <a href="consultar.jsp">
                    Consultar viajes desde un origen
                </a>
            </li>
            <li>
                <a href="reservar.jsp">
                    Reservar un viaje
                </a>
            </li>
            <li>
                <a href="anular.jsp">
                    Anular una reserva de viaje
                </a>
            </li>
            <li>
                <a href="ofertar.jsp">
                    Ofrecer un nuevo viaje
                </a>
            </li>
            <li>
                <a href="eliminar.jsp">
                    Eliminar uno de mis viajes
                </a>
            </li>
        </ul>
    </div>
<%}%>
</body>
</html>