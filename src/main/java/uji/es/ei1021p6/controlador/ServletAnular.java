package uji.es.ei1021p6.controlador;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import uji.es.ei1021p6.modelo.GestorViajes;

import java.io.IOException;

@WebServlet(name = "ServletAnular", value = "/ServletAnular")
public class ServletAnular extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if( session != null) {
            request.setCharacterEncoding("UTF-8");
            ServletContext context = getServletContext();
            GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
            String codviaje = request.getParameter("codViaje");
            String codcli = session.getAttribute("codcli").toString();
            System.out.println(codviaje + " - codcli " + codcli);
            String resultado = gestor.anulaReserva(codviaje, codcli).toJSONString();
            request.setAttribute("resultado", resultado);
            RequestDispatcher vista = request.getRequestDispatcher("anular-res.jsp");
            vista.forward(request, response);
        }
    }
}
