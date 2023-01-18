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

@WebServlet(name = "ServletAccede", value = "/ServletAccede")
public class ServletAccede extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();
        GestorViajes gestor = (GestorViajes) context.getAttribute("gestor");
        if(gestor == null){
            context.setAttribute("gestor", new GestorViajes());
        }

        HttpSession session = request.getSession(true);
        String codcli = request.getParameter("codcli");
        session.setAttribute("codcli", codcli);

        RequestDispatcher vista = request.getRequestDispatcher("menu.jsp");
        vista.forward(request, response);
    }
}
