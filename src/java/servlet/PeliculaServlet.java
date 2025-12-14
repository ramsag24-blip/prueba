package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import service.PeliculasService;

@WebServlet(name = "PeliculaServlet", urlPatterns = {"/peliculas"})
public class PeliculaServlet extends HttpServlet {

    private final PeliculasService service = new PeliculasService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String idCat = request.getParameter("idCategoria");

        if (idCat != null && !idCat.trim().isEmpty()) {
            int idCategoria = Integer.parseInt(idCat);
            request.setAttribute("peliculas", service.listarPorCategoria(idCategoria));
        } else {
            request.setAttribute("peliculas", service.listar());
        }

        request.getRequestDispatcher("/peliculas.jsp").forward(request, response);
    }
}
