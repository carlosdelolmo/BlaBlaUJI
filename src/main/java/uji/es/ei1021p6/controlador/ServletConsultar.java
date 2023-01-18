package uji.es.ei1021p6.controlador;

import uji.es.ei1021p6.modelo.GestorViajes;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "ServletConsultar", value = "/ServletConsultar")
public class ServletConsultar extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if( session != null) {
            request.setCharacterEncoding("UTF-8");
            ServletContext context = getServletContext();
            GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
            String origen = request.getParameter("origen");
            String resultado = gestor.consultaViajes(origen).toJSONString();
            request.setAttribute("resultado", resultado);
            request.setAttribute("origen", origen);
            RequestDispatcher vista = request.getRequestDispatcher("consultar-res.jsp");
            vista.forward(request, response);
        }
    }
}
