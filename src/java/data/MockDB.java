
package data;

import model.Categoria;
import model.Pelicula;
import model.Usuario;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MockDB {

    private static final List<Usuario> USUARIOS = new ArrayList<>();
    private static final List<Categoria> CATEGORIAS = new ArrayList<>();
    private static final List<Pelicula> PELICULAS = new ArrayList<>();

    private static int SEQ_PELICULA = 1;

    static {
        USUARIOS.add(new Usuario(1, "admin", "admin123", "Administrador", "admin@streaming.com"));
        USUARIOS.add(new Usuario(2, "user", "123456", "Usuario Demo", "user@streaming.com"));

        CATEGORIAS.add(new Categoria(1, "Acción"));
        CATEGORIAS.add(new Categoria(2, "Comedia"));
        CATEGORIAS.add(new Categoria(3, "Drama"));

        PELICULAS.add(new Pelicula(SEQ_PELICULA++, "Rápidos al Límite", "Carreras y adrenalina.", 2022, 128, 1));
        PELICULAS.add(new Pelicula(SEQ_PELICULA++, "Risas en la Oficina", "Humor en el trabajo.", 2021, 98, 2));
        PELICULAS.add(new Pelicula(SEQ_PELICULA++, "Bajo la Lluvia", "Historia emotiva.", 2020, 115, 3));
    }

    public static List<Usuario> getUsuarios() {
        return Collections.unmodifiableList(USUARIOS);
    }

    public static List<Categoria> getCategorias() {
        return Collections.unmodifiableList(CATEGORIAS);
    }

    public static List<Pelicula> getPeliculas() {
        return Collections.unmodifiableList(PELICULAS);
    }

    public static Pelicula addPelicula(Pelicula p) {
        p.setId(SEQ_PELICULA++);
        PELICULAS.add(p);
        return p;
    }
}
