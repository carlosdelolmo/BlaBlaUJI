package uji.es.ei1021p6.controlador;

import uji.es.ei1021p6.modelo.GestorViajes;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "ServletSalir", value = "/ServletSalir")
public class ServletSalir extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if( session != null){
            ServletContext context = getServletContext();
            String codcli = session.getAttribute("codcli").toString();
            request.setAttribute("codcli", codcli);
            GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
            gestor.guardaDatos();
            System.out.println(gestor.consultaViajes(""));
            RequestDispatcher vista = request.getRequestDispatcher("salir.jsp");
            vista.forward(request, response);
        }
    }
}
