package servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import model.Pelicula;
import service.CategoriaService;
import service.PeliculasService;



@WebServlet(name = "PeliculaFormServlet", urlPatterns = {"/peliculas/nuevo"})
public class PeliculasFormServlet extends HttpServlet {

    private final CategoriaService catService = new CategoriaService();
    private final PeliculasService peliService = new PeliculasService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("categorias", catService.listar());
        request.getRequestDispatcher("/pelicula_form.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String titulo = request.getParameter("titulo");
            String descripcion = request.getParameter("descripcion");
            int anio = Integer.parseInt(request.getParameter("anio"));
            int duracion = Integer.parseInt(request.getParameter("duracionMin"));
            int idCategoria = Integer.parseInt(request.getParameter("idCategoria"));

            if (titulo == null || titulo.trim().isEmpty()) {
                throw new IllegalArgumentException("El título es obligatorio.");
            }

            Pelicula p = new Pelicula();
            p.setTitulo(titulo.trim());
            p.setDescripcion(descripcion != null ? descripcion.trim() : "");
            p.setAnio(anio);
            p.setDuracionMin(duracion);
            p.setIdCategoria(idCategoria);

            peliService.agregar(p);

            response.sendRedirect(request.getContextPath() + "/peliculas");

        } catch (Exception e) {
            request.setAttribute("error", "No se pudo guardar: " + e.getMessage());
            request.setAttribute("categorias", catService.listar());
            request.getRequestDispatcher("/pelicula_form.jsp").forward(request, response);
        }
    }
}
