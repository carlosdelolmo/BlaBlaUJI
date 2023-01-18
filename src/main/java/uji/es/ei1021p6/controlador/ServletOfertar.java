package uji.es.ei1021p6.controlador;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import uji.es.ei1021p6.modelo.GestorViajes;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet(name = "ServletOfertar", value = "/ServletOfertar")
public class ServletOfertar extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if( session != null) {
            request.setCharacterEncoding("UTF-8");
            ServletContext context = getServletContext();
            GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
            String codcli = session.getAttribute("codcli").toString();
            String origen = request.getParameter("origen");
            String destino = request.getParameter("destino");
            String fecha = request.getParameter("fecha");
            long precio = Long.parseLong(request.getParameter("precio"));
            long plazas = Long.parseLong(request.getParameter("plazas"));
            String resultado = gestor.ofertaViaje(codcli, origen, destino, fecha, precio, plazas).toJSONString();
            request.setAttribute("resultado", resultado);
            RequestDispatcher vista = request.getRequestDispatcher("ofertar-res.jsp");
            vista.forward(request, response);
        }
    }
}
