package uji.es.ei1021p6.controlador;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import uji.es.ei1021p6.modelo.GestorViajes;

import java.io.IOException;

@WebServlet(name = "ServletBorrar", value = "/ServletBorrar")
public class ServletBorrar extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if( session != null) {
            request.setCharacterEncoding("UTF-8");
            ServletContext context = getServletContext();
            GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
            String codviaje = request.getParameter("codViaje");
            String codcli = session.getAttribute("codcli").toString();
            System.out.println(codviaje + " - codcli " + codcli);
            String resultado = gestor.borraViaje(codviaje, codcli).toJSONString();
            request.setAttribute("resultado", resultado);
            request.setAttribute("codviaje", codviaje);
            RequestDispatcher vista = request.getRequestDispatcher("eliminar-res.jsp");
            vista.forward(request, response);
        }
    }
}
