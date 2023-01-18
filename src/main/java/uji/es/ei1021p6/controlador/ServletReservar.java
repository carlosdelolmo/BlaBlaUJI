package uji.es.ei1021p6.controlador;

import uji.es.ei1021p6.modelo.GestorViajes;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletReservar", value = "/ServletReservar")
public class ServletReservar extends HttpServlet {
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if( session != null) {
            request.setCharacterEncoding("UTF-8");
            System.out.println("llega");
            ServletContext context = getServletContext();
            GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
            String codviaje = request.getParameter("codviaje");
            String codcli = session.getAttribute("codcli").toString();
            String resultado = gestor.reservaViaje(codviaje, codcli).toJSONString();
            request.setAttribute("resultado", resultado);
            System.out.println("resultado " + resultado.toString());
            RequestDispatcher vista = request.getRequestDispatcher("reservar-res.jsp");
            vista.forward(request, response);
        }
    }
}
